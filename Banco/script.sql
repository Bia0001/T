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
INSERT INTO `__migrationhistory` VALUES ('201511161737073_criacao','Sistema.Ifsp.DAL.Migrations.Configuration','ã\0\0\0\0\0\0Ì]›n‰:ræêwhÙU≤¿∫g<≥Ar`Ô¬«ˆ,{|∆œŒ≠!w”!j©WRv^-y§ºB®üñ¯S≈™ªùπÎñ®\"´Ícë,ãˇ˚ﬂˇsˆóóu6{&eï˘˘¸˝…ª˘å‰ÀbïÊOÁÛm˝¯«üˇÂœˇ¸Og◊´ıÀÏ˚Æ‹á¶˝2ØŒÁ?ÍzÛÀbQ-êuRù¨”eYT≈c}≤,÷ãdU,NﬂΩ˚è≈˚˜BIÃ)≠ŸÏÏÎ6Ø”5iˇ–øóEæ$õzõd7≈ädUˇúæπk©Œ~O÷§⁄$Kr>øK´ö>:˘¸XmNÆ.~õœ.≤4°Ì∏#Ÿ„|ñ‰yQ\'5mÂ/Ø»]]˘”›Ü>H≤oØBÀ=&YE˙÷ˇ27e‰›i√»b¸–IÛÅE ‰5F˝⁄4ØeÙ|~±Zß9Â≥§_ï=√ÛŸØIEöB´\'ü∂˘íVüîi1ü-‘Ù∂5°œñ…2)ÿöiŸøëWÓ}t[R÷Ø_…cˇ}∫‚(pµ—\"ëÅÚ}«≈Áº˛p:ü˝æÕ≤‰!#Éfﬁ’EI˛JrR&5Y›&uMJ™©œ+“≤(µD®w[m;ÒÙb´K\nÎ˘Ï&y˘ç‰OıèÛ9˝9ü}J_»j˜§oƒﬂÛîˆ˙Q]n	–Hu≈…$”Wõßœ$ªXí™äŒÛŸbDô{¥ây›©¡	yÃ˜∏cøû\nu©ŒΩ+·\"€ÊÖdAn†$ü“äˆÀπí•íZﬂ\"Ø\nØ˜”√ö©˝4@ÌÍ ñTyI]ÏÅÕæÊ,˛û<ßO-∂P˝J≤∂Hı#›Ù\0iasœ˙TÎØE∂ÉÛÓ˛ÆÿñKZ˜∑)-)üHÌä‡™j∆¡º&„‡ÿé%äQ—T§\\\'9ùı–iƒwí.∑YQ¡‚Ä€p`DeÒù,FõèΩD|;RÏ	:ZlôéãÂ®Le¡ÛbM¢öÚ)zAG\"uU5…»cë«[ùnäª\"Kóiù–NΩæäP,EØ%≠Æä%ôÇüÂ∂2;T◊≤.VLèçÜmô«Ø%…ãﬂHù>O ∂§\\ÜX7hïC&PŒ&K&`f9AÔLrÌ‡£3\"ÂsJ◊Ú∑€jπÇL.≠*å?m*¸0uÖ\'L„´o¨+æÊ∆∫‚+m¨+ææVIù–9nô¨#tEgÉﬂ“µ˝“¨°uó§%”•÷#ÎÆÚ|˜û˚d\\N®KJMqØ%ÁÉtˆ.$%â0N†öH8_$†\nÜ´{æ®¨å$~¥ $xèµ:[ºbáK(aız¢l|Ÿ©À¢(ÈÇÆÒëß^ÓÒOEôì%°t‹ºÃ˜]ˆÎü\\ª*H ˚^¡∂›í\nYoJRM1è∞±p°v›ÿAƒPpr\r±ﬂYü±u\nìlõ%Òó8ì˘o*Ú≤á\rπ<©ñ¥KÁu·›ÀÉòµ0€:ﬂπ”2˝/:‹¸k*„Ë>œc≈áNÙ–B“ƒ	/ÈÁñ/ öíïÃk_=≈ŸyLù\0X&õ˚|*ãù<–?€“`6‡ÍÍ≈±‹Mõ3íΩÔKç‡ï^J†ïKÿÆKqnØk§Xi._L›p°¨WcÓ°Á°ùAI≠w (hÈÁ®w€M„˜j¢∞òyÔØIí€O{i?€VÆ€Ê¥è8mg¡˘íîeÇ∂∆´›¡Í©·‘\nı~,\rÇâ/§ÇíP“Hﬂì\'«	r˚•ÉïÌæõ º6QÇO≈m /ø% §\r3„>ÄBnU¨i„aƒ5íΩ\nå cüK∏‚^Zª{∏E÷$æî–.ˆ%‹8ÆÑmˇ±M :π§=E—Bæî–Bˆ%‹BÆÑ}”‹§Öl)©Ö„K¨ÖL	€V…C;{√⁄∂{/¥™{∑ßg›Ú¥ÕWZa	≈ƒv±oëÊqEÏ[˘¢W(WHj·ãZùl€÷Q˚π‘∂é+$¥éy∑é-‡58]•écSÛ°√–‘~6Y&)”baá€›ZS˛Qc-æìT/õóP\Z]Ïå€‰d¯‹eÜ2~|d~ª∑ÓÎ˛È⁄ﬁÆŸ•öºÙ˘\\} íßä©dE Ïï6äE/œ—\rY?êíuAPBﬂÈ⁄ö˛}\'ÒœïÓóN´ÒÉ˜ö^6)W˛TÊº„ë}xA-…2m;ŒnÚu^Á´ô.Íw\\BˆÀ˙õmVßõVòØÁÛ?Hå(àÓÃÎÕd∂4y ÔÁ¢’˙í_ëå‘dv±ÏNˆ\\&’2Yã∂Åì#µ¿–-båG˝~1≤ui.FÌN3´#Œ€…◊ÒÓ‰‰Ω#\'¡‡I∑\'T(ÆÛà&Æk∑iêÎÔó¶ÕÂd%b¶/ÅYEŸ£&≈)‰ûÈÿq£Ó≠Ä i´R1„õ7;!ÿÊÑ9ıõ(SX1Ÿ©éµW·aG¸≈Ê≤¿}Û∫—v/c¢ …oƒ\"ÊÒ+HdØ¿Ã≤Ì[∞Çª€ÄaÃ˜\r\nµﬂ¢pí,‚:«v§CvWiqç5_iè≠l=Ê@◊ÊS0Œπ•±¬>Í±u›ÆÅ9«†[[-@&ç‘´z{≤ª_\rs>te;aá∫\'Û†>∂¬9Øº¶yêãﬁõg¿´õÁﬁ€ØlòË˙˜‰Sÿ-àŒ!∑}†nºó‡À/∏˝üÌ3,É€ﬁ,À;\Z±f79îçw<<Ü6IÇ1‹π/õ≥˙i>8‚öˇTÃrﬂm\nﬂëzÁ‹≠W\nRÕg£W\\œHLÚ¥ÿ âí\"kÜDXd ÙÙg∫E∫èL\\ªDO2/∑èZÅñ)ÇâEZª~êH©b‹DJœ-0%`‰Ü¯- §}hgM™v‹?ëÎF7f(è§‰‰L1vqâ˙ÒÃ<√¢*ƒv›ò%¶H√3l ¸»è,3ﬂØù˜◊EHZ/Cî7<A≈•Fêâ?ÿ∆#Ï+®	1•;—\'À∆WÏ‚-ÊÑß3Ë.ÓaCÌ8”.˜\n`…úΩ ˛~e\'Ë‚:∂“ØÉÛ≤ƒ\rÃñ.fYÍ} Ò,%û-ãJ„n6t83LT¯L∆–√Ø\'+c¡5≤Qyï≠˝ æÚB…ìHN{V MÂ4∂t˚…q«ìòu%JÌ<6s3tì{Ö<Páq<1—À≤p7≤ﬁëÃ¥˙X¸Ë=«\ZŸπ≤´Sª∆´lËW∂Ê~öÁC∞Q‡>fC/≥µ(@∑r$41ﬁ®0ó≥°”ŸAÄó9ív°‰ÛêÔYÎ}∂fXp7«bïR«8∆}—¶ﬁh{˛A˜s41ºh1èz¶Õ|”êù—ëÿÁÌˆQ?µôß⁄ö}»5ÌŒ˛.∞uFÔŒ]ÊÙ˛¡ŸI±~vìl6t8fRÆ˜Ofw]æıÀ?ﬁŸg8_w4Kn--˙ŒáöÍ¢Lûà∂q™Ø»ß¥¨Í´§¶v£	¿Ω\\≠Åbjﬂ˚Æ\Z¿ù,kkÁS›}‘¸ÓgﬂB‚˘0Kª@qîÁ\' bs&≤Âñ0:7#3kr·\'YRj≤a\\Ÿvùõd⁄Ëp!¥N»Bíàü»†eõâå‡Ô‚£ \'¡fiÚoú(û¢Om(éŸ´Yj„SkJß %∞MìÉ	â—tÄó)•£ÏÖü´Ê˜ó«ë$»8∆ˇ’AlhÆÌx¢¬®v)LXZ›ìÉB©´Ò”Q8JT*≈\'vÛòÜ“Q\nÔŒl√\\˙3û1(û∞0™›©=ñV˜ƒb\0€eŒ‚∆Ø›Cs:cf,ñ–¯‘úRó˙ä•“=±ê\nì∆äì\rÛ‹b˙Ò$L:û\nŒÏ∂çúπ#G3>aÜò,ë··˛Õ˜-≤Ω`bw–O”@ÔﬁèkK£ï\'∑≥Ë7T*vSM∆GÂÁ∏Ã˘4^Ê™–5’·ä.ñ‹–∆∂∂7nÒ∆µ}da]ŸÎ≥8Û æ8<)√ilz.J«§Ô*>VÙ^&ŒFËªhéä‚°á«ÛÏSoö{v¨ıß•g4˜”QYc9⁄D¥…˙x#ºˇŸ†Ÿ\\\',æ‚œ(•Àp8Ç‚Kk⁄^z√[”Z÷U¢bÃ–≈Aa|l1óÔ.≠·fÚ›#s\Zª+iX\"ªgÔnú·‰‹=≤òé˜…p3¬Ò±W›ç1S›#+…@2ƒN2˝u/\\˜ËŸ8≈ıöÊQ7âùf‰{Z¯. æu¶|™§lÂÚïo^QP˛‡A˘£íÚG7{˙3®V“?;≈ËY…t¸ÏFœJí„g1zVÚ„Ó6aÈq/ÏËıgEj˝„Éô==\"ó5ÿŒö∞KZJZœ∑‚c|ñƒz·gG¯q≈}œäÑ@bèæJF^Ö°.î{ÂÅy˜Ï`˙\0z∆◊∆i∫∏⁄–$∆*QY¡˘°8ã•¢9¶¸Êf√”CÇ≠ıíT{i\r%Cy{V7öyâ\n!1% ¡T‡í˘X–ÔÛÇs$˚g6√õú#ÿ7cVü•Ñ›∂HìS~°˛GTw îátÚTEÖÀﬁÕ/πòqó˚{“seÁ•g){Æëö¡Øp-∑ÁÅy%GÑU4Ü<∏‹íc˜`Ù1jˆÎ|ìà´ËÜ„Åk°/b\'±UÙ~ŒÊﬂ˙lûè„Â˚Ä|\Z_F…6\nòlÇëaÌeŸXÓ‰0$’õ:m^¥Yá˜°ÿÊ\rvﬁ8V∂Ù≤»WiõÂs’$dR;Eå¯∂ûÕ@ÂA?≤à˚4¶KS`¨9|˚ô#´€ã∂ú.u√Q\0œB@A¡ghœ∞O¬Ôà,ú:∆Q¿m*;ßÀ∞aµiŒjø?®“,kF\0ï≤TΩ‘kÕÉ=,CD\n¯C‘\\bﬁ(µK]b‡!¡.˘N‡´60∂]í¨“›dÈçzEÆƒ_ŸÑ˜∫÷&Å9y®65ŒQÃ¶úà©wÃ6	v•-vπ\0Ö°πu(™£ÿ\Z¢ôÖåÏ∫”Å74,ƒlC¶pø8âPàîcÇN∞ÙF`#¶Z≤ÿhdæ≤›PTãN§\05…xpÅ3KÌ,∆´Z3ŸxcONZ•ﬁâ\nÏ:\n¬≤RÖ¿K60Æ∞å\\∆Õ6›d\0s1xCàO¯•Ÿ∞öÏKJÄ“zπ+`G»Eö∂ŸÇ√|ü›J∂√\0¬ÿ®\0•}†qÑvÕ¯vêÿô‹¥ÂtH‚K˚ 	JÁni8jÕ\rîÔ q£@(∏∞Ÿ˜ÙpaK˚¡ENØÁÜZP∏»©.:ÑÅÀ.S°(ªr>·∫É£ß|™≈ÉÑäÈ@P‡39j¡˜î©—πê0ÅS&ZÙ\"öÛ—Ü+Ï)≥•\\^b5@\nœÖäÜ˝0@·2ÑÍÄ¬ˆ\nê‘(,±Ä@íù$P¥ÏÎÅ\"%Qãa°˝ì·ˇêDµO` eVmÂ”‰ImÂRı…T≈å¶]ë˘å\n·9]5ŸLo^Ô˛ëù4ÔO⁄üóYJÚz,qì‰È#©Ío≈í¸|˛ßìõœ.≤4©∫¥∂ˆπZ…jΩ®™Udjm∫ƒÇÂ;˚ët∑”ÈWÚà,‰E-âDŒ$X›Jﬁ˙¥ëL€ˇJ®Êíö¨nìöÇÇJÊÛä¥LÃg\rzíá&oè†Ö≤™.Ï∫´ +Úß&π¨5ë!—Nß.∑Z2cR?:]¢1Oûÿ,c©ïxù6‚∫-…≤=jt>gM∏	T∑jâ≠Ñ-ûÍ»∂Í-j=l/§–áH∞í&yjπOõ‰ã6eR›2ÅÖnIòh`éÑ–÷HZ#h#àQfnﬂı7NôXyô mΩâmU[/\nfJûrºêr˘?mÚ ?\"ÃQB?B}Í ?\"ª‘AûrÓr˘ayÚ‘eÚÒLü:»S—˛†Krﬁ\0Y¶b  ﬂé$&\n\nJÔC`z√YFo—mÿT@°Hyl√&\0Ú#≈Â˛	:?gÚ\0ô“5i∞*Ïr&DM√ù\r+0ûFa)ÅLßOä±\r¶MÏ◊o~∫D¢Äº≤∏Õ·»≤Ôêj?∫\r^5EÆÍ⁄tËrüGƒÓò(®äı∫1k§Î>Ò–ÖˇöR6ÜëÏ7≈‰6N˜]DƒpôP<ı+-^ä\"≥à˘ 1ÁAR0‰L\n\'Ò &8„7™›…@;ò‘§M.gZ¿>HË	éGl⁄ø¡]}˜ôÓY€Â¡Òú¿ËJÊFNScli±º4FÊv¸¯Ásä¶QCè`Çâfmÿ˚Œ°ÌúJux—},∆í%8SÏÆñâ¢K˝eïá≠TsFÂJáÕô/∞Ã6jπã.=ßƒ¸óæûﬁ›\róæ˚ˆ√óq˙è…Mìá\r4^è≠39®∏jçä\'\\8lß\Z»Ìá›@Û9Û≠~¢µ√÷ûãÛ\Z fΩgwfp&Åc„áÃ\"0?¡ŒS{∏yÄ¥◊Ó∂]Œkw˘L◊Ó+? Lp+\ZŒ√%6„[{ùØf_ãLX§ıÌl¬IO∏Á7€¨N7≠Ú_iìON§KZäx$OKzÕ”ˇÉDúbòîç©N≤K:s§ù<ïì¥ﬁñ)%∫I2Ä3°¨É°kT1‘ æπ\"í7û\\&-∞ÀÊ6T*Ùcù∞∏»h5¶¨èax¿¶æ,(–2Gâ<ÛÍÖÓ9ÿ&@§ú≠	Ö›òÍg≤Ó	ØrûÄÒÆ%ƒ=èÉ ‰ ¯®xQ^ÊTmöåjjX(óü^#ﬂaÇeèù5d¨ìSM\0)ï>æ»≥’~da_XçYÃnWK™˝&¯Iû¯8ÅÔÕê´¥LÌ18∏D9J‘¿ÄçihIt¢\0¡TË±Bcµ#◊‚»UisˇL•ÈΩŸÅ)∞OK`â5\\Nõüˆ íÚÕ2ÙLßs&1ÕOùG”πIöù©tﬁÁò˘©ÌH⁄÷ÂÕôLœ\\ÊòüÍé•n≥48”i˝ÂßAèØsÉ\\6SiúÕ‚ÚS„ë4nîîfç≥W)5 È›*ãı=ªò∏ˇV‹„ëäûã>VBÌº›0ºørbH%xrfˇ.È∂!∏VÊ≈2°6$PñQ•ÈnAâÜÀ€X&œÀ^¬ò\Z)f≥34Ã„#ÅÕ-¬,\nö[Â}z— ÉÜÃÓg€∂«1nú+Ó\rÇ¥£mÅusf,k|€„ûò^Œmò{›u4ì&ıÓjÈí·~˛€ò\"Ö‹ˇü41F∂˜RrÕ/˘…HMfÀ∫ç†ªL™e≤é∂—j=¡t‰£†9äl¸C\"êLÜ@£sÒF¡»±nG7FçÑõäË¿àCp ¯#±Zrq«Ã√Ä⁄ë\rûQ\";®©N!M\09æzzBô7\rAÖ:ä‹]≥&k\0≈—∞àKÆVñ ˇ‚-.Tó	ÆˆÊ=uÇÕüZcÊ®∑√çßÄQ‚≠VqèúvÙÇÚ‡	wIÏŒ∫\rc¢∆¿¸p	(dÁzß=#p›ù—ƒ%¯V‹kOózù\00<PpÕß•©ØcÕ6Ã_{%ØÀP¸Æ\ròo›’«vhÉé˘NÅ5.ﬂ´H≥˘¶q^À}<(€ËFø—Î^¯yQÌN±∏s=8êÆ˘´è˙I◊I Í/æ\ZŒú≥ÕæN™ÉÄÍÆ<:üØ\Zì’xW¶ñk„Á°Rm¸k®6Âï.oå\\Êåy	ÚÖ_1\"ÀP>ïHR.ÀS{áX?õAZ™ó}	’ßH^-÷√ôJ©\"Ó-Tì*uÖXUt\'’—=ÜàÉôhE™m8õD¥}\n—Ñ≤_J\rS+ ≠ﬂÅMFS:J\nfù{≤ÜŸ∑†äŸ∫\nÓÒÀ=,ˆX∞§Æùè[Æ∂{÷”Ω“∆vn‰™∞í`ÂXaÛÊ`ã%4’[JAË*™J™õ!÷4á_≥Km‡_CÛ%t÷zX‘À6zxZÊ·≠πù÷u*s9“XÕ°úy˝˝lMU{_DSw_J®ôø†—,çÕå˘Òƒ7¯n» •≈&“ÿ»›í1ãÖ;*\rƒcïëñ{Fl≥≤Ñ-ˇÜfmÔ\"ïSä\0r”‰·Ö√Z„Nêa≈◊ÛÃó å]~¨äf_√¥z{5`∑öFR“Äub≈¢öÉ¨re\'>a>4∏”÷ÄM.}¿\"ûﬁ¿∂q\\yv>ﬁìàù⁄4˘Î-*´‹isåU¸H˙·Íê;Rç3Üùª>\\∆˙s√K–±‚fÜ;ãÚÑ°=d÷^¥¯COâ.[‹eı[ËQ»ÉdÀÁ, Å`G#≥&Oarq\ZI·1¸Ã–v`u¡>≈¿D≠kÑÄ≈∑ÛHê‹∆T1’S≥Ù|¥»åv~)ËBCÂ≠ÏPk‚}tøÂH¬>ßt[.√ÂÆ≥†‘T}Ù$`◊å»f¯„ûüPá*¬vÕp˛%?Ö∏˝´‰(A,ÅÀ8◊l¯8X»ªR‡qÎ#)\0‹U°ﬁ\"±Wà_‡7 ˚Äë‰Åá+hø®•†‹Ú©nÆm x≤=ï(‹¢w°≠ˇ0`xˆ;,b{}^˚kØ†Uµ{ﬂèvP_>ˆΩ∞*í¡∂7ΩDÓ∑©w†x–X¢Êˆ}E\"^n\01oﬂ0 1PK$ªK]Üª·›Ÿ¢€IÔ–øuQ&O‰¶Xë¨jüû-ænÛÊ\ZôÓﬂ©“ßëƒ•ôì%Ó7î˘ú?ª0D°Eª\"¬567§¶ù™N. :}Lñ5}Ω§“KÛß˘Ï{ímiëÎıY}ŒølÎÕ∂¶,ìıCˆ \n£â^T’∂ê⁄|ˆe”¸´B∞@õô67Ô|…›¶Ÿjh˜\'‡6&ÑDŸ_u€Ë≤nÆº}z(˝^‰ÜÑzÒ\r—úﬂ»zìQb’ó¸.y&x€Ù2‰%vvï&Oe≤Æz\Z„˜Ù/Öﬂj˝ÚÁˇ˙•\0F\0','6.0.0-20911');
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
INSERT INTO `autenticacao` VALUES (1,'ass','lk1y5y0FPVAfKUmWmEm5bA==','Assist√™ncia de Alunos'),(2,'por','fPQf+XHWJrhlUkcXRIwpig==','Portaria'),(3,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','Administra√ß√£o'),(4,'coo','A6b/DbVgu9vNTIbNlLNZcQ==','Coordenadoria'),(5,'adm','sJxgD93Fc/EXRJs3I/I9ZA==','Administrador do Sistema');
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
INSERT INTO `funcionario` VALUES (2,1,2,'Assistentecia'),(4,3,3,'Administra√ß√£o'),(5,4,4,'Coordena√ß√£o'),(6,5,5,'Administrador de Sistema');
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
