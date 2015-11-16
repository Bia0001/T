CREATE DATABASE  IF NOT EXISTS `sistemaifsp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sistemaifsp`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemaifsp
-- ------------------------------------------------------
-- Server version	5.6.24-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__migrationhistory`
--

DROP TABLE IF EXISTS `__migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migrationhistory` (
  `MigrationId` varchar(100) NOT NULL,
  `ContextKey` varchar(200) NOT NULL,
  `Model` longblob NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`,`ContextKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__migrationhistory`
--

LOCK TABLES `__migrationhistory` WRITE;
/*!40000 ALTER TABLE `__migrationhistory` DISABLE KEYS */;
INSERT INTO `__migrationhistory` VALUES ('201511161737073_criacao','Sistema.Ifsp.DAL.Migrations.Configuration','�\0\0\0\0\0\0�]�n�:r��wh�U���g<�Ar`����,{|��έ!w�!j�WRv^-y��B����S�����떨\"��c�,�����s���u6{&e�����ɻ����b��O��m���������Og׫�����܇��2���?�z��bQ-�uR���eYT�c}�,֋dU,N߽�����BI�)�����6��5i�п�E�$�z�d7ŊdU����k��~O֤�$Kr>�K��>:��XmN�.~��.�4��#��|��yQ\'5m�/��]]��݆>H�o�B�=&YE���27e��i��b��I�E��5F��4�e�|~�Z�9峤_�=��ٯIE�B�\'����V��i1�-���5�ϖ�2)ؚiٿ�W�}t[R֯_�c�}��(p��\"���}����p:���Ͳ�!#�f��EI�JrR&5Y�&uMJ���+Ҳ(�D�w[m;��b�K\n���&y���O���9�9�}J_�j��o�����Q]n	�Hu��$�W���$�X������bD�{��yݩ�	y���c��\nu�ν+�\"��dAn�$�Ҋ�˹���Z�\"�\n���Ú��4@��ʖTyI]�;�,��<�O-�P�J��H�#��\0ias��T�E������ؖKZ��)�-)�H��j���&��؎%�Q�T�\\\'9���i�w�.�YQ���p`De�,F���D|;R�	:Zl�����Le��bM���)zAG\"uU5��c��[�n��\"K�i��N���P,E�%���%����2;Tײ.VL���m�ǯ%ɋ�H�>O ��\\�X7h�C&P�&K&`f9A�Lr��3\"�sJ���j��L.�*�?m*�0u�\'L�o�+��ƺ�+m�+��VI��9n��#tEg��ҵ�Ҭ�u��%ӥ�#��|���d\\N�KJMq�%�t�.$%�0N��H8_$�\n��{����$~� $x��:[�b�K(a�z�l|��ˢ(邮�^��OE��%�t����]��\\�*H �^��ݒ\nYoJRM1���p�v��A�Ppr\r��Y��u\n�l�%�8��o*�\r�<���K�u��˃��0�:���2�/:��k*��>�cŇN��B��	/��/ʚ���k_=��yL�\0X&��|*��<�?��`6���ű�M�3���K���^J��KخKqn�k�Xi._L�p��Wc��硝AI�w (h��w�M��j���y�I��O{i?�V��洏8mg����e��ƫ�����\n�~,\r��/���P�Hߓ\'�	r�����ʼ6Q�O�m /�%ʤ\r3�>�BnU�i�a�5��\n� c�K��^Z�{�E�$���.�%�8��m��M�:��=E�B���B�%�B��}�ܤ�l)���K��L	�V�C;{�ڶ{/��{��g���WZa	��v�o��qE�[��W(WHj�Z�l��Q��Զ�+$��y��-�58]��cS����~6Y&)�ba���ZS�Qc-��T/�P\Z]���d��e�2~|d~�������ޮ٥����\\}ʒ���dE��6�E/��\rY?��uAPB��ښ�}\'�ϕ�N����^6)W�T��}xA-�2m;�n�u^站.�w\\B����mV��V����?H�(�����d�4y������_���dv��N�\\&�2Y����#���-b�G�~1�ui.F�N3�#��������#\'��I�\'T(���&�k�i������d%b�/�YE٣&�)���q� i�R1�7;!��9��(SX1٩��W�aG����}��v/c���o�\"��+Hd��̲�[���ۀa��\r\n�ߢp�,�:�v�CvWiq�5_i��l=�@��S0ι���>�uݮ�9Ǡ[[-@&�ԫ�z{��_\rs>te;a��\'�>��9���y��ޛg�����ۯl�����S�-��!�}�n����/����3,���,�;\Z�f79��w<<�6I�1ܹ/���i>8��T�r�m\nߑz�ܭW\nR�g�W\\�HL�� ��\"k�DXd���g�E��L\\�DO2/��Z��)��EZ�~�H�b�DJ�-0%`��- �}hgM�v�?��F7f(����L1vq����<��*�vݘ%�H�3l �ȏ,3߯���EHZ/C�7<AťF��?��#�+�	1�;�\'��W��-愧3�.�aC�8�.�\n`ɜ���~e\'��:�ү���\r̖.fY�}��,%�-�J�n6t83LT�L����\'+c�5�Qy���ʾ�BɓHN{V�M�4�t��qǓ�u%J�<6s3t�{�<P�q<1��˲p7�ޑ̴�X��=�\Zٹ��S�ƫl�W��~��C�Q�>fC/��(@�r$4�1ި0�����A��9�v����Y�}�fXp7�b�R�8�}Ѧ�h{�A�s41�h1�z��|���ё����Q?���ښ}�5���.�u�F��]�����I�~v�l6t8fR��Ofw]���?��g8_w4Kn--�·��L���q��ȧ��ꫤ�v�	��\\��bj���\Z��,kk�S�}���g�B��0K�@q��\'�bs&��0:7#3kr�\'YRj�a\\�v��d��p!�N�B���Ƞe��������\'�fi�o�(��Om(�٫Yj�SkJ� %�M��	��t��)��셟������$�8���Alh��x�¨v)LXZݓ�B����Q8JT*�\'v����Q\n��l�\\�3�1(��0�ݩ=�V��b\0�e��Ư�Cs:cf,���ԜR�����=��\n�Ɗ�\r��b��$L:�\n�춍��#G3>a��,������-��`bw�O�@�ޏkK��\'���7T*vSM�G�����4^��5��.����ƶ�7n�Ƶ}da]��8�ʾ8<)�ilz.JǤ�*>V�^&�F�h��������So�{v����g4��QYc9�D���x#��٠�\\\',���(��p8��Kk�^z�[�Z�U�b���Aa|l1��.��f��#s\Z�+iX\"�g�n����=�����p3��Wݍ1S�#+�@2�N2�u/\\���8����Q7��f�{Z�. �u�|��l��o^QP��A����G7{�3�V�?;��Y�t��F�J��g1zV���6a�q/���gEj�ベ==\"�5�Κ�KZJZϷ�c|��z�gG�q�}ϊ�@b��JF^��.�{�y��`�\0z���i����$�*QY���8���9���f��C����T{i\r%Cy{V7�y�\n!1%��T���X���s$�g6���#�7cV���ݶH�S~��GTwʔ�t�TE����/��q��{�se�g){�����p-��y%G�U4�<�ܒc��`�1j��|�����k�/b\'�U�~����l������|\Z_F�6\n�l��a�e�X��0$՛:m^�Y�����\rv�8V����Wi��s�$dR;E�����@�A?���4�KS`�9|��#�ۋ��.u�Q\0�B@A�ghϰO��,�:�Q�m*;�˰a�i�j�?��,kF\0��T��k̓=,CD\n�C�\\b�(�K]b�!�.�N��60�]����d�zE��_ل���&�9�y�65�Q�����w�6	v�-v�\0���u(���\Z�����Ӂ74,�lC�p�8�P��c�N��F`#�Z��hd���PT�N�\05�xp�3K�,ƫZ3�xcONZ�މ\n�:\n²R��K60���\\��6�d\0s1xC�O��ٰ��KJ��z�+`G�E��ق�|��J��\0�ب\0�}�q�v��v�ؙܴ��tH�K� 	J�ni8j�\r�� q�@(�����paK��EN���ZP�ȩ.:���.S�(�r>�����|�Ń���@P�39j�������0�S&Z�\"��ц+�)��\\^b5@\n�����0@�2����\n��(,��@��$P���\"%Q�a������D�O`�eVm���Im�R��TŌ�]���\n�9]5�Lo^����4�Oڟ�YJ�z,q���#��o���|�����.�4������Z�j���Udjm����;��t���W�,�E-�D�$X�J����L��J�撚�n����J��L�g\rz��&o�����.캫 +�&��5�!�N�.�Z2cR?:]�1O��,c��x�6�-ɲ=jt>gM�	T�j���-�����-j=l/�ЇH��&yj�O��6eR�2��nI�h`����HZ#h#�Qfn��7N�Xy��m��mU[/\nfJ�r��r�?m� ?\"�QB?B}� ?\"��A�r�r�ay��e��L�:�S���Kr�\0Y�b� ߎ$&\n\nJ�C`z�YFo�m�T@�Hyl�&\0�#���	:?g�\0��5i�*�r&DMÝ\r+0�Fa)�L�O��\r�M��o~�D�������Ȳ�j?�\r^5E���t�r�G��(����1k��>�Ѕ��R6���7��6N�]D�p�P<�+-^�\"��� 1�AR0�L\n\'� &8�7���@;�ԤM.gZ�>H�	�Glڿ�]}���Y������J�FNScli��4F�v���s��QC�`��fm��Ρ�Jux�},ƒ%8S쮖��K�e���TsF�J�͙/��6j��.=��������\r������q���M��\r4^��39�j����\'\\8l�\Z���@�9�~��֞��\Z�f�gwfp&�c��\"0?��S{�y����]�kw�L��+? Lp+\Z��%6�[{��f_�LX���l�IO��7۬N7��_i�ON�KZ�x$OKz����D�b����N�K:s��<���ޖ)%�I2�3����kT1� ��\"�7�\\&-���6T*�c����h5���ax���,(�2G�<����9�&@���	�ݘ�g��	�r���%�=�� ����xQ^�Tm��jjX(��^#�a�e��5d��SM\0)�>�ȳ�~da_X�Y�nWK��&�I��8��͐��L�18�D9J����ihIt�\0�T�Bc�#���Uis�L��ف)�OK`�5\\N��� ���2�L�s&1�O�GӹI���t�����H���͙L�\\星ꎥn�48�i��A��s�\\6Si����S�4n��f��W)5���*��=����V�㑊��>VB��0��rbH%xrf�.�!�V��2�6$P�Q��nA����X&��^\Z)f�34��#��-�,\n�[�}z� ����g���1n�+�\r���m�usf,k|�㞘^�m�{�u4�&��j���~�ۘ\"����41F��Rr�/��HMf˺���L�e����j=�t䣠9�l�C\"�L�@�s�F�ȱnG7F�������Cp��#�Zrq��Àڑ\r��Q\";��N!M\09�zzB�7\rA�:��]�&k\0�Ѱ�K�V� ��-.T�	���=u���Zc����Í��Q�Vq��v����	wI�κ\rc����p	(d�z�=#pݝ��%�V�kO�z�\00<Ppͧ���c�6�_{%��P��\r�o���vh���N�5.߫H���q^�}<(��F���^�yQ�N�s=8������I�I �/�\ZΜ�;N����<:��\Z��xW��k��Rm�k�6�.o�\\�y	�_1\"�P>�HR.�S{�X?�AZ��}	էH^-�ÙJ�\"�-T�*u�XUt\'��=����hE�m8�D�}\nф�_J\rS+ʭ߁MFS:J\nf�{��ٷ����\n���=,�X�����[��{�ӽ��vn䪰�`�Xa��`�%4�[JA��*�J��!�4�_�Km�_C�%t�zX��6zxZ�᭹��u*s9�X͡�y��lMU{_DSw_J�����,�͌���7�n� ��&���ݒ1��;*\r�c���{Fl���-��fm�\"�S�\0r����Z�N�a���̗ʌ]~��f_ôz{5`��FR��ubŢ���re\'>a>4��րM.}�\"����q\\yv>ޓ���4��-*��is�U�H���;R�3���>\\��s�Kб�f�;���=d�^��CO�.[�e�[�Qȃd��, �`G#�&Oarq\ZI�1����v`u�>��D�k��ŷ�H���T1�S��|�Ȍv~)�BC��Pk�}t��H�>�t[.�害��T}�$`׌�f����P�*�v�p�%?�����(A,��8�l�8XȻR�q�#)\0�U��\"�W�_�7 ���䁇+h�������n�m x�=�(ܢw���0`�x�;,b{}^�k��U�{ߏvP_>���*���7�D���w�x�X���}E\"�^n\01o�0�1�PK$�K]����٢�I�пuQ&O�X��j��-�n��\Z����ҧ�����%�7���?�0D�E�\"�567����N.�:}L�5}���K���{�mi���Y}οl�Ͷ�,��C��\n��^T����|�e���B�@��67�|�ݦ�jh�\'�6&�D�_u��n��}z(�^䆄z�\rќ��z�Qb՗�.y&x��2�%vv�&Oe��z\Z���/��j������\0F\0','6.0.0-20911');
/*!40000 ALTER TABLE `__migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administradorsistema`
--

DROP TABLE IF EXISTS `administradorsistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administradorsistema` (
  `idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_AdministradorSistema_Funcionario_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administradorsistema`
--

LOCK TABLES `administradorsistema` WRITE;
/*!40000 ALTER TABLE `administradorsistema` DISABLE KEYS */;
INSERT INTO `administradorsistema` VALUES (6);
/*!40000 ALTER TABLE `administradorsistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `idPessoaFisica` int(11) NOT NULL,
  `prontuario_idProntuario` int(11) NOT NULL,
  `responsavel1` longtext NOT NULL,
  `responsavel2` longtext,
  `contato1` longtext NOT NULL,
  `contato2` longtext,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  KEY `IX_prontuario_idProntuario` (`prontuario_idProntuario`) USING HASH,
  CONSTRAINT `FK_Aluno_PessoaFisica_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`),
  CONSTRAINT `FK_Aluno_Prontuario_prontuario_idProntuario` FOREIGN KEY (`prontuario_idProntuario`) REFERENCES `prontuario` (`idProntuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,1,'Hugo Silva','Beatriz Souza','1993748392','1992480483');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistenteadministracao`
--

DROP TABLE IF EXISTS `assistenteadministracao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistenteadministracao` (
  `idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_AssistenteAdministracao_Funcionario_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistenteadministracao`
--

LOCK TABLES `assistenteadministracao` WRITE;
/*!40000 ALTER TABLE `assistenteadministracao` DISABLE KEYS */;
INSERT INTO `assistenteadministracao` VALUES (4);
/*!40000 ALTER TABLE `assistenteadministracao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistentealuno`
--

DROP TABLE IF EXISTS `assistentealuno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistentealuno` (
  `idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_AssistenteAluno_Funcionario_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistentealuno`
--

LOCK TABLES `assistentealuno` WRITE;
/*!40000 ALTER TABLE `assistentealuno` DISABLE KEYS */;
INSERT INTO `assistentealuno` VALUES (2);
/*!40000 ALTER TABLE `assistentealuno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assistentecoordenadoria`
--

DROP TABLE IF EXISTS `assistentecoordenadoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assistentecoordenadoria` (
  `idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_AssistenteCoordenadoria_Funcionario_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assistentecoordenadoria`
--

LOCK TABLES `assistentecoordenadoria` WRITE;
/*!40000 ALTER TABLE `assistentecoordenadoria` DISABLE KEYS */;
INSERT INTO `assistentecoordenadoria` VALUES (5);
/*!40000 ALTER TABLE `assistentecoordenadoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autenticacao`
--

DROP TABLE IF EXISTS `autenticacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autenticacao` (
  `idAutenticacao` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` longtext NOT NULL,
  `senha` longtext NOT NULL,
  `nivelAcesso` longtext NOT NULL,
  PRIMARY KEY (`idAutenticacao`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autenticacao`
--

LOCK TABLES `autenticacao` WRITE;
/*!40000 ALTER TABLE `autenticacao` DISABLE KEYS */;
INSERT INTO `autenticacao` VALUES (1,'ass','lk1y5y0FPVAfKUmWmEm5bA==','Assistência de Alunos'),(2,'por','fPQf+XHWJrhlUkcXRIwpig==','Portaria'),(3,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','Administração'),(4,'coo','A6b/DbVgu9vNTIbNlLNZcQ==','Coordenadoria'),(5,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','Administrador do Sistema');
/*!40000 ALTER TABLE `autenticacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia` (
  `idDia` int(11) NOT NULL AUTO_INCREMENT,
  `periodo` longtext,
  `pessoaFisica_idPessoaFisica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDia`),
  KEY `IX_pessoaFisica_idPessoaFisica` (`pessoaFisica_idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_Dia_PessoaFisica_pessoaFisica_idPessoaFisica` FOREIGN KEY (`pessoaFisica_idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` longtext,
  `rg` longtext,
  `entrada` datetime NOT NULL,
  `saida` datetime NOT NULL,
  `empresa` longtext,
  `motivo` longtext,
  PRIMARY KEY (`idFornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `idPessoaFisica` int(11) NOT NULL,
  `autenticacao_idAutenticacao` int(11) DEFAULT NULL,
  `prontuario_idProntuario` int(11) DEFAULT NULL,
  `area` longtext,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  KEY `IX_autenticacao_idAutenticacao` (`autenticacao_idAutenticacao`) USING HASH,
  KEY `IX_prontuario_idProntuario` (`prontuario_idProntuario`) USING HASH,
  CONSTRAINT `FK_Funcionario_Autenticacao_autenticacao_idAutenticacao` FOREIGN KEY (`autenticacao_idAutenticacao`) REFERENCES `autenticacao` (`idAutenticacao`),
  CONSTRAINT `FK_Funcionario_PessoaFisica_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`),
  CONSTRAINT `FK_Funcionario_Prontuario_prontuario_idProntuario` FOREIGN KEY (`prontuario_idProntuario`) REFERENCES `prontuario` (`idProntuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (2,1,2,'Assistentecia'),(4,3,3,'Administração'),(5,4,4,'Coordenação'),(6,5,5,'Administrador de Sistema');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permanenciaveiculo`
--

DROP TABLE IF EXISTS `permanenciaveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permanenciaveiculo` (
  `idPermanenciaVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` longtext,
  `rg` longtext,
  `prontuario` longtext,
  `telefone` longtext,
  `tipoSolicitante` longtext,
  `setor` longtext,
  `isDocente` longtext,
  `curso` longtext,
  `modulo` longtext,
  `turno` longtext,
  `anoLetivo` longtext,
  `marca` longtext,
  `modelo` longtext,
  `placa` longtext,
  `cor` longtext,
  `ano` int(11) NOT NULL,
  `servidorPublico1` longtext,
  `servidorPublico2` longtext,
  `servidorPublico3` longtext,
  `servidorPublico4` longtext,
  `prontuario1` longtext,
  `prontuario2` longtext,
  `prontuario3` longtext,
  `prontuario4` longtext,
  `dataEntrada` datetime NOT NULL,
  `dataSaida` datetime DEFAULT NULL,
  `funcionario_idPessoaFisica` int(11) DEFAULT NULL,
  `AssistenteAdministracao_idPessoaFisica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPermanenciaVeiculo`),
  KEY `IX_funcionario_idPessoaFisica` (`funcionario_idPessoaFisica`) USING HASH,
  KEY `IX_AssistenteAdministracao_idPessoaFisica` (`AssistenteAdministracao_idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_0961ae5ed448437196a619ae1372efe9` FOREIGN KEY (`funcionario_idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`),
  CONSTRAINT `FK_4cb7e0ffa7974405a9cdb16a0ce3a43c` FOREIGN KEY (`AssistenteAdministracao_idPessoaFisica`) REFERENCES `assistenteadministracao` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permanenciaveiculo`
--

LOCK TABLES `permanenciaveiculo` WRITE;
/*!40000 ALTER TABLE `permanenciaveiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `permanenciaveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoafisica`
--

DROP TABLE IF EXISTS `pessoafisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoafisica` (
  `idPessoaFisica` int(11) NOT NULL AUTO_INCREMENT,
  `nome` longtext NOT NULL,
  `celular` longtext,
  `telefone` longtext,
  `sexo` longtext NOT NULL,
  `nascimento` datetime NOT NULL,
  `rg` longtext NOT NULL,
  PRIMARY KEY (`idPessoaFisica`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoafisica`
--

LOCK TABLES `pessoafisica` WRITE;
/*!40000 ALTER TABLE `pessoafisica` DISABLE KEYS */;
INSERT INTO `pessoafisica` VALUES (1,'Willian Costa','1999748362','19966338844','M','1992-03-04 00:00:00','507382748'),(2,'Lucia Almeida Soares','199283723','34920493','M','1984-04-04 00:00:00','39846263'),(3,'Samuel Oliveira da Silva','1900000000','1934910000','M','1976-04-04 00:00:00','490008888'),(4,'Michele Arruda','00000000000','1934927549','F','1984-04-04 00:00:00','545335653'),(5,'Grazy','00000000000','1934927549','F','1984-04-04 00:00:00','545332653'),(6,'Lucas Bonetti','0000000','193427549','M','1984-04-04 00:00:00','54532653');
/*!40000 ALTER TABLE `pessoafisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porteiro`
--

DROP TABLE IF EXISTS `porteiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porteiro` (
  `idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_Porteiro_Terceirizado_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `terceirizado` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porteiro`
--

LOCK TABLES `porteiro` WRITE;
/*!40000 ALTER TABLE `porteiro` DISABLE KEYS */;
INSERT INTO `porteiro` VALUES (3);
/*!40000 ALTER TABLE `porteiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prontuario`
--

DROP TABLE IF EXISTS `prontuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prontuario` (
  `idProntuario` int(11) NOT NULL AUTO_INCREMENT,
  `prontuario` longtext NOT NULL,
  PRIMARY KEY (`idProntuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prontuario`
--

LOCK TABLES `prontuario` WRITE;
/*!40000 ALTER TABLE `prontuario` DISABLE KEYS */;
INSERT INTO `prontuario` VALUES (1,'000'),(2,'111'),(3,'222'),(4,'333'),(5,'444');
/*!40000 ALTER TABLE `prontuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacao`
--

DROP TABLE IF EXISTS `solicitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitacao` (
  `idSolicitacao` int(11) NOT NULL AUTO_INCREMENT,
  `abertura` datetime NOT NULL,
  `motivo` longtext NOT NULL,
  `aluno_idPessoaFisica` int(11) NOT NULL,
  `assistenteAluno_idPessoaFisica` int(11) NOT NULL,
  PRIMARY KEY (`idSolicitacao`),
  KEY `IX_aluno_idPessoaFisica` (`aluno_idPessoaFisica`) USING HASH,
  KEY `IX_assistenteAluno_idPessoaFisica` (`assistenteAluno_idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_Solicitacao_Aluno_aluno_idPessoaFisica` FOREIGN KEY (`aluno_idPessoaFisica`) REFERENCES `aluno` (`idPessoaFisica`),
  CONSTRAINT `FK_e6592d12fad44b5fb01ac898f95cd494` FOREIGN KEY (`assistenteAluno_idPessoaFisica`) REFERENCES `funcionario` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao`
--

LOCK TABLES `solicitacao` WRITE;
/*!40000 ALTER TABLE `solicitacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacaoentrada`
--

DROP TABLE IF EXISTS `solicitacaoentrada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitacaoentrada` (
  `idSolicitacao` int(11) NOT NULL,
  PRIMARY KEY (`idSolicitacao`),
  KEY `IX_idSolicitacao` (`idSolicitacao`) USING HASH,
  CONSTRAINT `FK_SolicitacaoEntrada_Solicitacao_idSolicitacao` FOREIGN KEY (`idSolicitacao`) REFERENCES `solicitacao` (`idSolicitacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacaoentrada`
--

LOCK TABLES `solicitacaoentrada` WRITE;
/*!40000 ALTER TABLE `solicitacaoentrada` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitacaoentrada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacaosaida`
--

DROP TABLE IF EXISTS `solicitacaosaida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solicitacaosaida` (
  `idSolicitacao` int(11) NOT NULL,
  `porteiro_idPessoaFisica` int(11) DEFAULT NULL,
  `saidaSupervisionada` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `encerramento` datetime DEFAULT NULL,
  PRIMARY KEY (`idSolicitacao`),
  KEY `IX_idSolicitacao` (`idSolicitacao`) USING HASH,
  KEY `IX_porteiro_idPessoaFisica` (`porteiro_idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_SolicitacaoSaida_PessoaFisica_porteiro_idPessoaFisica` FOREIGN KEY (`porteiro_idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`),
  CONSTRAINT `FK_SolicitacaoSaida_Solicitacao_idSolicitacao` FOREIGN KEY (`idSolicitacao`) REFERENCES `solicitacao` (`idSolicitacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacaosaida`
--

LOCK TABLES `solicitacaosaida` WRITE;
/*!40000 ALTER TABLE `solicitacaosaida` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitacaosaida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terceirizado`
--

DROP TABLE IF EXISTS `terceirizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terceirizado` (
  `idPessoaFisica` int(11) NOT NULL,
  `autenticacao_idAutenticacao` int(11) DEFAULT NULL,
  `area` longtext,
  `empresa` longtext,
  PRIMARY KEY (`idPessoaFisica`),
  KEY `IX_idPessoaFisica` (`idPessoaFisica`) USING HASH,
  KEY `IX_autenticacao_idAutenticacao` (`autenticacao_idAutenticacao`) USING HASH,
  CONSTRAINT `FK_Terceirizado_Autenticacao_autenticacao_idAutenticacao` FOREIGN KEY (`autenticacao_idAutenticacao`) REFERENCES `autenticacao` (`idAutenticacao`),
  CONSTRAINT `FK_Terceirizado_PessoaFisica_idPessoaFisica` FOREIGN KEY (`idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terceirizado`
--

LOCK TABLES `terceirizado` WRITE;
/*!40000 ALTER TABLE `terceirizado` DISABLE KEYS */;
INSERT INTO `terceirizado` VALUES (3,2,'Portaria','SA Vigilantes e Porteiros');
/*!40000 ALTER TABLE `terceirizado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vaga`
--

DROP TABLE IF EXISTS `vaga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vaga` (
  `idVaga` int(11) NOT NULL AUTO_INCREMENT,
  `codigoPlaca` longtext NOT NULL,
  `isDocente` tinyint(1) NOT NULL,
  `domingo_idDia` int(11) DEFAULT NULL,
  `pessoaFisica_idPessoaFisica` int(11) DEFAULT NULL,
  `quarta_feira_idDia` int(11) DEFAULT NULL,
  `quinta_feira_idDia` int(11) DEFAULT NULL,
  `sabado_idDia` int(11) DEFAULT NULL,
  `segunda_feira_idDia` int(11) DEFAULT NULL,
  `sexta_feira_idDia` int(11) DEFAULT NULL,
  `terca_feira_idDia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idVaga`),
  KEY `IX_domingo_idDia` (`domingo_idDia`) USING HASH,
  KEY `IX_pessoaFisica_idPessoaFisica` (`pessoaFisica_idPessoaFisica`) USING HASH,
  KEY `IX_quarta_feira_idDia` (`quarta_feira_idDia`) USING HASH,
  KEY `IX_quinta_feira_idDia` (`quinta_feira_idDia`) USING HASH,
  KEY `IX_sabado_idDia` (`sabado_idDia`) USING HASH,
  KEY `IX_segunda_feira_idDia` (`segunda_feira_idDia`) USING HASH,
  KEY `IX_sexta_feira_idDia` (`sexta_feira_idDia`) USING HASH,
  KEY `IX_terca_feira_idDia` (`terca_feira_idDia`) USING HASH,
  CONSTRAINT `FK_Vaga_Dia_domingo_idDia` FOREIGN KEY (`domingo_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_quarta_feira_idDia` FOREIGN KEY (`quarta_feira_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_quinta_feira_idDia` FOREIGN KEY (`quinta_feira_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_sabado_idDia` FOREIGN KEY (`sabado_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_segunda_feira_idDia` FOREIGN KEY (`segunda_feira_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_sexta_feira_idDia` FOREIGN KEY (`sexta_feira_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_Dia_terca_feira_idDia` FOREIGN KEY (`terca_feira_idDia`) REFERENCES `dia` (`idDia`),
  CONSTRAINT `FK_Vaga_PessoaFisica_pessoaFisica_idPessoaFisica` FOREIGN KEY (`pessoaFisica_idPessoaFisica`) REFERENCES `pessoafisica` (`idPessoaFisica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vaga`
--

LOCK TABLES `vaga` WRITE;
/*!40000 ALTER TABLE `vaga` DISABLE KEYS */;
/*!40000 ALTER TABLE `vaga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitante`
--

DROP TABLE IF EXISTS `visitante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitante` (
  `idVisitante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` longtext,
  `rg` longtext,
  `entrada` datetime NOT NULL,
  `saida` datetime DEFAULT NULL,
  `empresa` longtext,
  `motivo` longtext,
  PRIMARY KEY (`idVisitante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitante`
--

LOCK TABLES `visitante` WRITE;
/*!40000 ALTER TABLE `visitante` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-16 15:46:10
