﻿using Sistema.Ifsp.DAO;
using Sistema.Ifsp.Model;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Sistema.Ifsp.View
{
    public partial class frmPrincipal : Form
    {
        private static frmPrincipal instance;

        /*Singleton*/
        public static frmPrincipal getInstance()
        {
            if (instance == null)
            {
                instance = new frmPrincipal();
            }
            return instance;
        }

        private frmPrincipal()
        {
            InitializeComponent();
            preencherGridsSolicitacoes();
            preencherGridVisitanteFornecedores();
            atualizaEstacionamento();
            atualizaGridPermanenciaVeiculo();
            telaInicialCadTer();
            //tabControl.TabPages.Clear();
            //tabControl.TabPages.Add(tabRelatorios);
        }

        private void preencherGridVisitanteFornecedores()
        {
            dgvFornecedores.Rows.Clear();
            dgvVisitante.Rows.Clear();
            FornecedorDAO fDao = new FornecedorDAO();
            VisitanteDAO vDao = new VisitanteDAO();
            var fornecedores = fDao.get(f => f.entrada.Day == DateTime.Now.Day && f.entrada.Month == DateTime.Now.Month && f.entrada.Year == DateTime.Now.Year && f.saida == null);
            var visitantes = vDao.get(v => v.entrada.Day == DateTime.Now.Day && v.entrada.Month == DateTime.Now.Month && v.entrada.Year == DateTime.Now.Year && v.saida == null);
            foreach (Fornecedor item in fornecedores)
            {
                dgvFornecedores.Rows.Add(item.idFornecedor, item.nome, item.empresa, item.entrada);
            }
            foreach (Visitante item in visitantes)
            {
                dgvVisitante.Rows.Add(item.idVisitante, item.nome, item.empresa, item.entrada);
            }
        }

        /*variaveis*/
        public object acessoPessoa { set; get; }
        public Aluno aluno { set; get; } //usado na tab de solicitações
        public PessoaFisica pessoaFisica { set; get; }// usado na tab cadastro do uso de estacionamento
        IQueryable<Aluno> alunos; // usado na tab de solicitações
        int tempoExpiraçãoSolicitacao = 45;
        private List<Vaga> vagas;
        Vaga vaga;
        private PessoaFisica usuarioLogado;
        private Terceirizado terceirizado;
        private IQueryable<Terceirizado> terceirizados;

        private void btnPesquisarAluno_Click(object sender, EventArgs e)
        {
            if (rdbProntuarioAluno.Checked == true)
            {
                if (String.IsNullOrWhiteSpace(txtPesquisarAluno.Text))
                {
                    mensagem("Insira valor no campo de pesquisa!");
                }
                else
                {
                    try
                    {
                        aluno = getAlunoProntuario(txtPesquisarAluno.Text);
                        if (aluno == null)
                        {
                            mensagem("Falha ao pesquisar aluno");
                        }
                        else
                        {
                            preencherDadosAluno(aluno);
                            gerarSolicitacoes2();
                        }
                    }
                    catch (Exception ex)
                    {
                        mensagem("Falha ao pesquisar aluno. Detalhes: " + ex);
                    }
                }
            }
            else if (rdbNomeAluno.Checked == true)
            {
                if (String.IsNullOrWhiteSpace(txtPesquisarAluno.Text))
                {
                    mensagem("Insira valor no campo de pesquisa!");
                }
                else
                {
                    try
                    {
                        var aDAO = new AlunoDAO();
                        alunos = aDAO.get(a => a.nome.StartsWith(txtPesquisarAluno.Text, StringComparison.CurrentCultureIgnoreCase));
                        if (alunos.Count() == 0)
                        {
                            mensagem("Nenhum aluno encontrado");
                            gerarSolicitacoes1();
                        }
                        else if (alunos.Count() == 1)
                        {
                            aluno = alunos.First();
                            preencherDadosAluno(alunos.First());
                            gerarSolicitacoes2();
                        }
                        else
                        {
                            frmAlunos f = new frmAlunos(alunos);
                            f.ShowDialog();
                        }
                    }
                    catch (Exception ex)
                    {
                        mensagem("Nenhum aluno encontrado. Detalhes: " + ex);
                        gerarSolicitacoes1();
                    }
                }
            }
        }

        private void btnGerarSolicitacaoAluno_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmete gerar solicitação?", "Dúvida", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (String.IsNullOrEmpty(txtMotivoAluno.Text))
                {
                    mensagem("Por favor. Insirar o Motivo");
                }
                else
                {
                    if (ckbSolicitacaoSaida.Checked == true)
                    {
                        try
                        {
                            bool saidaSupervisionada = true;
                            if (rdbSimSaidaSupervisionada.Checked == true)
                            {
                                saidaSupervisionada = true;
                            }
                            else
                            {
                                saidaSupervisionada = false;
                            }
                            var s = new SolicitacaoSaida()
                            {
                                abertura = DateTime.Now,
                                aluno = aluno,
                                assistenteAluno = (Funcionario)acessoPessoa,
                                motivo = txtMotivoAluno.Text,
                                status = StatusSolicitacao.aberto,
                                saidaSupervisionada = saidaSupervisionada
                            };
                            var solicitacaoSaidaDao = new SolicitacaoSaidaDAO();
                            if (solicitacaoSaidaDao.adicionar(s))
                            {
                                mensagem("Solicitação de saída gerada com sucesso!");
                                gerarSolicitacoes1();
                                preencherGridsSolicitacoes();
                            }
                            else
                            {
                                mensagem("Falha ao gerar solicitação de saida. Tente novamente");
                                gerarSolicitacoes1();
                            }

                        }
                        catch (Exception ex)
                        {
                            mensagem("Falha ao gerar solicitação. Detalhes: " + ex);
                        }
                    }
                    else
                    {
                        var s = new SolicitacaoEntrada()
                        {
                            abertura = DateTime.Now,
                            aluno = aluno,
                            assistenteAluno = (Funcionario)acessoPessoa,
                            motivo = txtMotivoAluno.Text
                        };
                        var sDao = new SolicitacaoEntradaDAO();
                        if (sDao.adicionar(s))
                        {
                            mensagem("Solicitação de entrada concedida com sucesso!");
                            gerarSolicitacoes1();
                        }
                        else
                        {
                            mensagem("Falha ao conceder solicitação de entrada. Tente novamente!");
                            gerarSolicitacoes1();
                        }
                    }
                }
            }
            else
            {
                return;
            }
        }

        public void preencherDadosAluno(Aluno a)
        {
            txtNomeAluno.Text = a.nome;
            txtProntuarioAluno.Text = a.prontuario.prontuario;
            txtContato1Aluno.Text = a.contato1;
            txtContato2Aluno.Text = a.contato2;
            txtResponsavel1Aluno.Text = a.responsavel1;
            txtResponsavel2Aluno.Text = a.responsavel2;
        }

        private void preencherGridsSolicitacoes()
        {
            dgvSolicitacoesAbertas.Rows.Clear();
            dgvSolicitacoesAbertas.Refresh();
            dgvSolicitacoesExpiradas.Rows.Clear();
            dgvSolicitacoesExpiradas.Refresh();
            dgvSolicitacoesFinalizadas.Rows.Clear();
            dgvSolicitacoesFinalizadas.Refresh();
            atualizandoStatusSolicitacoes();
            var ssDAO = new SolicitacaoSaidaDAO();
            //buscando todas as solicitações de hoje
            IQueryable<SolicitacaoSaida> solicitacoesSaida = getSolicitacaoesHoje();
            //inserindo cada uma em seu devido grid de acordo com seu status (aberto, experida, expirado)
            foreach (SolicitacaoSaida solicitacao in solicitacoesSaida)
            {
                if (solicitacao.status == StatusSolicitacao.aberto)
                {
                    string saidaSupervisionada = null;
                    if (solicitacao.saidaSupervisionada == true)
                    {
                        saidaSupervisionada = "Sim";
                    }
                    else
                    {
                        saidaSupervisionada = "Não";
                    }
                    dgvSolicitacoesAbertas.Rows.Add(solicitacao.idSolicitacao, solicitacao.aluno.prontuario.prontuario,
                        solicitacao.aluno.nome, saidaSupervisionada, solicitacao.assistenteAluno.nome);
                }
                else if (solicitacao.status == StatusSolicitacao.expirado)
                {
                    dgvSolicitacoesExpiradas.Rows.Add(solicitacao.idSolicitacao, solicitacao.aluno.prontuario.prontuario,
                        solicitacao.aluno.nome, solicitacao.assistenteAluno.nome);
                }
                else if (solicitacao.status == StatusSolicitacao.encerrado)
                {
                    dgvSolicitacoesFinalizadas.Rows.Add(solicitacao.idSolicitacao, solicitacao.aluno.prontuario.prontuario,
                        solicitacao.aluno.nome, solicitacao.assistenteAluno.nome);
                }
            }
        }

        private void atualizandoStatusSolicitacoes()
        {
            var dataAtual = DateTime.Now;
            var ssDAO = new SolicitacaoSaidaDAO();
            var solicitacoesSaida = getSolicitacaoesHoje();
            //verificando se solicitação está expirada, se sim, atualiza seu status
            foreach (SolicitacaoSaida solicitacao in solicitacoesSaida)
            {
                //verificando se solicitacao ja estourou o tempo de expiração
                if (solicitacao.status == StatusSolicitacao.aberto &&
                    solicitacao.abertura.AddMinutes(tempoExpiraçãoSolicitacao) < dataAtual)
                {
                    try
                    {
                        solicitacao.status = StatusSolicitacao.expirado;
                        ssDAO.atualizar(solicitacao);
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
            }
        }

        private static IQueryable<SolicitacaoSaida> getSolicitacaoesHoje()
        {
            var ssDAO = new SolicitacaoSaidaDAO();
            var dataAtual = DateTime.Now;
            //buscando todas as solicitações de hoje
            return ssDAO.get(s => s.abertura.DayOfYear == dataAtual.DayOfYear && s.abertura.Year == dataAtual.Year);
        }

        private void mensagem(String mensagem)
        {
            MessageBox.Show(mensagem, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private Aluno getAlunoProntuario(string prontuario)
        {
            var aDAO = new AlunoDAO();
            return aDAO.get(a => a.prontuario.prontuario == prontuario).FirstOrDefault();
        }



        /*CONTROLES DOS FORMULÁRIOS*/
        private void gerarSolicitacoes1()
        {
            txtPesquisarAluno.Text = null;
            txtNomeAluno.ReadOnly = true;
            txtNomeAluno.Text = null;
            txtProntuarioAluno.ReadOnly = true;
            txtProntuarioAluno.Text = null;
            txtContato1Aluno.ReadOnly = true;
            txtContato1Aluno.Text = null;
            txtContato2Aluno.ReadOnly = true;
            txtContato2Aluno.Text = null;
            txtResponsavel1Aluno.ReadOnly = true;
            txtResponsavel1Aluno.Text = null;
            txtResponsavel2Aluno.ReadOnly = true;
            txtResponsavel2Aluno.Text = null;
            txtMotivoAluno.ReadOnly = true;
            txtMotivoAluno.Text = null;
            btnGerarSolicitacaoAluno.Enabled = false;
        }

        public void gerarSolicitacoes2()
        {
            txtNomeAluno.ReadOnly = true;
            txtProntuarioAluno.ReadOnly = true;
            txtContato1Aluno.ReadOnly = true;
            txtContato2Aluno.ReadOnly = true;
            txtResponsavel1Aluno.ReadOnly = true;
            txtResponsavel2Aluno.ReadOnly = true;
            txtMotivoAluno.ReadOnly = false;
            btnGerarSolicitacaoAluno.Enabled = true;
        }
        private void ckbSolicitacaoSaida_Click(object sender, EventArgs e)
        {
            ckbSolicitacaoEntrada.Checked = false;
            lblSaidaSupervisionada.Visible = true;
            rdbSimSaidaSupervisionada.Enabled = true;
            rdbSimSaidaSupervisionada.Visible = true;
            rdbNaoSaidaSupervisionada.Enabled = true;
            rdbNaoSaidaSupervisionada.Visible = true;
            rdbSimSaidaSupervisionada.Checked = true;
        }

        private void ckbSolicitacaoEntrada_Click(object sender, EventArgs e)
        {
            ckbSolicitacaoSaida.Checked = false;
            lblSaidaSupervisionada.Visible = false;
            rdbSimSaidaSupervisionada.Enabled = false;
            rdbSimSaidaSupervisionada.Visible = false;
            rdbNaoSaidaSupervisionada.Enabled = false;
            rdbNaoSaidaSupervisionada.Visible = false;
        }
        private void timerAtualizaSolicitacoes_Tick(object sender, EventArgs e)
        {
            preencherGridsSolicitacoes();
        }

        private void btnFinalizarSolicitacao_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente finalizar essa solicitação?", "Dúvida", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (dgvSolicitacoesAbertas.SelectedRows.Count == 0)
                {
                    mensagem("Por favor selecione a linha que corresponde a solicitação desejada");
                }
                else
                {
                    var ssDAO = new SolicitacaoSaidaDAO();
                    var ss = ssDAO.find(Convert.ToInt32(dgvSolicitacoesAbertas.CurrentRow.Cells[0].Value));
                    ss.encerramento = DateTime.Now;
                    ss.status = StatusSolicitacao.encerrado;
                    ss.porteiro = (PessoaFisica)acessoPessoa;
                    try
                    {
                        if (ssDAO.atualizar(ss))
                        {
                            mensagem("Solicitação finalizada com sucesso! Agora o aluno pode ser dispensado!");
                            preencherGridsSolicitacoes();
                        }
                        else
                        {
                            mensagem("Falha ao finalizar solicitação");
                        }
                    }
                    catch (Exception ex)
                    {
                        mensagem("Falhar ao finalizar solicitação. Detalhes: " + ex);
                    }
                }
            }
            else
            {
                return;
            }
        }

        /*Comparando atributo "PERÍODO" para valores string de combobox*/
        private int getIntPeriodo(string periodo)
        {
            int inteiro = 0;
            if (periodo == "Manhã")
            {
                inteiro = 1;
            }
            else if (periodo == "Tarde")
            {
                inteiro = 2;
            }
            else if (periodo == "Noite")
            {
                inteiro = 3;
            }
            else if (periodo == "Manhã e tarde")
            {
                inteiro = 4;
            }
            else if (periodo == "Manhã e noite")
            {
                inteiro = 5;
            }
            else if (periodo == "Tarde e noite")
            {
                inteiro = 6;
            }
            else if (periodo == "Sem uso")
            {
                inteiro = 0;
            }
            return inteiro;
        }

        private void btnPesquisarPessoaEstacionamento_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtPesquisarPessoaEstacionamento.Text))
                {
                    mensagem("Por favor digite valor no campo de pesquisa");
                }
                else
                {
                    if (rdbCodigoEstacionamento.Checked == true)
                    {
                        var pDAO = new PessoaFisicaDAO();
                        var vDAO = new VagaDAO();
                        if (rdbCodigoEstacionamento.Checked == true)
                        {
                            pessoaFisica = pDAO.find(Convert.ToInt32(txtPesquisarPessoaEstacionamento.Text));
                            if (pessoaFisica.Equals(null))
                            {
                                mensagem("Nenhuma pessoa encontrada");
                            }
                            else
                            {
                                /*Verificando pessoa fisica possui vaga*/
                                preencherFormEstacionamento();
                            }
                        }
                    }
                    else
                    {
                        var pDAO = new PessoaFisicaDAO();
                        var ps = pDAO.get(p => p.nome.StartsWith(txtPesquisarPessoaEstacionamento.Text, StringComparison.CurrentCultureIgnoreCase));
                        frmPessoasFisicas f = new frmPessoasFisicas(ps);
                        f.ShowDialog();
                    }
                }
            }
            catch (Exception ex)
            {
                mensagem("Falha ao carregar dados. Detalhes: " + ex);
            }
        }

        public void preencherFormEstacionamento()
        {
            var vDAO = new VagaDAO();
            vaga = vDAO.get(v => v.pessoaFisica == pessoaFisica).FirstOrDefault();
            if (vaga == null)
            {
                txtRequisitandoEstacionamento.Text = pessoaFisica.nome;
                txtPesquisarPessoaEstacionamento.ReadOnly = true;
                btnPesquisarPessoaEstacionamento.Enabled = false;
                cmbDocente.Enabled = true;
                /*Se pessoa fisica não possui vaga, pergunta-se o interesse em cadastrar*/
                var resutado = MessageBox.Show("Não há cadastro para uso do estacionamento por essa pessoa.\nDeseja cadastrar?",
                    "Deseja cadastrar?", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (DialogResult.Yes == resutado)
                {
                    btnSalvarUsoEstacionamento.Enabled = true;
                    btnAlterar.Enabled = false;
                }
                else if (DialogResult.No == resutado)
                {
                    telaUsoEstacionamentoInicial();
                }
            }
            /*se não, preenche formulário*/
            else
            {
                btnSalvarUsoEstacionamento.Enabled = false;
                btnAlterar.Enabled = true;
                btnDeletar.Enabled = true;
                txtCodigoPlaca.Text = vaga.codigoPlaca;
                txtRequisitandoEstacionamento.Text = vaga.pessoaFisica.nome;
                txtRequisitandoEstacionamento.Text = pessoaFisica.nome;
                txtPesquisarPessoaEstacionamento.ReadOnly = true;
                btnPesquisarPessoaEstacionamento.Enabled = false;
                btnCancelarEstacionamento.Enabled = true;
                if (vaga.isDocente)
                {
                    cmbDocente.SelectedIndex = 1;
                }
                else
                {
                    cmbDocente.SelectedIndex = 0;
                }
                cmbSegunda.SelectedIndex = getIntPeriodo(vaga.segunda_feira.periodo);
                cmbTerca.SelectedIndex = getIntPeriodo(vaga.terca_feira.periodo);
                cmbQuarta.SelectedIndex = getIntPeriodo(vaga.quarta_feira.periodo);
                cmbQuinta.SelectedIndex = getIntPeriodo(vaga.quinta_feira.periodo);
                cmbSexta.SelectedIndex = getIntPeriodo(vaga.sexta_feira.periodo);
                cmbSabado.SelectedIndex = getIntPeriodo(vaga.sabado.periodo);
                cmbDomingo.SelectedIndex = getIntPeriodo(vaga.domingo.periodo);
            }
        }

        private void telaUsoEstacionamentoInicial()
        {
            rdbCodigoEstacionamento.Checked = true;
            rdbNomeEstacionamento.Checked = false;
            txtPesquisarPessoaEstacionamento.ReadOnly = false;
            txtPesquisarPessoaEstacionamento.Text = null;
            txtRequisitandoEstacionamento.Text = null;
            txtCodigoPlaca.Text = null;
            btnCancelarEstacionamento.Enabled = false;
            btnSalvarUsoEstacionamento.Enabled = false;
            btnPesquisarPessoaEstacionamento.Enabled = true;
            btnDeletar.Enabled = false;
            btnAlterar.Enabled = false;
            cmbDocente.SelectedIndex = 0;
            cmbDomingo.SelectedIndex = 0;
            cmbSegunda.SelectedIndex = 0;
            cmbTerca.SelectedIndex = 0;
            cmbQuarta.SelectedIndex = 0;
            cmbQuinta.SelectedIndex = 0;
            cmbSexta.SelectedIndex = 0;
            cmbSabado.SelectedIndex = 0;
        }

        private void btnRegistrarEntradaFornecedorVisitante_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrWhiteSpace(txtNomeFornecedorVisitante.Text) ||
                String.IsNullOrWhiteSpace(txtRgFornecedorVisitante.Text) ||
                String.IsNullOrWhiteSpace(txtMotivoFornecedorVisitante.Text))
            {
                mensagem("Por favor verifique se todos os campos foram preenchidos");
            }
            else
            {
                if (MessageBox.Show("Deseja realmente cadastrar entrada de visitante/fornecedor?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    DateTime data = DateTime.Now;
                    if (rdbFornecedor.Checked == true)
                    {
                        var f = new Fornecedor()
                        {
                            empresa = txtEmpresaFornecedorVisitante.Text,
                            entrada = data,
                            motivo = txtMotivoFornecedorVisitante.Text,
                            nome = txtNomeFornecedorVisitante.Text,
                            rg = txtRgFornecedorVisitante.Text,
                        };
                        var fDAO = new FornecedorDAO();
                        if (fDAO.adicionar(f))
                        {
                            mensagem("Entrada de Forncedor registrada com sucesso!");
                            limparTelaRegistrarEntradaVisitanteFornecedor();
                            dgvFornecedores.Rows.Add(f.idFornecedor, f.nome, f.empresa, f.entrada);
                            preencherGridVisitanteFornecedores();
                        }
                        else
                        {
                            mensagem("Falha ao registrar entrada de fornecedor");
                        }
                    }
                    else
                    {
                        var v = new Visitante()
                        {
                            empresa = txtEmpresaFornecedorVisitante.Text,
                            entrada = DateTime.Now,
                            motivo = txtMotivoFornecedorVisitante.Text,
                            nome = txtNomeFornecedorVisitante.Text,
                            rg = txtRgFornecedorVisitante.Text,
                        };
                        var vDAO = new VisitanteDAO();
                        if (vDAO.adicionar(v))
                        {
                            mensagem("Entrada de visitante registrada com sucesso!");
                            limparTelaRegistrarEntradaVisitanteFornecedor();
                            dgvVisitante.Rows.Add(v.idVisitante, v.nome, v.empresa, v.entrada);
                            preencherGridVisitanteFornecedores();
                        }
                        else
                        {
                            mensagem("Falha ao regstrar entrada de visitante");
                        }
                    }
                }
                else
                {
                    return;
                }
            }
        }

        private void limparTelaRegistrarEntradaVisitanteFornecedor()
        {
            txtNomeFornecedorVisitante.Text = null;
            txtRgFornecedorVisitante.Text = null;
            txtEmpresaFornecedorVisitante.Text = null;
            txtMotivoFornecedorVisitante.Text = null;
        }

        private void btnCancelarSolicitação_Click(object sender, EventArgs e)
        {
            gerarSolicitacoes1();
        }

        /*gerando código para placa do estacionamento*/
        private string getCodigoPlacaCarro()
        {
            var vagaDAO = new VagaDAO();
            try
            {
                var vaga = vagaDAO.get(v => v.isDocente == false).Last();
                int c = Convert.ToInt32(vaga.codigoPlaca) + 1;
                string codigo = c.ToString();
                if (codigo.Length == 1)
                {
                    return codigo = "000" + codigo;
                }
                else if (codigo.Length == 2)
                {
                    return codigo = "00" + codigo;
                }
                else if (codigo.Length == 3)
                {
                    return codigo = "0" + codigo;
                }
                else
                {
                    return codigo;
                }
            }
            catch (Exception)
            {
                return "0001";
            }
        }

        /*Persistindo no banco de dados os dias de uso do estacionamento*/
        private void btnSalvarEstacionamento_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente cadastrar uso do estacionamento?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                try
                {
                    /*verifiando se o campo código da plava foi preenchido caso o cadastro seja para um menbro do corpo docente*/
                    if (cmbDocente.SelectedText == "Sim" && (txtCodigoPlaca.Text == "" || txtCodigoPlaca.Text == null))
                    {
                        mensagem("Preencha todos os campos");
                    }
                    else
                    {
                        bool docente = false;
                        string domingo_periodo = null;
                        string segunda_periodo = null;
                        string terca_periodo = null;
                        string quarta_periodo = null;
                        string quinta_periodo = null;
                        string sexta_periodo = null;
                        string sabado_periodo = null;
                        string codigo_placa = null;
                        /*Verificando se o menbro a se cadastrar é docente ou não*/
                        if (cmbDocente.SelectedItem.ToString() == "Sim")
                        {
                            codigo_placa = txtCodigoPlaca.Text;
                            docente = true;
                        }
                        else
                        {
                            codigo_placa = getCodigoPlacaCarro();
                        }
                        /*Quais dias e períodos foram selecionados*/
                        if (cmbDomingo.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            domingo_periodo = cmbDomingo.SelectedItem.ToString();
                        }
                        if (cmbSegunda.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            segunda_periodo = cmbSegunda.SelectedItem.ToString();
                        }
                        if (cmbTerca.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            terca_periodo = cmbTerca.SelectedItem.ToString();
                        }
                        if (cmbQuarta.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            quarta_periodo = cmbQuarta.SelectedItem.ToString();
                        }
                        if (cmbQuinta.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            quinta_periodo = cmbQuinta.SelectedItem.ToString();
                        }
                        if (cmbSexta.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            sexta_periodo = cmbSexta.SelectedItem.ToString();
                        }
                        if (cmbSabado.SelectedItem.ToString() != "Sem uso" || cmbDomingo.SelectedItem.ToString() != null)
                        {
                            sabado_periodo = cmbSabado.SelectedItem.ToString();
                        }
                        var vaga = new Vaga()
                        {
                            codigoPlaca = codigo_placa,
                            domingo = new Dia()
                            {
                                periodo = domingo_periodo
                            },
                            isDocente = docente,
                            pessoaFisica = pessoaFisica,
                            quarta_feira = new Dia()
                            {
                                periodo = quarta_periodo
                            },
                            quinta_feira = new Dia()
                            {
                                periodo = quinta_periodo
                            },
                            sabado = new Dia()
                            {
                                periodo = sabado_periodo
                            },
                            segunda_feira = new Dia()
                            {
                                periodo = segunda_periodo
                            },
                            sexta_feira = new Dia()
                            {
                                periodo = sexta_periodo
                            },
                            terca_feira = new Dia()
                            {
                                periodo = terca_periodo
                            }
                        };
                        var vDAO = new VagaDAO();
                        if (vDAO.adicionar(vaga))
                        {
                            telaUsoEstacionamentoInicial();
                            mensagem("Cadastro realizado com sucesso");
                            frmCodigoPlaca f = new frmCodigoPlaca(codigo_placa);
                            f.Show();
                        }
                        else
                        {
                            mensagem("Falha ao cadastrar uso do estacionamento. Tente novamente");
                        }
                    }
                }
                catch (Exception ex)
                {
                    mensagem("Falha ao cadastrar uso do estacionamento. Detalhes: " + ex);
                }
            }
            else
            {
                return;
            }
        }

        private void btnCancelarEstacionamento_Click(object sender, EventArgs e)
        {
            telaUsoEstacionamentoInicial();
        }

        private void btnAlterar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente alterar esse cadastro?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                bool docente = false;
                if (cmbDocente.SelectedIndex == 1)
                {
                    docente = true;
                }
                btnPesquisarPessoaEstacionamento.Enabled = false;
                txtPesquisarPessoaEstacionamento.ReadOnly = true;
                vaga.codigoPlaca = txtCodigoPlaca.Text;
                vaga.domingo.periodo = cmbDomingo.SelectedText;
                vaga.isDocente = docente;
                vaga.pessoaFisica = pessoaFisica;
                vaga.quarta_feira.periodo = cmbQuarta.SelectedText;
                vaga.quinta_feira.periodo = cmbQuinta.SelectedText;
                vaga.sabado.periodo = cmbSabado.Text;
                vaga.segunda_feira.periodo = cmbSegunda.Text;
                vaga.sexta_feira.periodo = cmbSexta.Text;
                vaga.terca_feira.periodo = cmbTerca.Text;
                var vDAO = new VagaDAO();
                try
                {
                    if (vDAO.atualizar(vaga))
                    {
                        mensagem("Cadastro atualizado com sucesso");
                        telaUsoEstacionamentoInicial();
                    }
                    else
                    {
                        mensagem("Falha ao atualizar cadasro. Tente novamente");
                    }
                }
                catch (Exception ex)
                {
                    mensagem("Falha ao atualizar cadasro. Detalhes: " + ex);
                }
            }
            else
            {
                return;
            }
        }

        /*As 07:00h, as 12:30h e as 18:00h a quantidade de vagas são atualziadas*/
        private void timerAtualizaEstacionamento_Tick(object sender, EventArgs e)
        {
            atualizaEstacionamento();
        }

        private void atualizaEstacionamento()
        {
            DateTime data = DateTime.Now;
            DateTime seisQuarentaCinco = new DateTime(data.Year, data.Month, data.Day, 6, 45, 0);
            DateTime dozeQuinze = new DateTime(data.Year, data.Month, data.Day, 12, 15, 0);
            DateTime dezesseteQuarentaCinco = new DateTime(data.Year, data.Month, data.Day, 17, 45, 0);

            if (data > seisQuarentaCinco && data < dozeQuinze)
            {
                var vagaDao = new VagaDAO();

                if (data.DayOfWeek == DayOfWeek.Friday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sexta_feira.periodo == "Manhã" || s.sexta_feira.periodo == "Manhã e tarde" || s.sexta_feira.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Monday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.segunda_feira.periodo == "Manhã" || s.segunda_feira.periodo == "Manhã e tarde" || s.segunda_feira.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Saturday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sabado.periodo == "Manhã" || s.sabado.periodo == "Manhã e tarde" || s.sabado.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Sunday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.domingo.periodo == "Manhã" || s.domingo.periodo == "Manhã e tarde" || s.domingo.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Thursday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quinta_feira.periodo == "Manhã" || s.quinta_feira.periodo == "Manhã e tarde" || s.quinta_feira.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Tuesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.terca_feira.periodo == "Manhã" || s.terca_feira.periodo == "Manhã e tarde" || s.terca_feira.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Wednesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quarta_feira.periodo == "Manhã" || s.quarta_feira.periodo == "Manhã e tarde" || s.quarta_feira.periodo == "Manhã e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
            }
            else if (data > dozeQuinze && data < dezesseteQuarentaCinco)
            {
                var vagaDao = new VagaDAO();
                if (data.DayOfWeek == DayOfWeek.Friday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sexta_feira.periodo == "Tarde" || s.sexta_feira.periodo == "Manhã e tarde" || s.sexta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Monday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.segunda_feira.periodo == "Tarde" || s.segunda_feira.periodo == "Manhã e tarde" || s.segunda_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Saturday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sabado.periodo == "Tarde" || s.sabado.periodo == "Manhã e tarde" || s.sabado.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Sunday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.domingo.periodo == "Tarde" || s.domingo.periodo == "Manhã e tarde" || s.domingo.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Thursday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quinta_feira.periodo == "Tarde" || s.quinta_feira.periodo == "Manhã e tarde" || s.quinta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Tuesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.terca_feira.periodo == "Tarde" || s.terca_feira.periodo == "Manhã e tarde" || s.terca_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Wednesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quarta_feira.periodo == "Tarde" || s.quarta_feira.periodo == "Manhã e tarde" || s.quarta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
            }
            else if (data > dezesseteQuarentaCinco)
            {
                var vagaDao = new VagaDAO();
                if (data.DayOfWeek == DayOfWeek.Friday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sexta_feira.periodo == "Noite" || s.sexta_feira.periodo == "Manhã e noite" || s.sexta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Monday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.segunda_feira.periodo == "Noite" || s.segunda_feira.periodo == "Manhã e noite" || s.segunda_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Saturday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.sabado.periodo == "Noite" || s.sabado.periodo == "Manhã e noite" || s.sabado.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Sunday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.domingo.periodo == "Noite" || s.domingo.periodo == "Manhã e noite" || s.domingo.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Thursday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quinta_feira.periodo == "Noite" || s.quinta_feira.periodo == "Manhã e noite" || s.quinta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Tuesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.terca_feira.periodo == "Noite" || s.terca_feira.periodo == "Manhã e noite" || s.terca_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
                else if (data.DayOfWeek == DayOfWeek.Wednesday)
                {
                    try
                    {
                        vagas = vagaDao.get((s => s.quarta_feira.periodo == "Noite" || s.quarta_feira.periodo == "Manhã e noite" || s.quarta_feira.periodo == "Tarde e noite")).ToList();
                        // exibindo a quantidade de vagas destinada sa docentes
                        lblVagasReservadas.Text = vagas.Where(v => v.isDocente == true).Count().ToString();
                    }
                    catch (Exception)
                    {
                        return;
                    }
                }
            }
        }

        private void btnDeletar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente excluir esse cadastro?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                var vDAO = new VagaDAO();
                try
                {
                    if (vDAO.excluir(v => v.pessoaFisica == pessoaFisica))
                    {
                        mensagem("Excluido com sucesso");
                    }
                    else
                    {
                        mensagem("Falha ao excluir!");
                    }
                }
                catch (Exception ex)
                {
                    mensagem("Falha ao excluir. Detalhes: " + ex);
                }
            }
            else
            {
                return;
            }
        }

        private void btnRegistarSaidaFornecedor_Click(object sender, EventArgs e)
        {
            if (dgvFornecedores.Rows.Count == 0)
            {
                mensagem("Selecione a linha que corresponde a um fonecedor");
            }
            else
            {
                if (MessageBox.Show("Deseja realmente cadastrar a suída desse fornecedor", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    int id = Convert.ToInt32(dgvFornecedores.CurrentRow.Cells[0].Value);
                    FornecedorDAO fDao = new FornecedorDAO();
                    var fornecedor = fDao.find(id);
                    fornecedor.saida = DateTime.Now;
                    if (fDao.atualizar(fornecedor))
                    {
                        preencherGridVisitanteFornecedores();
                        mensagem("Registro de saída finalizado com sucesso!");
                    }
                }
                else
                {
                    return;
                }
            }
        }

        private void btnResgistrarSaidaVisitante_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente cadastrar a saida desse visitante?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (dgvVisitante.Rows.Count == 0)
                {
                    mensagem("Selecione a linha que corresponde a um fonecedor");
                }
                else
                {
                    int id = Convert.ToInt32(dgvVisitante.CurrentRow.Cells[0].Value);
                    VisitanteDAO vDao = new VisitanteDAO();
                    var visitantes = vDao.find(id);
                    visitantes.saida = DateTime.Now;
                    if (vDao.atualizar(visitantes))
                    {
                        preencherGridVisitanteFornecedores();
                        mensagem("Registro de saída finalizado com sucesso!");
                    }
                }
            }
        }

        private void cmbDocente_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbDocente.SelectedItem.ToString() == "Não")
            {
                txtCodigoPlaca.Enabled = false;
                txtCodigoPlaca.Visible = false;
                lblCodigoPlaca.Visible = false;
            }
            else
            {
                txtCodigoPlaca.Enabled = true;
                txtCodigoPlaca.Visible = true;
                lblCodigoPlaca.Visible = true;
            }
        }

        private void btnCancelarRegistro_Click(object sender, EventArgs e)
        {
            telaInicialRegistrarEntradaVisiForn();
        }

        private void telaInicialRegistrarEntradaVisiForn()
        {
            txtNomeFornecedorVisitante.Text = null;
            txtEmpresaFornecedorVisitante = null;
            txtMotivoFornecedorVisitante = null;
            txtRgFornecedorVisitante = null;
        }

        private void txtNomeFornecedorVisitante_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarAlfanumerico(sender, e);
        }

        /*validando apenas caracteres alfanumerico, espaço em branco e backspace */
        private void validarAlfanumerico(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetterOrDigit(e.KeyChar) && !char.IsWhiteSpace(e.KeyChar) && e.KeyChar != (char)8)
            {
                e.Handled = true;
            }
        }

        private void txtRgFornecedorVisitante_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarAlfanumerico(sender, e);
        }

        private void txtEmpresaFornecedorVisitante_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarAlfanumerico(sender, e);
        }

        private void txtMotivoFornecedorVisitante_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarAlfanumerico(sender, e);
        }

        private void txtPerVeiProntuario1_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarAlfanumerico(sender, e);
        }

        private void txtPerVeiSerPre1_KeyPress(object sender, KeyPressEventArgs e)
        {
            validarLetrasPenas(sender, e);
        }

        private void validarLetrasPenas(object sender, KeyPressEventArgs e)
        {
            if (!char.IsLetter(e.KeyChar) && !char.IsWhiteSpace(e.KeyChar) && e.KeyChar != (char)8)
            {
                e.Handled = true;
            }
        }

        /*travando controles na aba permanência de veículo qunado aluno*/
        private void perVeiControlsAluno()
        {
            lblPerVeiCurso.Enabled = true;
            cmbPerVeiCurso.Enabled = true;
            lblPerVeiModulo.Enabled = true;
            cmbPerVeiModulo.Enabled = true;
            lblPerVeiAno.Enabled = true;
            cmbPerVeiAnoLetivo.Enabled = true;

            lblPerVeiSetor.Enabled = false;
            cmbPerVeiSetor.Enabled = false;
            lblPerVeiDocente.Enabled = false;
            cmbPerVeiDocente.Enabled = false;

            lblPerVeiSerPre1.Enabled = false;
            txtPerVeiSerPre1.Enabled = false;
            txtPerVeiSerPre1.Text = null;
            txtPerVeiSerPre2.Enabled = false;
            txtPerVeiSerPre2.Text = null;
            txtPerVeiSerPre3.Enabled = false;
            txtPerVeiSerPre3.Text = null;
            txtPerVeiSerPre4.Enabled = false;
            txtPerVeiSerPre4.Text = null;
            lblPerVeiPro1.Enabled = false;
            txtPerVeiProntuario1.Enabled = false;
            txtPerVeiProntuario1.Text = null;
            txtPerVeiProntuario2.Enabled = false;
            txtPerVeiProntuario2.Text = null;
            txtPerVeiProntuario3.Enabled = false;
            txtPerVeiProntuario3.Text = null;
            txtPerVeiSerPre4.Enabled = false;
            txtPerVeiProntuario4.Enabled = false;
        }

        private void perVeiControlsFuncionario()
        {
            lblPerVeiCurso.Enabled = false;
            cmbPerVeiCurso.Enabled = false;
            lblPerVeiModulo.Enabled = false;
            cmbPerVeiModulo.Enabled = false;
            lblPerVeiAno.Enabled = false;
            cmbPerVeiAnoLetivo.Enabled = false;

            lblPerVeiSetor.Enabled = true;
            cmbPerVeiSetor.Enabled = true;
            lblPerVeiDocente.Enabled = true;
            cmbPerVeiDocente.Enabled = true;
            lblPerVeiSerPre1.Enabled = true;
            txtPerVeiSerPre1.Enabled = true;
            txtPerVeiSerPre1.Text = null;
            txtPerVeiSerPre2.Enabled = true;
            txtPerVeiSerPre2.Text = null;
            txtPerVeiSerPre3.Enabled = true;
            txtPerVeiSerPre3.Text = null;
            txtPerVeiSerPre4.Enabled = true;
            txtPerVeiSerPre4.Text = null;
            lblPerVeiPro1.Enabled = true;
            txtPerVeiProntuario1.Enabled = true;
            txtPerVeiProntuario1.Text = null;
            txtPerVeiProntuario2.Enabled = true;
            txtPerVeiProntuario2.Text = null;
            txtPerVeiProntuario3.Enabled = true;
            txtPerVeiProntuario3.Text = null;
            txtPerVeiProntuario4.Enabled = true;
            txtPerVeiProntuario4.Text = null;
        }

        private void rdbPerVeiAluno_CheckedChanged(object sender, EventArgs e)
        {
            perVeiControlsAluno();
        }

        private void rdbPerVeiFuncionario_CheckedChanged(object sender, EventArgs e)
        {
            perVeiControlsFuncionario();
        }

        private void btnPerVeiCancelar_Click(object sender, EventArgs e)
        {
            limparCamposPerVei();
        }

        private void limparCamposPerVei()
        {
            txtPerVeiNome.Text = null;
            txtPerVeiRG.Text = null;
            txtPerVeiProntuario.Text = null;
            txtPerVeiMarca.Text = null;
            txtPerVeiModelo.Text = null;
            txtPerVeiPlaca.Text = null;
            rdbPerVeiAluno.Checked = true;
            txtPerVeiSerPre1.Text = null;
            txtPerVeiSerPre2.Text = null;
            txtPerVeiSerPre3.Text = null;
            txtPerVeiSerPre4.Text = null;
            txtPerVeiProntuario1.Text = null;
            txtPerVeiProntuario2.Text = null;
            txtPerVeiProntuario3.Text = null;
            txtPerVeiProntuario4.Text = null;
        }

        private void brnCadastrar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente cadastrar permanência de veiculo?", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (string.IsNullOrWhiteSpace(txtPerVeiNome.Text) || string.IsNullOrWhiteSpace(txtPerVeiRG.Text) || string.IsNullOrWhiteSpace(txtPerVeiProntuario.Text) ||
                 string.IsNullOrWhiteSpace(txtPerVeiMarca.Text) || string.IsNullOrWhiteSpace(txtPerVeiModelo.Text) || string.IsNullOrWhiteSpace(txtPerVeiPlaca.Text) ||
                 cmbPerVeiAnoCarro.SelectedItem == null)
                {
                    mensagem("Verifique se todos os campos foram preenchidos");
                    return;
                }
                else
                {
                    var pDAO = new PermanenciaVeiculoDAO();
                    var p = new PermanenciaVeiculo();
                    p.nome = txtPerVeiNome.Text;
                    p.rg = txtPerVeiRG.Text;
                    p.prontuario = txtPerVeiRG.Text;
                    p.marca = txtPerVeiMarca.Text;
                    p.modelo = txtPerVeiModelo.Text;
                    p.ano = Convert.ToInt32(cmbPerVeiAnoCarro.SelectedItem);
                    p.placa = txtPerVeiPlaca.Text;
                    if (rdbPerVeiAluno.Checked == true)
                    {
                        if (cmbPerVeiCurso.SelectedItem == null || cmbPerVeiModulo.SelectedItem == null || cmbPerVeiAnoLetivo.SelectedItem == null)
                        {
                            mensagem("Preencha todos os dados referentes ao curso do aluno");
                            cmbPerVeiCurso.Focus();
                            return;
                        }
                        else
                        {
                            try
                            {
                                p.tipoSolicitante = "Aluno";
                                p.curso = cmbPerVeiCurso.Text;
                                p.modulo = cmbPerVeiModulo.Text;
                                p.anoLetivo = cmbPerVeiAnoLetivo.Text;
                                p.funcionario = (AssistenteAdministracao)acessoPessoa;
                                p.dataEntrada = DateTime.Now;
                                pDAO.adicionar(p);
                                mensagem("Permanência de veículo cadastrad com sucesso!");
                                atualizaGridPermanenciaVeiculo();
                                limparCamposPerVei();
                            }
                            catch (Exception ex)
                            {
                                mensagem("Falha ao cadastrar permanência de veículo\nDetalhes: " + ex);
                            }
                        }
                    }
                    else
                    {
                        if (cmbPerVeiSetor.SelectedItem == null || cmbPerVeiDocente.SelectedItem == null || string.IsNullOrWhiteSpace(txtPerVeiSerPre1.Text) ||
                             string.IsNullOrWhiteSpace(txtPerVeiProntuario1.Text))
                        {
                            mensagem("Verifique se todos os campos foram preenchidos por favor!");
                        }
                        else
                        {
                            try
                            {
                                p.setor = cmbPerVeiSetor.SelectedText;
                                p.tipoSolicitante = "Funcionário";
                                p.isDocente = cmbPerVeiDocente.SelectedText;
                                p.dataEntrada = DateTime.Now;
                                p.servidorPublico1 = txtPerVeiSerPre1.Text;
                                p.servidorPublico2 = txtPerVeiSerPre2.Text;
                                p.servidorPublico3 = txtPerVeiSerPre3.Text;
                                p.servidorPublico4 = txtPerVeiSerPre4.Text;
                                p.prontuario1 = txtPerVeiProntuario1.Text;
                                p.prontuario2 = txtPerVeiProntuario2.Text;
                                p.prontuario3 = txtPerVeiProntuario3.Text;
                                p.prontuario4 = txtPerVeiProntuario4.Text;
                                p.funcionario = (AssistenteAdministracao)acessoPessoa;
                                pDAO.adicionar(p);
                                mensagem("Permanência de veículo cadastrada com sucesso!");
                                atualizaGridPermanenciaVeiculo();
                                limparCamposPerVei();
                            }
                            catch (Exception ex)
                            {
                                mensagem("Falha ao cadastrar permanência de veículo\nDetalhes: " + ex);
                            }
                        }
                    }
                }
            }
        }

        /*atualziando o grid de permanência de veículo*/
        private void atualizaGridPermanenciaVeiculo()
        {
            dgvPermanenciaVeiculo.Rows.Clear();
            dgvPermanenciaVeiculo.Update();
            dgvPermanenciaVeiculo.Refresh();
            var pDAO = new PermanenciaVeiculoDAO();
            var permanenciasVeiculos = pDAO.get(p => p.dataSaida == null);
            foreach (PermanenciaVeiculo item in permanenciasVeiculos)
            {
                dgvPermanenciaVeiculo.Rows.Add(item.idPermanenciaVeiculo, item.nome, item.placa, item.tipoSolicitante, item.dataEntrada.ToString("dd/MM/yyyy hh:mm:ss"));
            }
        }

        private void btnRegistrarSaida_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja realmente registar a saída do veículo?", "Registro", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (dgvPermanenciaVeiculo.Rows.Count == 0)
                {
                    mensagem("Selecione pelo menos um registro");
                }
                else
                {
                    var pDAO = new PermanenciaVeiculoDAO();
                    int id = Convert.ToInt32(dgvPermanenciaVeiculo.CurrentRow.Cells[0].Value);
                    try
                    {
                        var p = pDAO.find(id);
                        p.dataSaida = DateTime.Now;
                        pDAO.atualizar(p);
                        mensagem("Registro atualizado com sucesso!");
                        atualizaGridPermanenciaVeiculo();
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao atualizar o registro");
                    }
                }
            }
        }

        private void rdbCadAltTerceirizado_CheckedChanged(object sender, EventArgs e)
        {
            rdbCadAltProntuario.Enabled = false;
        }

        private void rdbCadAltFunVinIFSP_CheckedChanged(object sender, EventArgs e)
        {
            rdbCadAltProntuario.Enabled = true;
        }

        private void btnCadAltSenPesquisar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtCadAltPesquisa.Text))
            {
                mensagem("Por favor insira um valo no campo 'Pesquisa'");
            }
            else
            {
                if (rdbCadAltFunVinIFSP.Checked == true && rdbCadAltNome.Checked == true)
                {
                    try
                    {
                        var fDao = new FuncionarioDAO();
                        var funcionario = fDao.get(f => f.nome == txtCadAltPesquisa.Text).FirstOrDefault();
                        if (funcionario.Equals(null))
                        {
                            mensagem("Nenhum funcionario encontrado com esse nome");
                        }
                        else
                        {
                            txtCadAltNome.Text = funcionario.nome;
                            txtCadAltID.Text = funcionario.idPessoaFisica.ToString();
                            if (funcionario.autenticacao != null)
                            {
                                txtCadAltSenUsuario.Text = funcionario.autenticacao.usuario;
                                cmbCadAltNivelAcesso.SelectedItem = funcionario.autenticacao.nivelAcesso;
                            }
                            txtCadAltPesquisa.ReadOnly = true;
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar");
                    }
                }
                else if (rdbCadAltFunVinIFSP.Checked == true && rdbCadAltProntuario.Checked == true)
                {
                    try
                    {
                        var fDao = new FuncionarioDAO();
                        var funcionario = fDao.get(f => f.prontuario.prontuario == txtCadAltPesquisa.Text).FirstOrDefault();
                        if (funcionario.Equals(null))
                        {
                            mensagem("Nenhum funcionario encontrado com esse prontuário");
                        }
                        else
                        {
                            txtCadAltNome.Text = funcionario.nome;
                            txtCadAltID.Text = funcionario.idPessoaFisica.ToString();
                            if (funcionario.autenticacao != null)
                            {
                                txtCadAltSenUsuario.Text = funcionario.autenticacao.usuario;
                                cmbCadAltNivelAcesso.SelectedItem = funcionario.autenticacao.nivelAcesso;
                            }
                            txtCadAltPesquisa.ReadOnly = true;
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar");
                    }
                }
                else if (rdbCadAltFunVinIFSP.Checked == true && rdbCadAltId.Checked == true)
                {
                    try
                    {
                        var fDao = new FuncionarioDAO();
                        var funcionario = fDao.get(f => f.idPessoaFisica == Convert.ToInt32(txtCadAltPesquisa.Text)).FirstOrDefault();
                        if (funcionario.Equals(null))
                        {
                            mensagem("Nenhuma funcionário encontrada com esse código de identificação");
                        }
                        else
                        {
                            txtCadAltNome.Text = funcionario.nome;
                            txtCadAltID.Text = funcionario.idPessoaFisica.ToString();
                            if (funcionario.autenticacao != null)
                            {
                                txtCadAltSenUsuario.Text = funcionario.autenticacao.usuario;
                                cmbCadAltNivelAcesso.SelectedItem = funcionario.autenticacao.nivelAcesso;
                            }
                            txtCadAltPesquisa.ReadOnly = true;
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar");
                    }
                }
                else if (rdbCadAltTerceirizado.Checked == true && rdbCadAltNome.Checked == true)
                {
                    try
                    {
                        var tDao = new TerceirizadoDAO();
                        var terceirizado = tDao.get(t => t.nome == txtCadAltPesquisa.Text).FirstOrDefault();
                        if (terceirizado.Equals(null))
                        {
                            mensagem("Nenhum funcionario terceirizado encontrado com esse nome");
                        }
                        else
                        {
                            txtCadAltNome.Text = terceirizado.nome;
                            txtCadAltID.Text = terceirizado.idPessoaFisica.ToString();
                            if (terceirizado.autenticacao != null)
                            {
                                txtCadAltSenUsuario.Text = terceirizado.autenticacao.usuario;
                                cmbCadAltNivelAcesso.SelectedItem = terceirizado.autenticacao.nivelAcesso;
                            }
                            txtCadAltPesquisa.ReadOnly = true;
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar");
                    }
                }
                else if (rdbCadAltTerceirizado.Checked == true && rdbCadAltId.Checked == true)
                {
                    try
                    {
                        var tDao = new TerceirizadoDAO();
                        var terceirizado = tDao.get(t => t.idPessoaFisica == Convert.ToInt32(txtCadAltPesquisa.Text)).FirstOrDefault();
                        if (terceirizado.Equals(null))
                        {
                            mensagem("Nenhuma pessoa encontrada com esse código de identificação");
                        }
                        else
                        {
                            txtCadAltNome.Text = terceirizado.nome;
                            txtCadAltID.Text = terceirizado.idPessoaFisica.ToString();
                            if (terceirizado.autenticacao != null)
                            {
                                txtCadAltSenUsuario.Text = terceirizado.autenticacao.usuario;
                                cmbCadAltNivelAcesso.SelectedItem = terceirizado.autenticacao.nivelAcesso;
                            }
                            txtCadAltPesquisa.ReadOnly = true;
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar");
                    }
                }
            }
        }

        private void btnCadAltSenCadAlt_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtCadAltSenUsuario.Text) || string.IsNullOrWhiteSpace(txtCadAltSenSenha.Text) ||
                 cmbCadAltNivelAcesso.SelectedItem == null)
            {
                mensagem("É necessário preencher os campos \"Usuário\" e \"Senha\" e selecionar o nível de acesso");
                txtCadAltSenUsuario.Focus();
                return;
            }
            else
            {
                try
                {
                    if (cmbCadAltNivelAcesso.SelectedItem.ToString() == "Coordenadoria" || cmbCadAltNivelAcesso.SelectedItem.ToString() == "Administração" ||
                         cmbCadAltNivelAcesso.SelectedItem.ToString() == "Assistência de Alunos" || cmbCadAltNivelAcesso.SelectedItem.ToString() == "Administrador do Sistema")
                    {
                        var fDAO = new FuncionarioDAO();
                        var f = fDAO.find(Convert.ToInt32(txtCadAltID.Text));
                        Autenticacao aut = new Autenticacao()
                        {
                            nivelAcesso = cmbCadAltNivelAcesso.SelectedItem.ToString(),
                            senha = Cripitografia.encripto(txtCadAltSenSenha.Text),
                            usuario = txtCadAltSenUsuario.Text
                        };
                        f.autenticacao = aut;
                        fDAO.atualizar(f);
                        mensagem("Usuário e Senha cadastrada com sucesso");
                        limparTabCadAltSenha();
                    }
                    else
                    {
                        var tDAO = new TerceirizadoDAO();
                        var t = tDAO.find(Convert.ToInt32(txtCadAltID.Text));
                        Autenticacao aut = new Autenticacao()
                        {
                            nivelAcesso = cmbCadAltNivelAcesso.SelectedItem.ToString(),
                            senha = Cripitografia.encripto(txtCadAltSenSenha.Text),
                            usuario = txtCadAltSenUsuario.Text
                        };
                        t.autenticacao = aut;
                        tDAO.atualizar(t);
                        mensagem("Usuário e Senha cadastrada com sucesso");
                        limparTabCadAltSenha();
                    }
                }
                catch (Exception)
                {
                    mensagem("Falha ao cadastar/alterar usuário e senha");
                    limparTabCadAltSenha();
                }
            }
        }

        private void limparTabCadAltSenha()
        {
            rdbCadAltFunVinIFSP.Checked = true;
            rdbCadAltNome.Checked = true;
            txtCadAltPesquisa.Text = null;
            txtCadAltNome.Text = null;
            txtCadAltSenUsuario.Text = null;
            txtCadAltSenSenha.Text = null;
            txtCadAltPesquisa.ReadOnly = false;
            txtCadAltID.Text = null;
        }

        public void verificarUsuarioLogado(int id, string nivelAcesso)
        {
            try
            {
                var pDAO = new PessoaFisicaDAO();
                usuarioLogado = pDAO.find(id);
                acessoPessoa = usuarioLogado;
                lblUsuario.Text = usuarioLogado.nome;
                if (nivelAcesso == "Administração")
                {
                    tabControl.TabPages.Clear();
                    tabControl.TabPages.Add(tabCadastrarUsoEstacionamento);
                    tabControl.TabPages.Add(tabPermanenciaVeiculo);
                    tabControl.TabPages.Add(tabManterTerceirizado);
                }
                else if (nivelAcesso == "Coordenadoria")
                {
                    tabControl.TabPages.Clear();
                }
                else if (nivelAcesso == "Portaria")
                {
                    tabControl.TabPages.Clear();
                    tabControl.TabPages.Add(tabPermanenciaVeiculoEncerrar);
                    tabControl.TabPages.Add(tabSolicitacoesSaidaAbertas);
                    tabControl.TabPages.Add(tabEntradaVisitanteForncedor);
                    tabControl.TabPages.Add(tabRegistrarSaidaFornecedor);
                    tabControl.TabPages.Add(tabRegistrarSaidaVisitante);
                    tabControl.TabPages.Add(tabEstacionamento);
                }
                else if (nivelAcesso == "Assistência de Alunos")
                {
                    tabControl.TabPages.Clear();
                    tabControl.TabPages.Add(tabSolicitacoes);
                }
            }
            catch (Exception)
            {
                mensagem("Falha ao inicializar aplicação.\nTente novamente");
                Application.Exit();
            }
        }

        private void btnCadAltSenCancelar_Click(object sender, EventArgs e)
        {
            limparTabCadAltSenha();
        }

        private void frmPrincipal_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void trocarCredenciaisDeAcessoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var frmAutenticacaoSubstituicao = new frmAutenticacaoSubstituicao();
            frmAutenticacaoSubstituicao.ShowDialog();
        }

        private void sairToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void telaInicialCadTer()
        {
            txtCadTerCodigo.Text = null;
            txtCadTerCodigo.Enabled = false;
            txtCadTerNome.Text = null;
            txtCadTerNome.Enabled = false;
            txtCadTerRG.Text = null;
            txtCadTerRG.Enabled = false;
            txtCadTerTelefone.Text = null;
            txtCadTerTelefone.Enabled = false;
            txtCadTerCelular.Text = null;
            txtCadTerCelular.Enabled = false;
            txtCadTerArea.Text = null;
            txtCadTerArea.Enabled = false;
            txtCadTerEmpresa.Text = null;
            txtCadTerEmpresa.Enabled = false;
            rdbCadTerCodigo.Checked = true;
            grpCadTerTipoPesquisa.Enabled = false;
            txtCadTerPesquisa.Text = null;
            txtCadTerPesquisa.Enabled = false;
            btnCadTerPesquisar.Enabled = false;
            btnCadTerSelecionarRegistro.Enabled = false;
            btnCadTerCadastrar.Enabled = true;
            btnCadTerAlterar.Enabled = true;
            btnCadTerExcluir.Enabled = false;
            btnCadTerCancelar.Enabled = false;
            btnCadTerSalvar.Enabled = false;
            terceirizado = null;
            terceirizados = null;
        }

        private void telaCadastrarCadTer()
        {
            txtCadTerCodigo.Text = null;
            txtCadTerCodigo.Enabled = true;
            txtCadTerNome.Text = null;
            txtCadTerNome.Enabled = true;
            txtCadTerRG.Text = null;
            txtCadTerRG.Enabled = true;
            txtCadTerTelefone.Text = null;
            txtCadTerTelefone.Enabled = true;
            txtCadTerCelular.Text = null;
            txtCadTerCelular.Enabled = true;
            txtCadTerArea.Text = null;
            txtCadTerArea.Enabled = true;
            txtCadTerEmpresa.Text = null;
            txtCadTerEmpresa.Enabled = true;
            rdbCadTerCodigo.Checked = true;
            grpCadTerTipoPesquisa.Enabled = false;
            txtCadTerPesquisa.Text = null;
            txtCadTerPesquisa.Enabled = false;
            btnCadTerPesquisar.Enabled = false;
            btnCadTerSelecionarRegistro.Enabled = false;
            btnCadTerCadastrar.Enabled = false;
            btnCadTerAlterar.Enabled = false;
            btnCadTerExcluir.Enabled = false;
            btnCadTerCancelar.Enabled = true;
            btnCadTerSalvar.Enabled = true;
        }

        private void telaAlterarCadTer1()
        {
            txtCadTerCodigo.Text = null;
            txtCadTerCodigo.Enabled = true;
            txtCadTerNome.Text = null;
            txtCadTerNome.Enabled = false;
            txtCadTerRG.Text = null;
            txtCadTerRG.Enabled = false;
            txtCadTerTelefone.Text = null;
            txtCadTerTelefone.Enabled = false;
            txtCadTerCelular.Text = null;
            txtCadTerCelular.Enabled = false;
            txtCadTerArea.Text = null;
            txtCadTerArea.Enabled = false;
            txtCadTerEmpresa.Text = null;
            txtCadTerEmpresa.Enabled = false;
            rdbCadTerCodigo.Checked = true;
            grpCadTerTipoPesquisa.Enabled = true;
            txtCadTerPesquisa.Text = null;
            txtCadTerPesquisa.Enabled = true;
            btnCadTerPesquisar.Enabled = true;
            btnCadTerSelecionarRegistro.Enabled = false;
            btnCadTerCadastrar.Enabled = false;
            btnCadTerAlterar.Enabled = false;
            btnCadTerExcluir.Enabled = false;
            btnCadTerCancelar.Enabled = true;
            btnCadTerSalvar.Enabled = true;
        }

        private void telaAlterarCadTer2()
        {
            txtCadTerCodigo.Text = null;
            txtCadTerCodigo.Enabled = true;
            txtCadTerNome.Text = null;
            txtCadTerNome.Enabled = true;
            txtCadTerRG.Text = null;
            txtCadTerRG.Enabled = true;
            txtCadTerTelefone.Text = null;
            txtCadTerTelefone.Enabled = true;
            txtCadTerCelular.Text = null;
            txtCadTerCelular.Enabled = true;
            txtCadTerArea.Text = null;
            txtCadTerArea.Enabled = true;
            txtCadTerEmpresa.Text = null;
            txtCadTerEmpresa.Enabled = true;
            rdbCadTerCodigo.Checked = true;
            grpCadTerTipoPesquisa.Enabled = false;
            txtCadTerPesquisa.Enabled = true;
            btnCadTerPesquisar.Enabled = true;
            btnCadTerSelecionarRegistro.Enabled = false;
            btnCadTerCadastrar.Enabled = false;
            btnCadTerAlterar.Enabled = false;
            btnCadTerExcluir.Enabled = false;
            btnCadTerCancelar.Enabled = true;
            btnCadTerSalvar.Enabled = true;
        }

        private void btnCadTerCadastrar_Click(object sender, EventArgs e)
        {
            telaCadastrarCadTer();
        }

        private void btnCadTerCancelar_Click(object sender, EventArgs e)
        {
            telaInicialCadTer();
        }

        private void btnCadTerPesquisar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtCadTerPesquisa.Text))
            {
                mensagem("Insira um valor no campo de pesquisa");
            }
            else
            {
                if (rdbCadTerCodigo.Checked == true)
                {
                    try
                    {
                        telaAlterarCadTer2();
                        var tDAO = new TerceirizadoDAO();
                        int id = Convert.ToInt32(txtCadTerPesquisa.Text);
                        var t = tDAO.find(id);
                        if (t != null)
                        {
                            preenchendoDadosCadTer(t);
                        }
                        else
                        {
                            mensagem("Nenhum funcionário terceirizado encontrado com esse código");
                            telaInicialCadTer();
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar funcionário terceirizado");
                        telaInicialCadTer();
                    }
                }
                else
                {
                    try
                    {
                        telaAlterarCadTer2();
                        var tDAO = new TerceirizadoDAO();
                        terceirizados = tDAO.get(t => t.nome.StartsWith(txtCadTerPesquisa.Text, StringComparison.CurrentCultureIgnoreCase));
                        if (terceirizados != null)
                        {
                            btnCadTerSelecionarRegistro.Enabled = true;
                            foreach (Terceirizado t in terceirizados)
                            {
                                dgvCadTerResultadoPesquisa.Rows.Add(t.idPessoaFisica, t.nome, t.rg);
                            }
                        }
                        else
                        {
                            mensagem("Nenhum funcionário encontrado");
                            telaInicialCadTer();
                        }
                    }
                    catch (Exception)
                    {
                        mensagem("Falha ao pesquisar funcionário");
                    }
                }
            }
        }

        private void preenchendoDadosCadTer(Terceirizado t)
        {
            terceirizado = t;
            txtCadTerCodigo.Text = terceirizado.idPessoaFisica.ToString();
            txtCadTerNome.Text = terceirizado.nome;
            txtCadTerRG.Text = terceirizado.rg;
            txtCadTerTelefone.Text = terceirizado.telefone;
            txtCadTerCelular.Text = terceirizado.celular;
            cmbCadTerSexo.SelectedItem = terceirizado.sexo;
            dtpCadTerDataNascimento.Value = terceirizado.nascimento;
            txtCadTerArea.Text = terceirizado.area;
            txtCadTerEmpresa.Text = terceirizado.empresa;
            btnCadTerExcluir.Enabled = true;
            btnCadTerSelecionarRegistro.Enabled = true;
        }

        private void btnCadTerSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtCadTerNome.Text) || string.IsNullOrWhiteSpace(txtCadTerRG.Text) || string.IsNullOrWhiteSpace(txtCadTerTelefone.Text) ||
                 string.IsNullOrWhiteSpace(txtCadTerCelular.Text) || cmbCadTerSexo.SelectedItem.ToString() == "Selecione" || string.IsNullOrWhiteSpace(txtCadTerArea.Text) ||
                 string.IsNullOrWhiteSpace(txtCadTerEmpresa.Text))
            {
                mensagem("Verifique se todas os campos estão preenchidos");
            }
            else
            {
                if (terceirizado == null)
                {
                    terceirizado = new Terceirizado();
                    terceirizado.nascimento = dtpCadTerDataNascimento.Value.Date;
                    terceirizado.nome = txtCadTerNome.Text;
                    terceirizado.rg = txtCadTerRG.Text;
                    terceirizado.sexo = cmbCadTerSexo.SelectedItem.ToString();
                    terceirizado.telefone = txtCadTerTelefone.Text;
                    terceirizado.area = txtCadTerArea.Text;
                    terceirizado.celular = txtCadTerCelular.Text;
                    terceirizado.empresa = txtCadTerEmpresa.Text;
                    try
                    {
                        var tDAO = new TerceirizadoDAO();
                        tDAO.adicionar(terceirizado);
                        mensagem("Funcionário terceirizado cadastrado com sucesso");
                        telaInicialCadTer();
                    }
                    catch (Exception ex)
                    {
                        mensagem("Falha ao cadastrar funcionário terceirizado\nDetalhes: " + ex);
                    }
                }
                else
                {
                    terceirizado.nascimento = dtpCadTerDataNascimento.Value.Date;
                    terceirizado.nome = txtCadTerNome.Text;
                    terceirizado.rg = txtCadTerRG.Text;
                    terceirizado.sexo = cmbCadTerSexo.SelectedItem.ToString();
                    terceirizado.telefone = txtCadTerTelefone.Text;
                    terceirizado.area = txtCadTerArea.Text;
                    terceirizado.celular = txtCadTerCelular.Text;
                    terceirizado.empresa = txtCadTerEmpresa.Text;
                    try
                    {
                        var tDAO = new TerceirizadoDAO();
                        tDAO.atualizar(terceirizado);
                        mensagem("Funcionário terceirizado alterado com sucesso");
                        telaInicialCadTer();
                    }
                    catch (Exception ex)
                    {
                        mensagem("Falha ao alterar funcionário terceirizado\nDetalhes: " + ex);
                    }
                }
            }
        }

        private void btnCadTerAlterar_Click(object sender, EventArgs e)
        {
            telaAlterarCadTer1();
        }

        private void btnCadTerSelecionarRegistro_Click(object sender, EventArgs e)
        {
            if (dgvCadTerResultadoPesquisa.RowCount == 0 || dgvCadTerResultadoPesquisa.Rows.Count == 0)
            {
                mensagem("É necessário que haja registro selecionado");
            }
            else
            {
                int id = Convert.ToInt32(dgvCadTerResultadoPesquisa.CurrentRow.Cells[0].Value);
                var t = terceirizados.Where(i => i.idPessoaFisica == id).FirstOrDefault();
                preenchendoDadosCadTer(t);
                dgvCadTerResultadoPesquisa.Rows.Clear();
                dgvCadTerResultadoPesquisa.Update();
            }
        }

        private void btnCadTerExcluir_Click(object sender, EventArgs e)
        {
            try
            {
                var tDAO = new TerceirizadoDAO();
                var aDAO = new AutenticacaoDAO();
                aDAO.excluir(a => a == terceirizado.autenticacao);
                tDAO.excluir(t => t == terceirizado);
                mensagem("Cadastro de funcionário excluído com sucesso");
                telaInicialCadTer();
            }
            catch (Exception)
            {
                mensagem("Falha ao excluir funciário terceirizado");
                telaInicialCadTer();
            }
        }

        private void relatorioSolicitacaoSaida_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            int eixoX = 105;
            string expirado;
            // titulo
            e.Graphics.DrawString("Relatório mensal de solicitações de saída antecipada de aluno", new Font("Arial", 12, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 30));
            //headers
            e.Graphics.DrawString("Prontuário", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 85));
            e.Graphics.DrawString("Nome", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(107, 85));
            e.Graphics.DrawString("Abertura", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(325, 85));
            e.Graphics.DrawString("Encerramento", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(490, 85));
            e.Graphics.DrawString("Saida. Sup.", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(640, 85));
            e.Graphics.DrawString("Status", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(740, 85));

            string encerramento = "";
            string saidaSupervisionada = "Não";
            IQueryable<SolicitacaoSaida> solicitacoes = null;
            try
            {
                var sDAO = new SolicitacaoSaidaDAO();
                solicitacoes = sDAO.get(s => s.abertura.Year.ToString() == cmbRelAno.SelectedItem.ToString() && s.abertura.Month.ToString() == cmbRelMes.SelectedItem.ToString());
            }
            catch (Exception)
            {
                mensagem("Erro ao gerar relatório");
            }
            foreach (SolicitacaoSaida s in solicitacoes)
            {
                if (s.encerramento != null)
                {
                    encerramento = s.encerramento.Value.ToString("dd/mm/yyy hh:mm:ss");
                }
                else
                {
                    encerramento = "";
                }
                if (s.saidaSupervisionada == true)
                {
                    saidaSupervisionada = "Sim";
                }
                else
                {
                    saidaSupervisionada = "Não";
                }
                e.Graphics.DrawString(s.aluno.prontuario.prontuario, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(20, eixoX));
                e.Graphics.DrawString(s.aluno.nome, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(107, eixoX));
                e.Graphics.DrawString(s.abertura.ToString("dd/mm/yyy hh:mm:ss"), new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(325, eixoX));
                e.Graphics.DrawString(encerramento, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(490, eixoX));
                e.Graphics.DrawString(saidaSupervisionada, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(640, eixoX));
                e.Graphics.DrawString(s.status.ToString(), new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(740, eixoX));
                eixoX += 15;
            }
        }

        private void btnRelSolGerar_Click(object sender, EventArgs e)
        {
            if (combosRelatorioSelecionados())
            {
                printPreview.WindowState = FormWindowState.Maximized;
                //pré visualização do documento a imprimir
                printPreview.Document = relatorioSolicitacaoSaida;
                printPreview.ShowDialog();
            }
            else
            {
                return;
            }
        }

        private void btnRegistrarSaidaVisitante(object sender, EventArgs e)
        {
            if (dgvVisitante.Rows.Count == 0)
            {
                mensagem("Selecione a linha que corresponde a um visitante");
            }
            else
            {
                if (MessageBox.Show("Deseja realmente cadastrar a suída desse visitate", "Pergunta", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                    int id = Convert.ToInt32(dgvVisitante.CurrentRow.Cells[0].Value);
                    VisitanteDAO vDao = new VisitanteDAO();
                    var visitante = vDao.find(id);
                    visitante.saida = DateTime.Now;
                    if (vDao.atualizar(visitante))
                    {
                        preencherGridVisitanteFornecedores();
                        mensagem("Registro de saída finalizado com sucesso!");
                    }
                }
                else
                {
                    return;
                }
            }
        }

        private bool combosRelatorioSelecionados()
        {
            if (cmbRelAno.SelectedItem == null || cmbRelMes.SelectedItem == null || cmbRelAno.SelectedText == "Selecione" || cmbRelMes.SelectedText == "Selecione")
            {
                mensagem("Selecione ano e mes");
                return false;
            }
            else
            {
                return true;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (combosRelatorioSelecionados())
            {
                printPreview.WindowState = FormWindowState.Maximized;
                //pré visualização do documento a imprimir
                printPreview.Document = relatorioSolicitacaoEntrada;
                printPreview.ShowDialog();
            }
            else
            {
                return;
            }
        }

        private void relatorioSolicitacaoEntrada_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            int eixoX = 105;
            // titulo
            e.Graphics.DrawString("Relatório mensal de solicitações de entrada antecipada de aluno", new Font("Arial", 12, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 30));
            //headers
            e.Graphics.DrawString("Prontuário", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 85));
            e.Graphics.DrawString("Nome", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(107, 85));
            e.Graphics.DrawString("Abertura", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(325, 85));
            
            IQueryable<SolicitacaoEntrada> solicitacoes = null;
            try
            {
                var sDAO = new SolicitacaoEntradaDAO();
                solicitacoes = sDAO.get(s => s.abertura.Year.ToString() == cmbRelAno.SelectedItem.ToString() && s.abertura.Month.ToString() == cmbRelMes.SelectedItem.ToString());
            }
            catch (Exception)
            {
                mensagem("Erro ao gerar relatório");
            }

            foreach (SolicitacaoEntrada s in solicitacoes)
            {
                e.Graphics.DrawString(s.aluno.prontuario.prontuario, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(20, eixoX));
                e.Graphics.DrawString(s.aluno.nome, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(107, eixoX));
                e.Graphics.DrawString(s.abertura.ToString("dd/mm/yyy hh:mm:ss"), new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(325, eixoX));
                eixoX += 15;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (combosRelatorioSelecionados())
            {
                printPreview.WindowState = FormWindowState.Maximized;
                //pré visualização do documento a imprimir
                relatorioVisitantes.DefaultPageSettings.Landscape = true;
                printPreview.Document = relatorioVisitantes;
                printPreview.ShowDialog();
            }
            else
            {
                return;
            }
        }

        private void relatorioVisitantes_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            int eixoX = 105;
            string expirado;
            // titulo
            e.Graphics.DrawString("Relatório mensal de vistantes", new Font("Arial", 12, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 30));
            //headers
            e.Graphics.DrawString("Nome", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 85));
            e.Graphics.DrawString("RG", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(320, 85));
            e.Graphics.DrawString("Entrada", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(400, 85));
            e.Graphics.DrawString("Saída", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(550, 85));
            e.Graphics.DrawString("Empresa", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(700, 85));

            IQueryable<Visitante> visitantes = null;
            string saida = "";
            try
            {
                var vDAO = new VisitanteDAO();
                visitantes = vDAO.get(v => v.entrada.Year.ToString() == cmbRelAno.SelectedItem.ToString() && v.entrada.Month.ToString() == cmbRelMes.SelectedItem.ToString());
            }
            catch (Exception)
            {
                mensagem("Erro ao gerar relatório");
            }
            foreach (Visitante v in visitantes)
            {
                if (v.saida == null)
                {
                    saida = "";
                }
                else
                {
                    saida = v.saida.Value.ToString("dd/mm/yyy hh:mm:ss");
                }
                e.Graphics.DrawString(v.nome, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(20, eixoX));
                e.Graphics.DrawString(v.rg, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(320, eixoX));
                e.Graphics.DrawString(v.entrada.ToString("dd/mm/yyy hh:mm:ss"), new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(400, eixoX));
                e.Graphics.DrawString(saida, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(550, eixoX));
                e.Graphics.DrawString(v.empresa, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(700, eixoX));
                eixoX += 15;
            }
        }

        private void relatorioFonecedores_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            {
                int eixoX = 105;
                string expirado;
                // titulo
                e.Graphics.DrawString("Relatório mensal de fornecedores", new Font("Arial", 12, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 30));
                //headers
                e.Graphics.DrawString("Nome", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(20, 85));
                e.Graphics.DrawString("RG", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(320, 85));
                e.Graphics.DrawString("Entrada", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(400, 85));
                e.Graphics.DrawString("Saída", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(550, 85));
                e.Graphics.DrawString("Empresa", new Font("Arial", 11, FontStyle.Bold), new SolidBrush(Color.Black), new Point(700, 85));

                IQueryable<Fornecedor> fornecedores = null;
                string saida = "";
                try
                {
                    var fDAO = new FornecedorDAO();
                    fornecedores = fDAO.get(f => f.entrada.Year.ToString() == cmbRelAno.SelectedItem.ToString() && f.entrada.Month.ToString() == cmbRelMes.SelectedItem.ToString());
                }
                catch (Exception)
                {
                    mensagem("Erro ao gerar relatório");
                }
                foreach (Fornecedor f in fornecedores)
                {
                    if (f.saida == null)
                    {
                        saida = "";
                    }
                    else
                    {
                        saida = f.saida.Value.ToString("dd/mm/yyy hh:mm:ss");
                    }
                    e.Graphics.DrawString(f.nome, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(20, eixoX));
                    e.Graphics.DrawString(f.rg, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(320, eixoX));
                    e.Graphics.DrawString(f.entrada.ToString("dd/mm/yyy hh:mm:ss"), new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(400, eixoX));
                    e.Graphics.DrawString(saida, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(550, eixoX));
                    e.Graphics.DrawString(f.empresa, new Font("Arial", 11, FontStyle.Regular), new SolidBrush(Color.Black), new Point(700, eixoX));
                    eixoX += 15;
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (combosRelatorioSelecionados())
            {
                printPreview.WindowState = FormWindowState.Maximized;
                //pré visualização do documento a imprimir
                relatorioFonecedores.DefaultPageSettings.Landscape = true;
                printPreview.Document = relatorioFonecedores;
                printPreview.ShowDialog();
            }
            else
            {
                return;
            }
        }
    }
}