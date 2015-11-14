namespace Sistema.Ifsp.DAL.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class alterandopessoafisica : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PessoaFisica", "sexo", c => c.String(nullable: false, unicode: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PessoaFisica", "sexo");
        }
    }
}
