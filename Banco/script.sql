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
INSERT INTO `__migrationhistory` VALUES ('201511102328412_criando-database','Sistema.Ifsp.DAL.Migrations.Configuration','�\0\0\0\0\0\0�][o�:r~����d�u�x&����_���1��y54ݴG�Z�Ԇ��������.-�R�;��μuKT�U��H��������e�͞IY�E�i����|F�e�J�O�m���������OgW����ۮ܇��2�>����ŢZ� �:Y�˲����dY�ɪX��{�������SZ����m^�k���/�|I6�6�n�ɪ�9}s�R����I�I����.�j����c�9�<�m>;�҄��d��Y��E�Դ����\"wuY�Ow� ��_7��{L�����e,n�Ȼӆ����� ����+*���i^����j��ϒ~U��g�&i\nu��\\o�%�>)�b>[��mkB�-�eR�5Ӳ%����,6��_�����t�Q�j�,D\"	�����y��t>�}�e����aTxW%�O��2���6�kRRM}^��E�%B��jۉ�[]RX�g7��o$�|�ӟ��u�BV�\'}#����Џ�rK�F�+�H�#���<}&���TUt��#ʔأM��N\rN�c�w���T��Hu�]	��6/$r�\0%�N+�/�J�Jj}��J(��Ok���\0��+[R�%u�6��#��{�>��V@�+��\"Տt����[�,�_�l)���]�-����)p��O�vEpU5�`^�qpl�Ũh*R����z�4�I�۬�@q܎�r	֬QP�_\rډ��ӝ��l�T������l��T�;/�$��)��WtRWU��<y|��馸+�t��	���*B�����,�d\n~��2ȼP]˺X1=6�e��$/~#u�<�ؒrbŠU�@9�,�����3ɵ��Έ��)]��n�S�dZiUa�	�Pᇩ+�8�`\Z_}c]�57�_ic]���J��q�d5�K:�O������]�B�LY�\ZaKq��:�]���o�@�(J:�o�������(s�$�����a��~�s�cW	��+��[R!�MI�)�q&��}��X�>Ť$�[an0�W|���be$������������%�\r�S`�ء�Ppr%���m�u�l�%�D��{�ZR#�ׅ�]2�ي�\'�ߥe��t�rp�s����J��C�4ZH2{xI?�W�5%++�׾zR��u:oڳ�\'��T�3�N�lK��X�)��^��B\01#ه��^�Z���\"Wc�F������\r�z�7���z��������~Uq��4�&r�Y��ZP�$��B���m5�mN��c�vݒ/IY&�`k<W��\ZN�P�� ��B*(	%���-yr���_:X��k��T���[�L��2�(�VŚ6F\\#ه��2���+��b�[n`M�K	�b_�Jض��tYW\'���(ZȗZȾ�[ȕ�oa����-%�p|���)a��*���ް���������Y��<m�VXB1�]�[�y\\�V����Z��V\'[��u�~.���\n	�c���cx\rN�����|�04��M5IʴXE؛v�֔�X��$�K��%�F��69>w������N��܌خ٥����\\]g�S�T�\"e�JŢ��膬���uAPB��ښ�}\'�ϕ�N����^6)W�T��}xN-�2m;��:��:���L�;.!�e��6��M+��O�?H�(����7�ِ�)���V�K~I2R����;�s�T�d,�NZ�d���[Ǹv�hg��r`���]�cQ|ޝ���h,`t\rcI�����KM��ʈs\'G�A��m��k���ǚl��Ǽ��r��L��;��W�*F����̺ac/�]�6bs]�$��\r�!\nW��\Z0�9rA���v\'�\"~`֚\r.��UZ%bMŗ�c�%�9��\"�S�8�_�Z;[��u�os�A��Z��L\Z�W��dw�\Z���vaO�Agrl�s�eM� _�7π{:6Ͻ�Z�0ч�ɧ����!�W�v�������b�e���Ͳ욏�0�W6t�{2y��1���.���i>x���T�r�m\nߑz��ڭW\nR�g�{\r\\�HL��XS��\"e�Dp����ǊE��LH�DO�/��Z��)�SEZ�~�H���DJ�-0%`��- �}h�H�v���Fw(����L1vq��K�\\��*�vݘ%��J�3l �C?��\\ݚ��MN�����4ԣ���Y�fN;�B�NM�(o���K�}M��6nO_AMءAʲ�}���Pi�ݟ�p��ʢ�xF\r}�>�\Z:C�&e��F6*���W^��sɉ��J��|���M?�!��x�#]dA���f�N��n���ی\'>bT����<�V?�t��S#;Wvuj�8@\r]����C�|�+\"\n�j�����>��5�:�\0p�F�.|ar�j����X���Ǹ���qj�?�)�&�-�Q\'���A\0��4�\\p3�>�R5s�Z�yQ�������٢�0�?8[ ���n�͆�Lj�����K}��;�L���bY	���5�E�<�m��]�봬�ˤ�v�	z�X��bj7�\Z��)kk���}���g�B��0��@q��5e�9��rK����59Ó,)5�\0.�l��M�t�Z\'\nd!I�Odв�DF�wq��Q��4�7NOQ��6�,�,��5�S�ئ��d�\r6��)�7��n;�M�3�\'(>#���4��Rp�������$�8���Alh��x�¨v�IXZݓ6˚���,-Ӌ�;)���X`��A���{hNg��\Z�Z��$��8c�[L��)��A���tq#�~4}�0�Yc��?��\"�&V��0ǲ��qeh�n���f��P����s\\�|/sU����pKnxhN��W���?����%A�ye_���6=�c�w+z/S �]4�@Eq���c��7͝\"����3��鉨���$�d} ^��\\�l�_����A�5m/��i-G�*Q1�4�0>���wtp���9���,��3�w�kpr�YLǻ3���؂��v��d b\'��j�{t�l\\��j�s����N3�|�:S>UR�r�ʷL((��QI���=}�T+鎟�b��d:~��g%��=+�q�8���v���\"����̞�	lgM��-%�WQ�1>KbOW�#�܅��gEB �G_%#��P�=������{v0}�\r��kcB,]\\mh�W���<�|�P�Q��$s������zi}������=\n�ͼD����`�d�|�,����9��3��M�̏웃1��R�c[��I����#�;��C	:⨢��;�\\̋���=鹍��ҳ�o�H��W��ۃ������*\ZC�Pnɱ{x0�O��u>��IĿUt��d���#�*z?g�o}6�G��}@>����\n�;6�Ă��ݲl,wr��M�6�֎�C��@j�;o+[zQ䫴M��jR�IV�\"�k[���ؼ��N�~?	P����\0j�j���o�����o7Iz��S�r��YDj�% 0V*l���E^X�T���(̬�����p��>	�#\Z�թ-�nS���\n�)��	�T�M�q�N�*�(�7��R���]w�-�\r\0���FB�[z��|h��������}��w�\'U	�P�8�����z�b���v�F-r8�L\0�$��δ�G�Ϝ�d�=9��ڷ/6��\n²��K60��E��6ݶ\0s1xC�O������J���+`G�E��ق�|��J��\0�ب\0�}�q�v̀u�ؙܴ��tH�K� 	J��ni8j�\r�.� q�@(�����paK��EN7��ZP�ȩ�.:���.s�(�r>������|깃���@P�3�i�������0��&Z�\"��ц+�)ӟ\\^b5@J�����0@�2&���\n��(,��@�?$P���\"%���v�����T�O��e�l���l�R��%��]���\n�9]5�o^����4�OڟYJ�z,q���#����H�i�o\'��γ4��4���+�j���Ud�d.��s%��]�^�꯯����i#��������gE��$۴&2$^����>���æ\\�(�������ے,�s��|6Q�V��/���}1E�zwY��s)j!�2���s�xR�����-w�fKq+�D�|��U1�*�5a��Y{1�������L��E��2�`��)M��Hŏ\\�Iŏs�ʏP�Gŏ�.�����D*~D�,*�<uiT�C���Q�T�?蒜7@փ��?ŷ#�YS������p��[t6/J(R�۰�P�Hq�P��ϙ�(�t�����	����x�T&�3ŕ�3��7?�!Q�X�aш�p��w���������\"Wu��t��#bwL^T�zݘ��u�#�lM)�H�3���T�\08�w�ep�ԯ���^���ɇb�a�A��L\n�� &o�;㷃��@��Ԥ�$gZ�nC�	��kڿ��}�������k�J�FN�ali�|\ZF�v���s��QC�`���������JuD�},Ǝ�:S�Ĉ�K�y��TsF��/�͙/���T���<����z�N�ݽz���õzq����v�\r4^��39�M����58l�\Z���@�9�]y����֞��\n�»gwfp&��ه�\"0?�N-{�y�t��]�^w���+? L)\Zy�&��[>ޏ�MR���w��en�Y�nZ��R�NN�(�������5O�q�sR6�<�.��6+�Pޖ)%�I2\r��w��Q�P���lH�xJpq���=���\0����.��(g�Aa7�>ف�{«\\�\'�2����q���/�� ��[�\Zʅh�d���4��>։{&\0��fk�9F?ʰ/��/f��%������qqgi���L{08�$\"J���݉nIt�\0�T�+c�#�0�Ui�L��ف)�OK`�5\\���� ��Ͳ�L�s&i�O�GӹI\n��t������H����L�\\V��ꎥn�!�i��A��s�<Si��p�S�4n��c��W4��=\\����]L<�x|��O��R���\0}G�Tܦ�X�ĐJ��\r��	����+��\0�P~f�eTi�\"���򦊉����C0�F���\r��H`s�0���Vy�M4Ƞ��{�\"�c�8W<��z�B�1�n��b�o��c���܆)��]�a0iR��.��)R����@cd{/%��_���dv��۸���Z&+�@��LG>\n�����?�Q�!�2P-�(9����¨Qq�Bq*G�xг\rmzkP;��>\0b5�ّ	 �WCO(�!�P�!C����d\r�8�q)����_�Ņ��b�#��޼�N�y�Sk���v�\r0J��*�3j�@PB�.��Y��a,C��4��\\�����} ��c�Ń�L��)\0�CW|2���:�l���ו�0\0��ڀi��]k�6�p�X�j�4��o\Zg���ǃ��n����&�w5�H2wP�L�\"��	8�E@��`��WÙbpM�]�i�����;��L ���=����Pm�{2$�Ϸ�����A��|*��\\�����~6ׯT/��O�fX��3�RE�[�&U���.�N��{s��T�6�h��	�)�\Z:&��[;���&ߓ�:�d\r�oA�t=�ח{*X�`I]+:��\\m���{�#����Ua%�ʱ����8Kh������UT/�T7C(�i�N�����*�K��07�m��\n���[s;9��T�r(���C9����������P3a�}C\0\'�ҕ�m��2��[�c�pǟ�8�|��4I5xᰦ�d5�*�2q���M�0��/T�8�H�\09�3(6o8�*�/©\n�C��,\r����,���mǕg���威�ѩMsB=�ޢ����X��Z����8c؁��elw!=�t^�����R�x�φ2k/Z����-�j�-��A��sH\r�@�3o����P����h$�#�S@�\r����{������#A�v8PO�~Ѓ3������V�K�C����A��gG 	�?	l���΂RwP����]3\"����!AE>-�k��3�)�5�]�� 1�n��p�Xn���D�GR\0�u (B�`���f@�C�WЦHKA���)R�\\�0�7�d{*Q���B{���@��X,bZ^��+�hL��ߏvP_>����\'����D���w�@�X��67E\"��e\01o�0|ϽkN\"���Cl���l�m��ߺ(�\'rS�HV�O�_�ys�E��T��H���ɒ�e�|��]��Т]�6�R\'͵��e�>&˚�^�6͟�oI��E�����s�e[o�5e���g��0��<U�g��g_6Ϳ*��isȗ��m���v_�� $������F�us����@��\"7$ԋoU�\'�MF�U_���m�ː���e�<�ɺ�i��ӿ~��˟��L2+<\0','6.0.0-20911'),('201511122328075_alterando-pessoafisica','Sistema.Ifsp.DAL.Migrations.Configuration','�\0\0\0\0\0\0�][o�:r~����d�u�x&����_���1��y54ݴG�Z�Ԇ��������.-�R�;��μuKT�U��H��������e�͞IY�E�i����|F�e�J�O�m���������OgW����ۮ܇��2�>����ŢZ� �:Y�˲����dY�ɪX��{�������SZ����m^�k���/�|I6�6�n�ɪ�9}s�R����I�I����.�j����c�9�<�m>;�҄��d��Y��E�Դ����\"wuY�Ow� ��_7��{L�����e,n�Ȼӆ����� ����+*���i^����j��ϒ~U��g�&i\nu��\\o�%�>)�b>[��mkB�-�eR�5Ӳ%����,6��_�����t�Q�j�,D\"	�����y��t>�}�e����aTxW%�O��2���6�kRRM}^��E�%B��jۉ�[]RX�g7��o$�|�ӟ��u�BV�\'}#����Џ�rK�F�+�H�#���<}&���TUt��#ʔأM��N\rN�c�w���T��Hu�]	��6/$r�\0%�N+�/�J�Jj}��J(��Ok���\0��+[R�%u�6��#��{�>��V@�+��\"Տt����[�,�_�l)���]�-����)p��O�vEpU5�`^�qpl�Ũh*R����z�4�I�۬�@q܎�r	֬QP�_\rډ��ӝ��l�T������l��T�;/�$��)��WtRWU��<y|��馸+�t��	���*B�����,�d\n~��2ȼP]˺X1=6�e��$/~#u�<�ؒrbŠU�@9�,�����3ɵ��Έ��)]��n�S�dZiUa�	�Pᇩ+�8�`\Z_}c]�57�_ic]���J��q�d5�K:�O������]�B�LY�\ZaKq��:�]���o�@�(J:�o�������(s�$�����a��~�s�cW	��+��[R!�MI�)�q&��}��X�>Ť$�[an0�W|���be$������������%�\r�S`�ء�Ppr%���m�u�l�%�D��{*򲇭�<�����u�=\Z��l\0����2�o:W:8�=� �>6��C��dl�~��(kJVV0�}�Tx�au`	8�l��,v��ٖ��`3]�8���\0bF�}���K	�r	۹L\"�u��#�勩.���o��� �<�3(��-�Z�n�i�dM��>���\"Ir���g�j�uۜ�Ǡ�j)_��L���x�<X=5�Z�>��A0�TPJz�[��8An�t���wS��&��\r�+`�2i�͸��[k�xq�d�#�������KDn��5�/%��}	7�+a�¿��d�<<Ҟ�h!_Jh!�n!W¾�in�B�����%�B��m��{;{�ڶ{/��{��g���WZa	��v�o��qE�[��W(WHj�Z�l��Q��Զ�+$��y��-�58]��cS����~6Y�&)�baG��ZS�Qc-��T/�P\Z]����d��e�2~|d~���\'��rd�f�j���su�%OSɊ��+m�^����NJ�A	}�kk����?W�_:���k>x٤\\�S��G��9�$˴�\\l$9����y��f���q	�/�o�Y�nZa�~��AbDAt��e���6O��\\�Z_�K����Η����Z&+�`�6p�b$��Ŏ>Ƶ��>�ݕ�i�%���(�]�����Gc��vK�M<$��\\j��?VF�;9�`:�n�0�P\\���@p/>�d�>�e7��~7`\n���a��\nW1��4��d�\r{1�*o����:� �7l�Q���րȋ\n���;I���lp9��*k*�d[�.�͹G�؞rH�9�*�B��:��s�s�g��g�H�\n��\'���0�V��{2:�c+�s/k����y�ӱy���ʆ�>lO>�wt9?��e�Sܗ_Џ��3,�~vo�e�|l�Yo��q��ޓa�����\'v�OO������b��nS���;��n�R�j>�k�zFb���F�J��\"$:�KD��?�,�}d�%z�3r�ءh�\"*V�U����*XK���S\"� ��R\0Bڇ���jǍ\0�nt����HJ�g�c������9� �raAl׍Yb�\\(<�°9j$��խ����D�렾�LC=:?l ����i��tA�֩��~Pq���������+�	;�\"HY���/���\"-��3���XYT\ZϨ�o�a��]Cgh<ä����F�\0�v����yN\"91�T)7�o�һ�\'3ēObr��,(������p��C�@}����G��\"�=�z�\'��g`��wrjd�ʮN�\Z��Ԛ�}h�{ED��C\r�֢\0=�����բ\"�����Q\0�H\"؅�\"�CnR��Ԛa�3\Z�U>0�w��:N��=�����<�D5s�:@��Fb�nF�G]�fNUk�!/�;��`��q:�;[ty��g$��M����I��?��uٰ/�xg�z��X,+ \r��ڡ��(�\'\"�m��+r��U}���n4A��5PL�&�Ux>em��������[H~��(��,6��Zn	�s32�&Sy�%�&�E�m׹Iv�B�D�,$���Z����.�P0�|�b�&�Ɖ�)J�Ԇ�[��6>��t\nR�49�̼�&�2��Fz�ڍb\'�){��������Q\n�s�����/�G��:�\r͵OT�.1	K�{r@�fYs�6��ezqw\'�XZ��l����v��وXB�SsJ]�!�J��B*L� N6�s��Ǔ0�x:(8��6.p���z`�So,������[d{���h�{?�-�V��΢߼D��j2Q~�˜���e���RQ.Pb�\rmlk{o\\�G֕�܈3�싃��2����tL���cE�e�����+�(nzx��>����ZZzFs?=�5��D����k�\r��u��+��R���#(������$�5��R%*ƬH��s��bn&�=2���6�%�{f!��VN��#���x�7#[p����1�=��$C�$�_��u��Q\\��a.u��iF�K���[gʧJ�V._�v��?*)t���1�j%��S���L��>`��$9~��g%?��	��^DU��?>���#r���	������K*>�gI��~v���PQ����@$��d�U�B�G�P�w�����a|mL����\rM�������cC*�c�en0<=T �Z/ 1���P\"1��Gau����S�L�,�O���>3G�f3<�ɗ�1�}s0f�YJ�l�49Ͳ���pDu\"y(A�$UT������yw��\'=�Qv^z�2�\Z��\n�r{t�W2p�UEc�=�-9vF��[�·�1����n8�\r�\"vhXE��l�����8^���ua�\\a���&Yv&\\���NCR��Ӧ�ڑuhp�m�`�ceK/�|��	;>WM�!M��PĈok0����X����\'ʵ?@@�X\r^p����!v����&Io��T�?�#�D@ͺ�JŃ-8���K���:���PP����\'�wD�:9�Q�m�Q]�}C�6�W6���i5��i����4v@23�뮴ž�04[I�Y`K/���b�`W�1�а ��A�. 0�,a\n����y#���Xl�0_�nѨE��	���d<���z�㙓�l��\'�R����~|@AX���b����ȸ٦��c.o�)�4[�cA��>@	P�$w��(B�6[p��\\��C�v@��4�Ю�9�;��>G�I|i$AI��-\rG-����$n�6��.li?��	�|��P\n99ہ�E\'�0p��~�eW�\"|�7wp�tO^w��P1\n|n<-\"��^��r�y��#&P���D�^�@�b>�p��\0#�\n��K��H�x�PѰ(\\�EP��>@�*��%(@�ȃ��}=P���b�!Ю2��R�)!�\\��|�̓�\\�>=��#�+2�Q!<��&?����߳���I��\"KI^�%n�<}$U}_��?����O��y�&U�(�>�%Y�U�ʀܗ��x��3����x7�W�,�E-�D�����Ko�F2�[�-�yg��ϊ��I�iMdH݄�1��}<f�G�K������#����F\\�%Y��7ګ�-	7��Vm��`�\'�1��z�Z�s)�!l�44�Z���b�MBG�L���AR��#!|*�V�(�b�ľ��w��pFV^��G[ob[��˄����/�l,��O��ŏs8ˏP��ŏ�.����l,~D�T,�<u�X�C��\'c�T�?蒜7@փ���ŷ#��W������p��[t6�J(R�۰)U�Hq�T��ϙ�*�t����	����x�|(�3�͵3��7?�!Q�X�aш�p^�w������ƙ�\"Wu��t��#bẁT�zݘ���u�#�\"uM)�HvV�����\08�wå��ԯ���^�����s�a�A��L��� &�8�����@��Ԥ�(gZ��E�	��kڿ�\r}����%�k�J�F��ali��F�v���s��QC�`�����&��Ju��},���:S��Ո�K�M}��TsF��1�͙/���T�[�<����N���~�[���~q���5{�\r4^��39������F8l�\Z���@�9�]y��֞��\nJ�gwfp&�އ�\"0?��>{�y����]�_w�4��+? L*\Zy�f��[>^ӎMR���Wǣen�Y�nZ��R�NN�[,�������5O�q�sR6�<�.��6+��Xޖ)%�I2\r��w��Q�P���lH�xJpq���=}��\0���@��(��Aa7�Oف�{«\\�\'�2����q�\\#/�; �&m�\Zʅh�d���4�[�>��&\0���k�9F?ʰ/��/f��%������qq�z���̝08�L$J���݉nIt�\0�T�-c�#79�Ui��L��ف)�OK`�5\\Ґ�� ���R�L�s&��O�GӹI��t�\'����H��%&�L�\\j��ꎥn�<#�i��A��s�d!Si�M��S�4n��c���!4��=\\����]L<�x|��O��R���\0}G�T\\��X�ĐJ��\r��	����+��\0�P~f�eTi�k&���򺋉����C0�F���\r��H`s�0���Vy)N4Ƞ��{�\"�c�8W<��z�B�1�n��b�o��c���܆)����a0iR��.��)R����@cd{/e/��_���dv��۸���Z&+�@��LG>\n�����?�R�!�2P-�(9����¨Qq�Bq*G�xг\rmzkP;��>\0b5�ّ	 �WCO(�!�P�!C����d\r�8�q)����_�Ņ��v�#��޼�N�y�Sk���v�R0J��*�3j�@PB�n��Y��a,C��4��\\�����} ��c�Ń�L��)\0�CW|2���:�l���w��0\0��ڀi���-k�6�p�X�j�4��o\Zg��ǃ��n����&�w5�H2Y��L�\"��	8�mB��`��WÙbpM��#�i�����;��L ���=����Pm�{2$�Ϸ�����A��|*��\\�����~6ׯT/��O�fX��3�RE�[�&U���.�N��{s��T�6�h��	�)�\Z:&��[;���&ߓ�:�d\r�oA�t=�ח{*X�`I]+:��\\m���{�#����Ua%�ʱ����8Kh������UT/�T7C(�i�N�����*�K��07�m��\n���[s;9��T�r(���C9����������P3�}C\0\'�ҕ�m��2��[�c�pQ��8�|��4I5xᰦ�d5�*�2q���M�0��/T�8�H�\09�3(6o8�*�/©\n�C��0\r����,���mǕg���\r���ѩMsB=�ޢ����X��Z����8c؁��elw�=�t^����/d�x�φ2k/Z����-�k�-��A��sH\r�@�3o����P����h$�#�S@�\r����{������#A�v8PO�~Ѓ3������V�K�C����A��gG 	�?	l���΂RwP����]3\"����!AE>-�k��3�)�5�]�� 1�n��p�Xn���D�GR\0�u (B�`���f@�C�WЦHKA���)R�\\�0�7�d{*Q���B{���@��X,bZ^��+�hL��ߏvP_>����\'����D���w�@�X��67E\"��e\01o�0|ϽkN\"���Cl���l�m��ߺ(�\'rS�HV�O�_�ys�E��T��H���ɒ�e�|��]��Т]�6�R\'͵��e�>&˚�^�6͟�oI��E�����s�e[o�5e���g��0��<U�g��g_6Ϳ*��isȗ��m���v_�� $������F�us����@��\"7$ԋoU�\'�MF�U_���m�ː���e�<�ɺ�i��ӿ~��˟����(=\0','6.0.0-20911');
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
INSERT INTO `autenticacao` VALUES (1,'ass','lk1y5y0FPVAfKUmWmEm5bA==','Assistência de Alunos'),(3,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','Administração'),(4,'coo','A6b/DbVgu9vNTIbNlLNZcQ==','Coordenadoria'),(5,'admin','ISMvKXpXpadDiUoOSoAfww==','Administrador do Sistema');
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
  `assistenteAdministracao_idPessoaFisica` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPermanenciaVeiculo`),
  KEY `IX_assistenteAdministracao_idPessoaFisica` (`assistenteAdministracao_idPessoaFisica`) USING HASH,
  CONSTRAINT `FK_f546c91a2c634f9fbf4d0aab67d74949` FOREIGN KEY (`assistenteAdministracao_idPessoaFisica`) REFERENCES `assistenteadministracao` (`idPessoaFisica`)
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
  `nascimento` datetime NOT NULL,
  `rg` longtext NOT NULL,
  `sexo` longtext NOT NULL,
  PRIMARY KEY (`idPessoaFisica`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoafisica`
--

LOCK TABLES `pessoafisica` WRITE;
/*!40000 ALTER TABLE `pessoafisica` DISABLE KEYS */;
INSERT INTO `pessoafisica` VALUES (1,'Willian Costa','1999748362','19966338844','1992-03-04 00:00:00','507382748',''),(2,'Lucia Almeida Soares','199283723','34920493','1984-04-04 00:00:00','39846263',''),(4,'Michele Arruda','00000000000','1934927549','1984-04-04 00:00:00','545335653',''),(5,'Grazy','00000000000','1934927549','1984-04-04 00:00:00','545332653',''),(6,'Lucas Bonetti','0000000','193427549','1984-04-04 00:00:00','54532653',''),(7,'teste','teste','teste','2015-11-12 00:00:00','teste','');
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
INSERT INTO `prontuario` VALUES (1,'1320011'),(2,'1400020'),(3,'43789434'),(4,'43789934'),(5,'43288934');
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
  CONSTRAINT `FK_c0dab6dd691f4f8fb6adb1df04f0e289` FOREIGN KEY (`assistenteAluno_idPessoaFisica`) REFERENCES `assistentealuno` (`idPessoaFisica`)
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
  CONSTRAINT `FK_SolicitacaoSaida_Porteiro_porteiro_idPessoaFisica` FOREIGN KEY (`porteiro_idPessoaFisica`) REFERENCES `porteiro` (`idPessoaFisica`),
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
INSERT INTO `terceirizado` VALUES (7,NULL,'teste','teste');
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

-- Dump completed on 2015-11-14  4:54:20
