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
INSERT INTO `__migrationhistory` VALUES ('201511102328412_criando-database','Sistema.Ifsp.DAL.Migrations.Configuration','‹\0\0\0\0\0\0í][oä:r~ÿÐè§duÏx&‹äÀ³_‚ÁŸ1ÆÞy54Ý´GˆZê•Ô†¿–‡ü¤ý¡.-ñRÅ;ÕÝÎ¼uKT‘Uõ±H‹ÅüÏÿžýåeÍžIY¥EþiþþäÝ|Fòe±Jó§OómýøÇŸÿåÏÿüOgW«õËìÛ®Ü‡¦ý2¯>ÍÔõæ—Å¢Zþ ë¤:Y§Ë²¨ŠÇúdY¬ÉªXœ¾{÷‹÷ï„’˜SZ³ÙÙ×m^§kÒþ¡/Š|I6õ6ÉnŠÉªþ9}s×Rýž¬IµI–äÓü.­júèäócµ9¹<ÿm>;ÏÒ„¶ãŽdóY’çEÔ´•¿ü­\"wuYäOwú Éî_7„–{L²Šô­ÿe,nÊÈ»Ó†‘Åø¡“ æ‹”É+*Œúµi^Ëè§ùùjæ”Ï’~UöÏg¿&i\nu¬ž\\oó%­>)Ób>[¨émkBŸ-“eR°5Ó²%¯Üúè¶,6¤¬_¿’ÇþûtÅQàj£,D\"	äûŽ‹Ïyýát>û}›eÉ÷ŒšaTxW%ùO’“2©Éê6©kRRM}^‘–E©%B½ÛjÛ‰§[]RXÏg7ÉËo$ª|šÓŸóÙuúBV»\'}#þ–§´ÐêrK€Fª+®Hþ#™¾Ú<}&Ùù’TUtžÏ#Ê”Ø£MÌëN\rNÈc¾wÀûõT¨ÛHuî]	çÙ6/$rÛ\0%¹N+Ú/çJ–Jj}‹¼J(¼ÞOk¦öÓ\0µ«+[Rå%u±6ûš#°ø{òœ>µØV@õ+ÉÚ\"ÕtÓ¤…Í[èº,Ö_‹l)æÝÃ]±-—´îû)pŸ”O¤vEpU5ã`^“qplÇÅ¨h*R®“œÎzè4âI—Û¬¨@qÜŽûr	Ö¬QPæ_\rÚ‰ÐâÓôÝl´T£­–é¸Øl€ÊT¶;/Ö$º‰)Ÿ¢WtRWU“Œ<y|±Õé¦¸+²t™Ö	Åôú*B±½–´º,–d\n~–Û2È¼P]ËºX1=6¶e¿–$/~#uú<Ø’rbÅ U™@9›,™€™å½3ÉµƒÎˆ”Ï)]Åßn¿SËdZiUaü	³Pá‡©+ü8á`\Z_}c]ñ57Ö_ic]ñõµJê„ÎqËd5¡K:¼O×ö‹²†Ö]’B”LYè\ZaKq•æ°:ñ]¿¾oæ@ê¢(J:±o¼¤©—ƒôº(s²$”ŽÛÂ‡ùÞaÁÃ~ýs¡cW	ÔÏ+¸[R!ëMIª)æq&¥Æ}™ëXÎ>Å¤$…[an0½W|áÑÐbe$³Š„Œ¨‡‡Ž­öÓÁ%”\rå³S`ÁØ¡ÄPpr%±ß™mµu“l›%ñ—D“ù{ò¤ZR#œ×…·]2…ÙŠ¹\'´ß¥eúßtÖrpÖsªáÌÝJ³âCÍ4ZH2{xI?ËW”5%++˜×¾zRºóu:oÚ³Œ\'÷ùT¶3ùNÿlKÿ©X°)’®^ËÝB\01#Ù‡¾Ô^é¥Z¹„í¬\"WcºFŠå‘æòÅÔ\rÊzõ7†ð°ðzÚ”Ôú¥¿‚–~Uq·Ý4«&rŠY©üZP‘$¹ýB…ö³m5àºmNûˆcÐvÝ’/IY&È`k<W¬ž\ZN­PÆÒ ˜øB*(	%½€ô-yrœª¶_:XÙî»©ÌkÙ÷TÜòÏ[¢LÚê2î(äVÅš6F\\#Ù‡¡À2ö¹„+î¥õb[n`MâK	íb_ÂãJØ¶ðïtYW\'´§(ZÈ—ZÈ¾„[È•°oaš›´-%µp|‰µ)aÛÂ*ùÞÎÞ°¶íÞ­êÃíéßY·„<mó•VXB1±]ì[¤y\\ûV¾èÊ’Zø¢V\'[À¶uÔ~.µ­ã\n	­cÞÁ­cx\rN—©ãØÔ|è04µŸM5IÊ´XEØ›v·Ö”ÔX‹ï$ÕKüæ%”Fõâ69>w™¡Œ™í­ïNü¿ÜŒØ®Ù¥š¼ôù\\]gÉSÅT²\"eöJÅ¢—çè†¬¿“’uAPBßèÚšþ}\'ñÏ•î—N«ñƒ÷š^6)WþTæ¼ã‘}xN-É2m;ÓÍ:ýù:¯òÕL©;.!ûeýÍ6«ÓM+Ì×Oó?HŒ(ˆ±«Œ7“Ùà)¿Ÿ‹VëK~I2R“Ùù²;s‘TËd,ÚNZŒdÔ³Ø[Ç¸vÙhg½»r`«¹Ä]âˆcQ|Þœ¼áh,`t\rcI¿†ìæ›KM»ÇÊˆs\'GŒA‡ÕmÙŠköîÅÇšlàÒÇ¼ìærÑïLÙ;ŒµWá*FŸæ²ÀÌºac/Æ]å­6bs]‡$âô†\rõ!\nWðÝ\Z09rAÁöþv\'é\"~`Öš\r.ç€ÝUZ%bMÅ—ŒcÛ%·9÷è\"ÛSÉ8ç_ÅZ;[ÇÖuîosŽAÿ¬Z€þL\Z©Wá¾õdw¿\ZæœÁÊvÂžaOæAgrl…sîeMó _³7Ï€{:6Ï½ÛZÙ0Ñ‡íÉ§àöŽÎ!çW·vŠûòúÑã³ýb†eÐÏîÍ²ìšÍ0ë­W6tÝ{2yûƒ1ÜùÄ.šƒâi>x”šÿTÌrßm\nß‘zç×Ú­W\nRÍg£{\r\\ÏHLò´ØXS‰’\"eƒDp‰ÈôôÇŠEºLH½DO­/·Z–)âSEZ»~H©‚µDJÏ-0%`‚ø- ¤}h‹HªvÜëFw(¤äÌL1vq‰úKÌ\\œ¢*ÄvÝ˜%¦ÈJÂ3l ›C?²˜\\Ýš¾ŽMN´ºêëÉ4Ô£ƒðñ°YÔfN;§BµNM†(oõƒŠKÝ}Mœž6nO_AMØ¡AÊ²œ}¡–ÞPiéÝŸñp„ÄÊ¢ÒxF\r}£>è\Z:Cã&eü­F6*¨µÔW^ˆÏsÉ‰¡¦J¹©|›–ÞM?™!žÌx“#]dA©ýœfžN†ƒnªêÛŒ\'>bTîñÔû<™V?ót½“S#;Wvuj×8@\r] ÖÜïCó|Ø+\"\nÜjèµè„>®æ5ô:ˆ\0pˆFÁ.|ar“j¥ÖžÑX¬òÁÇ¸ÛÔÔqjÏ?è)&†-æQ\'ª™ÕA\0²ß4û\\p3Â>êR5sªZ³yQÝÙßŽÓáÝÙ¢Ë0Ý?8[ ©¨Ïn’Í†ÇLjêþÉì®ËK}ñÇ;ûLÐëŽÆbY	¡‡Ö5ÕE™<ámãÿ]‘ë´¬êË¤¦v£	z¼X­bj7ñ®\ZÀó)kkçþÛ}ÔüîgßB‚î0›µ@q”ç5e±9‡ÖrK›‘™59Ã“,)5¹\0.Šl»ÎMòt¸Z\'\nd!IÄOdÐ²ÍDFðwq„‚Qå“³4ù7NOQŠ§6Ç,¿,µñ©5¥SØ¦ÉÁdæ\r6—)¥7ÒÕn;MÙ3÷\'(>#—À4”ŽRpŸ«æ÷—Ç‘$È8ªÿÕAlhÖëx¢Â¨v‰IXZÝ“6Ëš‹´ñ,-Ó‹»;)ÅÒêžX`»¼AÜøµ{hNgÌÄ\ZŸZðÄ$þá8cž[Lž„)ÃÓA‘Ýtq#ë~4}£0œYc‰÷?ÒÝ\"›&Výô0Ç²Ýûqeh´näöýfŠ½P“©„òs\\æ|/sUŒ”ŠêpKnxhN§¿Wˆ¥Ò?²°®ì%Aœye_ž”¡6=¥cÒw+z/S ô]4Ú@EqƒÐÃcö©7Í\"ÖúÓÒ3š¹é‰¨¬±æ$Úd} ^ƒÿ\\Îl®_ñçƒÒÅAñ¥5m/øà­i-G…*Q1æ4â 0>¶˜‰wtpóðî‘9Ýõ,‘Ý3‰w·kprîYLÇ»3¸áøØ‚«îvŽ©î‘•d b\'™þj®{tl\\†âjËs‰¨›ÄN3ò|ß:S>UR¶rØÊ·L((ð üQIù£›=}T+éŽŸbô¬d:~ö£g%Éñ³=+ùq÷8°ô¸vôú¦\"µþñÁÌž‘	lgMØÅ-%­WQñ1>KbOWð³#üÜ…Šâ¾gEB ±G_%#¯ÂPÊ=‚…òÀ¼{v0}€\rœãkcB,]\\mhÚW•¨…<Ê|PúQÑ“$s³€áé¡ÁÖzi}½´†‰¡¼=\n«Í¼D…˜å`òdÉ|Š,è÷™”9’ý3›áMÌì›ƒ1«ÏRŠc[¤ÉI’Ð†#ª;ÎÈC	:â¨¢Âå;æ—\\Ì‹¸Ëý=é¹‘óÒ³”oÔHÍàW¸–Ûƒ§¼’³¨*\ZCæPnÉ±{x0úOÏúu>ŒŒIÄ¿UtÃñd¯Ð±#¿*z?góo}6ÏGáò}@>ö­‚ä\n…;6¡Ä‚€°Ý²l,wr’êM6ùÖŽ¬Cƒû@jó;o+[zQä«´M·ñ¹jRØIV„\"Æk[ƒÉæØ¼ÕÆNÆ~?	P®ýñ÷\0jÇjð‚ƒoö±ûæo7Iz£ÏS rÿ¡YDjÖ% 0V*lÁ‘ÕE^X¢T—”á(Ì¬…€‚‚ÏpôÆ>	¼#\ZÏÕ©-ŽnSêŠÜ\n´)¾²	˜T§MŠqà¶N›*ä(Ð7¥±R‘˜¹]w¥-ö\r\0…¡¹FBÌ[zç|h¦ã»úŽñ††˜}Åâw\'U	»Pˆ8áÌ˜zÆbë†ùÊv‹F-r8±L\0Ô$ãÁÎ´³G°ÏœÌdã=9‰Ú·/6ðã\nÂ²ô„ÀK60®°EÆÍ6Ý¶\0s1xCˆO€¤ÙšìôJ€Ò¹+`GÈEš¶Ù‚Ã|çÒJ¶Ã\0ÂØ¨\0¥} q„vÍ€uØ™Ü´ð¶tHâKû 	J¡åni8jÍ\r”.ì q£@(¸°ÙÈôpaKûÁEN7æ†ZP¸È©Õ.:„Ë.s›(»r>á´¹ƒ£§|ê¹ƒ„Šé@Pà3ÛiÁ÷”¹Î¹0õ&Zô\"šóÑ†+ì)ÓŸ\\^b5@JÃ…Š†ý0@á2&ê€Âö\nÑ(,±€@’?$P´ìë\"%•‹vý“áÿT²OèÈešlåÓälåRõÉ%Å]‘ùŒ\ná9]5Ùo^ïþž4ïOÚŸYJòz,q“äé#©êûâ¿Hþiþo\'šÏÎ³4©º4Ÿö¹+Éj½¨ªUd®d.èÆs%™Þ]¯^•ê¯¯¿•¼ôi#íõ–—´³—ÖgEþÔ$Û´&2$^Âé˜ÜÉ>³÷£Ã¦\\ê(­¨°êööùÛ’,Ûsíé–|6Q»V¢Â/„‡ç}1EœzwY¸s)j!â†2ž ësÈxRáòÇÄÑ-wâfKq+–Dˆ|Š¤U1À*‚5a«æ¦Y{1›‘–©ìÑL›˜Eµõ2¡`¦ä)M½”HÅ\\ŸIÅs®ÊPŸGÅÈ.Š§œ»D*~D˜,*ž<uiT¼CüÓçQñT´?è’œ7@Öƒ©˜?Å·#‰YS‚Òû˜ÞÇp–Ñ[t6/J(RÞÛ°ÙPüHq‰P‚ÎÏ™¤(¦tú–áá	°ûÉÏx°T&¦3Å•±3öë7?³!QðXÙaÑˆæpÔÒwô³ˆ‹†ˆš\"Wu¯°t¹Ï#bwL^TÅzÝ˜µ…uŸ#è‚lM)ÃHö3›â¼TÚ\08ÝwÃepðÔ¯´Îø^™ý˜É‡bŽaÀA–ãL\nÚð &oé;ã·ƒÝÉ@û„Ô¤­$gZÀnCè	Ž­kÚ¿Á½}÷™îÛåïðœkèJæFN¯ali±|\ZFævüøçsŠ¦QC`‚‰ž¿ÝûþœíœJuDÐ},ÆŽ½:Sì®Äˆ¢Kýy‡­TsFåÄ/‡Í™/°ÌöT¹ëõ<§ÄüÍz¾NÙÝ½z¾»ãÃµzqúÉýv‡\r4^­39ð¨¸MîðŠ§58l§\ZÈí‡Ý@ó9ó]yð‚¨ÃÖž‹ó\nÊÂ»gwfp&ÃÙ‡Ì\"0?ÁN-{¸y€t½î¶]®^wù½î+? L)\Zyƒ&›ã[>ÞŽMRúö·w¶£en¶YnZ€¼R¶NN¤(˜šðÀœ¶è5OÿqŠsR6æ<É.èì’6+•PÞ–)%ºI2\rÇÂw†±QÝP›øæ’lHÞxJpq˜´À=óÞÐ\0Áè„ÈÅ.«ñ(g¯Aa7¦>Ù¬{Â«\\…\'À2µ„¸çq„Üß/Êë  æ[™\ZÊ…h—d¨ˆïŽ4Úë¿>Ö‰{&\0’”fkä9F?Ê°/¬Æ/f¢%ÕþõÐqqgi—«´L{08¸$\"JÔÀ€Ý‰nIt¢\0ÁTè‘+cµ#—0ÈUió¢L¥é½Ù)°OK`‰5\\¾Ÿö ’òÍ²—L§s&iÇOGÓ¹I\n’©tÞçßø©íHÚÖå™LÏ\\VŸêŽ¥n³!Óiýå§A¯sƒ<SiœÍpñSã‘4n”°c³W4Êé=\\—Åú]L<Üx|™ç¢O…¶R–÷Ü\0}G·TÜ¦áXõÄJðì\rŒ«	èüÌÜ+óâ\0™P~f”eTiº\"¢áÅò¦Š‰Á³ÁÒC0¦FŠ´ë\róøH`s‹0‹‚æVyŸM4È Ž{\"ŽcÜ8W<„ÖzB…1°nÎìboáÇcìéµàÜ†)°×]Õa0iRï´Ÿ.îí¿)RÈÍÜÉ@cd{/%ü’_’ŒÔdv¾¬Û¸§‹¤Z&+à@­ÖLG>\nš£èÀÆ?ì¦Qƒ!Ð2P-ô(9îíèÆÂ¨QqÓBq*GÈxÐ³\rmzkP;²Á>\0b5ÕÙ‘	 ÇWCO(ó¦!¨PÇ!C‘»‡Ód\r 8Ðq)ÀÕÊä_¼Å…êbØ#ÁÕÞ¼§N°yþSkÌžõv¸\r0J¼Õ*3jž@PBá.ÐÜY·áa,CÁ˜4…ì\\ï´ç®ºÓ} šØc÷ÅƒöL ×)\0ÃCW|2‘êð:ÐlÃüµ×•º0\0ÅïÚ€iñÖ]k‡6èpæXãjŠ4û—o\Zgà•ÅÇƒ²nôó¬á&”w5ìH2wPÏLß\"éÚ	8ýE@Ãé`¶ÙWÃ™bpM×]ói¾úÞÀ­;š¬L ÖÆÏ=¥Úø×PmÊ{2$ÞÏ·Ìóä¿·A–¡|*¤\\–§ö‚±~6×¯T/ûªO‘fX¬‡3REÜ[¨&U’±ª.ÐNª£{s†ŠTÛ6‰hû¢	å)”\Z:&Á“[;¾›Œ&ß“Ì:ôd\r³oA³t=Ü×—{*Xì±`I]+:¿¶\\m÷¬§{¥#ŒíÖÈUa%ÁÊ±ÂæÍÁ8Khª·”‚àÅUT/”T7C(¬i¿N—ÚÀ¿†*æKè¬õ07’môð\n´ÌÃ[s;9¬åTær(¤±šC9óúû™šªö¾ˆ¦î¾”P3a}Â‘C\0\'ÍÒ•˜mÜ¢2î³‚ïé[’c·pÇŸ8å|€Ô4I5xá°¦¦d5ð*ó¥2q«¢MÓ0­Þ/Tí¬Â˜8‘HÙ\09¨3(6o8è*—/Â©\næCƒ‹,\rØäÎå,âçömÇ•g§™ãå¨ØÑ©MsB=°Þ¢²Ê£ÆXÅÏZ®¹³Â8cØâÃelw!=Ât^ö€™áïRÇxÂÏ†2k/Zü¡Ç—-î†j„-ôŒßA²åsH\r@°3o‡ÀÑPùü„Éh$…#ðS@À\rÙÍÿÔ{ãûŽ­¸Í#Aòv8POÍ~Ðƒ3€ÐâÌñV…K®C­‰‹ÍAü–gG 	û?	l¹—½Î‚RwPõ™Š€]3\"›áãø!AE>-¶k†ó3ù)Ä5š]­€ 1ò±në¼ñp°Xn¥ÀãDŒGR\0¸u (B½`¯¿ˆf@öC¤WÐ¦HKA¹Ùá)RÝ\\Û0ò7ðd{*Q¸…¥B{þñ­þ@¢„X,bZ^žû+¯hLµ›ßvP_>ö½°ã\'’Áöð¼Dî¨w @ÇX¢æ67E\"ð†e\01oß0|Ï½kN\"ŠÝÝClÙðîlÑm÷èßº(“\'rS¬HVµOÏ_·ys›E÷ï’TéÓHâŒÒÌÉ’‹eÊ|Î‹]ŒÐ¢]á6R\'Íµñçe>&Ëš¾^Ò6ÍŸæ³oI¶¥E®ÖßÉêsþe[o¶5e™¬¿g¯¬0šÐ<Uýg©Íg_6Í¿*´™isÈ—ü×mš­†v_—Â $š˜¿þÆÍF—usóæÓë@é÷\"7$Ô‹oU¼\'ëMF‰U_ò»ä™àmÓË—ØÙeš<•ÉºêiŒßÓ¿~«õËŸÿ¯L2+<\0','6.0.0-20911'),('201511122328075_alterando-pessoafisica','Sistema.Ifsp.DAL.Migrations.Configuration','‹\0\0\0\0\0\0í][oä:r~ÿÐè§duÏx&‹äÀ³_‚ÁŸ1ÆÞy54Ý´GˆZê•Ô†¿–‡ü¤ý¡.-ñRÅ;ÕÝÎ¼uKT‘Uõ±H‹ÅüÏÿžýåeÍžIY¥EþiþþäÝ|Fòe±Jó§OómýøÇŸÿåÏÿüOgW«õËìÛ®Ü‡¦ý2¯>ÍÔõæ—Å¢Zþ ë¤:Y§Ë²¨ŠÇúdY¬ÉªXœ¾{÷‹÷ï„’˜SZ³ÙÙ×m^§kÒþ¡/Š|I6õ6ÉnŠÉªþ9}s×Rýž¬IµI–äÓü.­júèäócµ9¹<ÿm>;ÏÒ„¶ãŽdóY’çEÔ´•¿ü­\"wuYäOwú Éî_7„–{L²Šô­ÿe,nÊÈ»Ó†‘Åø¡“ æ‹”É+*Œúµi^Ëè§ùùjæ”Ï’~UöÏg¿&i\nu¬ž\\oó%­>)Ób>[¨émkBŸ-“eR°5Ó²%¯Üúè¶,6¤¬_¿’ÇþûtÅQàj£,D\"	äûŽ‹Ïyýát>û}›eÉ÷ŒšaTxW%ùO’“2©Éê6©kRRM}^‘–E©%B½ÛjÛ‰§[]RXÏg7ÉËo$ª|šÓŸóÙuúBV»\'}#þ–§´ÐêrK€Fª+®Hþ#™¾Ú<}&Ùù’TUtžÏ#Ê”Ø£MÌëN\rNÈc¾wÀûõT¨ÛHuî]	çÙ6/$rÛ\0%¹N+Ú/çJ–Jj}‹¼J(¼ÞOk¦öÓ\0µ«+[Rå%u±6ûš#°ø{òœ>µØV@õ+ÉÚ\"ÕtÓ¤…Í[èº,Ö_‹l)æÝÃ]±-—´îû)pŸ”O¤vEpU5ã`^“qplÇÅ¨h*R®“œÎzè4âI—Û¬¨@qÜŽûr	Ö¬QPæ_\rÚ‰ÐâÓôÝl´T£­–é¸Øl€ÊT¶;/Ö$º‰)Ÿ¢WtRWU“Œ<y|±Õé¦¸+²t™Ö	Åôú*B±½–´º,–d\n~–Û2È¼P]ËºX1=6¶e¿–$/~#uú<Ø’rbÅ U™@9›,™€™å½3ÉµƒÎˆ”Ï)]Åßn¿SËdZiUaü	³Pá‡©+ü8á`\Z_}c]ñ57Ö_ic]ñõµJê„ÎqËd5¡K:¼O×ö‹²†Ö]’B”LYè\ZaKq•æ°:ñ]¿¾oæ@ê¢(J:±o¼¤©—ƒôº(s²$”ŽÛÂ‡ùÞaÁÃ~ýs¡cW	ÔÏ+¸[R!ëMIª)æq&¥Æ}™ëXÎ>Å¤$…[an0½W|áÑÐbe$³Š„Œ¨‡‡Ž­öÓÁ%”\rå³S`ÁØ¡ÄPpr%±ß™mµu“l›%ñ—D“ù{*ò²‡­»<©–Ôôçuá=\ZþÂl\0ÝÚÛÓ2ýo:W:8›=Õ ê>6°âC´dlñ’~ö¶(kJVV0¯}õTxçau`	8˜lîó©,vòþÙ–þÀ`3]½8–»å\0bF²}©¼ÒK	´r	Û¹L\"®uË#Íå‹©.”õêoáÁÝ ô<´3(©õ-ýZæn»iüdM¼³>úµ \"IrûåígÛjÀuÛœöÇ íj)_’²LÁÖx†<X=5œZ¡>Œ¥A0ñ…TPJzé[òä8An¿t°²ÝwS™×&žð©¸\r´+`‰2iƒÍ¸ [kÚxqd†#ÈØç®¸—ÖKDn‘ƒ5‰/%´‹}	7Ž+aÛÂ¿ÓÅd<<Òž¢h!_Jh!ûn!WÂ¾…inÒB¶”ÔÂñ%ÖB¦„m«ä{;{ÃÚ¶{/´ª{·§gÝò´ÍWZa	ÅÄv±o‘æqEì[ù¢W(WHjá‹ZlÛÖQû¹Ô¶Ž+$´Žy·Ž-à58]¦ŽcSó¡ÃÐÔ~6Y¬&)ÓbaGÜÝZSþQc-¾“T/ð›—P\Z]¬ÛädøÜe†2~|d~»·¾\'òÿrd»f—jòÒçsu%OSÉŠ”Ù+m‹^ž£²þNJÖA	}£kkú÷Ä?Wº_:­ÆÞk>xÙ¤\\ùS™óŽGöá9µ$Ë´í\\l$9»ÕÀ×y•¯fºøàq	Ù/ëo¶YnZa¾~šÿAbDAtˆ˜e¼™Ì6Oùý\\´Z_òK’‘šÌÎ—Ý ‹¤Z&+À`Ñ6pÒb$£˜ÅŽ>ÆµËö>ëÝ•ÃiÍ%î½Ì(‹]àðîää½Gc£ûvKúM<$†À\\jÚí?VFœ;9’`:¬n£0¨P\\»°—@p/>Öd—>æe7—‹~7`\n´ÈÞa¬½\nW1âø4—îdÖ\r{1î*oµ‹˜ë:¬ §7l¨Q¸‚ïÖ€iÌ‘\n¶÷·;Iñ³Ölp9ì®Ò*k*¾d[Ø.¹Í¹G™ØžrHÆ9ÿ*ÖBØÙ:¶®s›súgÕôgÒH½\n÷­\'»ûÕ0çV¶ö{2:“c+œs/kšùš½yÜÓ±yîÝÖÊ†‰>lO>·wt9?¸ºe°SÜ—_ÐŸí3,ƒ~vo–e×|l†Yo½²q ëÞ“aÈÛŒáÎ\'vÑOOóÁ£Ôü§b–ûnSøŽÔ;¿Ön½Rj>ÝkàzFb’§ÅF¸J”‰\"$:€KD¦§?Ì,Ò}dù%zŠ3rûØ¡h™\"*V¤U±ë‰”*XK¤ôÜS\"† ˆßR\0BÚ‡¶ˆ¤jÇ\0¹nt‡òHJÎgÀc—¨¿ÄÌÅ9° ªraAl×YbŠ\\(<ÃÂ°9j$‹ÉÕ­éëØäD«ë ¾žLC=:?l ‹ÚÌÁiçâtA¨Ö©Éå­~Pq©»¯‰ÓÓÆíé+¨	;´\"HY–“¡/ÔÒê\"-½û3®€XYT\ZÏ¨¡o”a¢Â]Cgh<Ã¤Œ¿ÕÈFå\0µvúÊñyN\"91ÔT)7•oÓÒ»é\'3Ä“Obr¤‹,(µŸÓÌÓÉpÐÍCò@}›ñÄÀGŒÊ\"À=žzŸ\'Óêg`ž®wrjdçÊ®Ní\Z¨¡Ôšû}hž{ED»C\r¢Ö¢\0= ‘ÐÀÇÕ¢\"À¼£†þQ\0ÑH\"Ø…ï\"ÌCnR­£ÔšaÁ3\Z‹U>0ãw›š:Níù=¥ÑÄð¢Å<êD5s£:@ö›FbŸnFØG]ªfNUkö!/ª;û»`ÂÁq:¼;[ty­ûg$öÙM²ÙÐá˜IˆÝ?™ÝuÙ°/þxgŸzÝÑX,+ \rõÐÚ¡¦º(“\'\"¼mü¿+r–U}™ÔÔn4A«5PLí&ÞUx>emíÜ»šßýì[H~æÐ(Žò¼¦,6çÐZn	£s32³&Sy’%¥&ÁE‘m×¹IvƒBëD,$‰ø‰Z¶™Èþ.ŽP0ª|Šb–&ÿÆ‰â)JñÔ†â˜[˜¥6>µ¦t\nRÛ49˜Ì¼Á&ð2¥ôFz¡Úb\'°){æþÅçó˜†ÒQ\nîsÕüþòø/’Gõ¿:ˆ\rÍµOTÕ.1	K«{r@ÂfYs‘6ž¥ezqw\'¥XZÝ‹l—­ˆ¿vÍéŒÙˆXBãSsJ]º!–J÷ÄB*Lê N6Ìs‹éÇ“0éx:(8³Û6.pæ¢åÆz`†So,‘ááþÇÊ[d{ÁÄî Ÿæh¸{?®-VžÜÎ¢ß¼D±›j2Q~ŽËœ¤âe®Š²RQ.PbÉ\rmlk{o\\ÛGÖ•½Üˆ3¯ì‹ƒÁ“2øÀ¦ç¢tLú®âcEïe¢„¾‹Æ+¨(nzxôÃ>õ¦¹ÅZZzFs?=•5–¥D›¬¥ÂkðŸ\ršÍuÂâ+þŒRº°„#(¾´±¦íÅ$¼5­å¸R%*Æ¬HÆÇsùîbn&ß=2§±»6„%²{f!ñîVNÎÝ#‹Éàxç7#[pÕÝêÁ1Õ=²’$Cì$Ó_ÉÁuî‘ÓQ\\¯Ùa.u“ØiF¾Kƒïâ[gÊ§JÊV._ùvå”?*)t³§ï1ƒj%Ýñ³SŒž•LÇÏ>`ô¬$9~ö£g%?îþ	–÷ÂŽ^DU¤Ö?>˜ÙÓ#r‘‚í¬	»¡¥¤õK*>ÆgIìù~v„ŸÜPQÜ÷¬ˆ@$öè«däUêB¹Gð±P˜wÏ¦°¡—a|mL¦‹«\rM«µ‰™ïŠcC*šcšen0<=T ØZ/ 1°—ÖP\"1”·Gau£™—¨S¢L¿,™O±€ý>3G²f3<°É—ù1‚}s0fõYJ’l‹49Í²ºàÏpDu\"y(A‡$UT¸ŒÉü’‹yw¹¿\'=·Qv^z–2–\Z©ü\n×r{t•W2pšUEcÈ=Ê-9vFãù[¿Î‡‘1éø·Šn8ž\rú\"vhXEïçlþ­Ïæù8^¾ÈÇua”\\a£€É&Yv&\\–åNCR½©Ó¦ïÚ‘uhpŠmÞ`çceK/Š|•¶	;>WMÜ!M«ƒPÄˆok0Ù¼·ÚXÂÉØï\'Êµ?@@íX\r^pðâÍÒ!vßüáí&Io´ã™Tî?ô#‹D@ÍºÆJÅƒ-8²ºÈK”êÒ:…™µPPðŽÞØ\'á€wDã¹:9ÆQÀmªQ]‘}C6ÅW6“€ê´i5ÜÖi“ú¦4v@23·ë®´Å¾ 04[IˆY`K/ðœÍÕbÜ`Wß1ÞÐ° ó·˜ÂAü. 0à´,a\nÑÁ§¬y#°“×XlÝ0_ÙnÑ¨E§¦	€šd<¸À¹zöã™“™l¼±\'§Rûö…Â~|@AXžŸ˜bÉÆ–ãÈ¸Ù¦Ûàc.oñ)”4[€cA“>@	P¢$wì¹(BÓ6[p˜ï\\úÃCÉv@ ´4ŽÐ® 9´;“›>G—I|i$AI¸Ü-\rG- ¹Ž$nô6Ÿ™.li?¸È	Ë|àÂP\n99ÛÂE\'€0pÙå~ÓeWÎ\"|Š7wpôtÂ‚O^w€P1\n|n<-\"øâ^À€rßyàƒ#&Pª¿ÃD‹^¡@ób>Úp…ý\0#å\nôËKŒ¡HŠx PÑ°(\\ÎEP¸Â>@²*º…%(@úÈƒŠ–}=P¤´”b‘!Ð®2üÒRö)!¹\\•­|šÌ“­\\ª>=¥˜#²+2ŸQ!<§«&?äÍëÝß³“æýIûó\"KI^%n’<}$U}_üÉ?ÍÿíäOóÙy–&U—(Ô>û%Y­UµÊ€Ü—Ìßx¶¥3ñîúÙx7ùWòˆ,äE-‰DÄëÍÅï»KoÒF2Ú[î-¯yg¯½ÏŠü©I×iMdHÝ„Ó1¹Õ}<fïG§KÝäÉ›·©#µ¢¯ÓF\\·%Y¶‡7Ú«Ú-	7¡¿VmÃï¥`‹\'1…­z‹ZÛs)ô!l‡44žZîÑøb…MBG·LðŠ›AR¿˜#!|*’VÅ(­bÔÄ¾šÛwíýpFV^¦²G[ob[ÕÖË„‚™’§/¤l,¾ÃO›ŽÅs8ËPŸŒÅÈ.‹§œ»l,~D˜T,ž<u¹X¼CüÓ\'cñT´?è’œ7@Öƒ©˜„Å·#‰©W‚Òû˜ÞÇp–Ñ[t6¹J(RÞÛ°)UüHqÙT‚ÎÏ™Ì*¦tú–á	°ûÉÏx°|(¦3ÅÍµ3öë7?³!QðXÙaÑˆæp^Ówô³ˆ‹Æ™š\"Wu½±t¹Ï#bwÌ€TÅzÝ˜µŒ§uŸ#è\"uM)ÃHvV›â¼ÛÚ\08ÝwÃ¥ðÔ¯´Îø^™ý˜ÉÇsŽaÀAÛãLŠüð &Ç8ã÷”ÝÉ@›Ô¤ý(gZÀ–Eè	ŽòkÚ¿Á\r}÷™îÛ%ñœkèJæFÎÑali±¤FævüøçsŠ¦QC`‚‰âÝû&ŸíœJuÎÐ},ÆÎÎ:SìîÕˆ¢KýM}‡­TsFåì1‡Í™/°ÌöT¹[þ<§Äü¾NÙÝõ~¾[ìÃí~qúÉ5{‡\r4^­39ð¨¸ÔîðŠçF8l§\ZÈí‡Ý@ó9ó]yð–©ÃÖž‹ó\nJå»gwfp&Þ‡Ì\"0?ÁŽ>{¸y€œ¿î¶]Â_wù4¿î+? L*\Zyƒf¬ã[>^ÓŽMRúö·WÇ£en¶YnZ€¼R¶NN¤[,˜šðÀœ¶è5OÿqŠsR6æ<É.èì’6+•³XÞ–)%ºI2\rÇÂw†±QÝP›øæ’lHÞxJpq˜´À=}ßÐ\0Áè„È@«ñ(§ÀAa7æOÙ¬{Â«\\…\'À2µ„¸çq„\\#/Ê;  &m™\ZÊ…h—d¨ˆïŽ4Ú[È>ÖÙ&\0’”«kä9F?Ê°/¬Æ/f¢%ÕþõÅÔqq§z—«´Ì08¸L$JÔÀ€Ý‰nIt¢\0ÁTè¹-cµ#79ÈUi“«L¥é½Ù)°OK`‰5\\ÒŸö ’òÍR L§s&óÇOGÓ¹I“©tÞ\'ñø©íHÚÖ%&™LÏ\\jŽŸêŽ¥n³<#Óiýå§A¯sƒd!SiœM“ñSã‘4n”õc³÷!4Êé=\\—Åú]L<Üx|™ç¢O…¶R–÷Ü\0}G·T\\ÉáXõÄJðì\rŒ«	èüÌÜ+óâ\0™P~f”eTiºk&¢áÅòº‹‰Á³ÁÒC0¦FŠ´ë\róøH`s‹0‹‚æVy)N4È Ž{\"ŽcÜ8W<„ÖzB…1°nÎìboáÇcìéµàÜ†)°×Ý÷a0iRï´Ÿ.îí¿)RÈÍÜÉ@cd{/e/ü’_’ŒÔdv¾¬Û¸§‹¤Z&+à@­ÖLG>\nš£èÀÆ?ìºRƒ!Ð2P-ô(9îíèÆÂ¨QqÓBq*GÈxÐ³\rmzkP;²Á>\0b5ÕÙ‘	 ÇWCO(ó¦!¨PÇ!C‘»ÌÓd\r 8Ðq)ÀÕÊä_¼Å…êvÙ#ÁÕÞ¼§N°yþSkÌžõv¸R0J¼Õ*3jž@PBánáÜY·áa,CÁ˜4…ì\\ï´ç®ºÓ} šØc÷ÅƒöL ×)\0ÃCW|2‘êð:ÐlÃüµwžº0\0ÅïÚ€iñÖÝ-k‡6èpæXãjŠ4û—o\Zgà½ÇÇƒ²nôó¬á&”w5ìH2YÏŸLß\"éî	8ýmBÃé`¶ÙWÃ™bpM×Ý#ói¾úÞÀ­;š¬L ÖÆÏ=¥Úø×PmÊ{2$ÞÏ·Ìóä¿·A–¡|*¤\\–§ö‚±~6×¯T/ûªO‘fX¬‡3REÜ[¨&U’±ª.ÐNª£{s†ŠTÛ6‰hû¢	å)”\Z:&Á“[;¾›Œ&ß“Ì:ôd\r³oA³t=Ü×—{*Xì±`I]+:¿¶\\m÷¬§{¥#ŒíÖÈUa%ÁÊ±ÂæÍÁ8Khª·”‚àÅUT/”T7C(¬i¿N—ÚÀ¿†*æKè¬õ07’môð\n´ÌÃ[s;9¬åTær(¤±šC9óúû™šªö¾ˆ¦î¾”P3ë}Â‘C\0\'ÍÒ•˜mÜ¢2î³‚ïé[’c·pQ 8å|€Ô4I5xá°¦¦d5ð*ó¥2q«¢MÓ0­Þ/Tí¬Â˜8‘HÙ\09¨3(6o8è*—/Â©\næCƒÛ0\rØäÎå,âçömÇ•g§™ã\r«ØÑ©MsB=°Þ¢²Ê£ÆXÅÏZ®¹³Â8cØâÃelw«=Ât^ö€™á/dÇxÂÏ†2k/Zü¡Ç—-îšk„-ôŒßA²åsH\r@°3o‡ÀÑPùü„Éh$…#ðS@À\rÙÍÿÔ{ãûŽ­¸Í#Aòv8POÍ~Ðƒ3€ÐâÌñV…K®C­‰‹ÍAü–gG 	û?	l¹—½Î‚RwPõ™Š€]3\"›áãø!AE>-¶k†ó3ù)Ä5š]­€ 1ò±në¼ñp°Xn¥ÀãDŒGR\0¸u (B½`¯¿ˆf@öC¤WÐ¦HKA¹Ùá)RÝ\\Û0ò7ðd{*Q¸…¥B{þñ­þ@¢„X,bZ^žû+¯hLµ›ßvP_>ö½°ã\'’Áöð¼Dî¨w @ÇX¢æ67E\"ð†e\01oß0|Ï½kN\"ŠÝÝClÙðîlÑm÷èßº(“\'rS¬HVµOÏ_·ys›E÷ï’TéÓHâŒÒÌÉ’‹eÊ|Î‹]ŒÐ¢]á6R\'Íµñçe>&Ëš¾^Ò6ÍŸæ³oI¶¥E®ÖßÉêsþe[o¶5e™¬¿g¯¬0šÐ<Uýg©Íg_6Í¿*´™isÈ—ü×mš­†v_—Â $š˜¿þÆÍF—usóæÓë@é÷\"7$Ô‹oU¼\'ëMF‰U_ò»ä™àmÓË—ØÙeš<•ÉºêiŒßÓ¿~«õËŸÿÂÍ´(=\0','6.0.0-20911');
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
INSERT INTO `autenticacao` VALUES (1,'ass','lk1y5y0FPVAfKUmWmEm5bA==','AssistÃªncia de Alunos'),(3,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','AdministraÃ§Ã£o'),(4,'coo','A6b/DbVgu9vNTIbNlLNZcQ==','Coordenadoria'),(5,'admin','ISMvKXpXpadDiUoOSoAfww==','Administrador do Sistema');
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
INSERT INTO `funcionario` VALUES (2,1,2,'Assistentecia'),(4,3,3,'AdministraÃ§Ã£o'),(5,4,4,'CoordenaÃ§Ã£o'),(6,5,5,'Administrador de Sistema');
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
