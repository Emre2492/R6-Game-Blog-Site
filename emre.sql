-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 24 Ara 2017, 09:19:36
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `emre`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `announcements`
--

CREATE TABLE `announcements` (
  `ann_id` int(11) NOT NULL,
  `ann_title` varchar(255) NOT NULL,
  `ann_content` text NOT NULL,
  `ann_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `announcements`
--

INSERT INTO `announcements` (`ann_id`, `ann_title`, `ann_content`, `ann_time`) VALUES
(4, 'Rainbow Six Siege Steam Ãœzerinde %40 Ä°ndirime Girdi', 'The Game Awards 2017 adaylar indiriminde Rainbow Six Siege standart sÃ¼rÃ¼mÃ¼ %40 indirim ile 139 TLâ€™den 83,40 TLâ€™ye, Year 2 Gold Edition sÃ¼rÃ¼mÃ¼ %40 indirim ile 239 TLâ€™den 143,40 TLâ€™ye, Complete Edition sÃ¼rÃ¼mÃ¼ ise 299 TLâ€™den %40 indirim ile 179,40 TLâ€™ye dÃ¼ÅŸÃ¼rÃ¼ldÃ¼. Bunlar ile birlikte oyun iÃ§in birÃ§ok kozmetik pakette indirime girdi. The Gam Awards Adaylar kampanyasÄ± sadece bir gÃ¼n sÃ¼recek ve 9 AralÄ±k saat 20:00â€™da son bulacak.', '2017-12-09 13:13:56'),
(5, 'Rainbow Six Siege KayÄ±tlÄ± Oyuncu SayÄ±sÄ± 25 Milyonu GeÃ§ti', 'Rainbow Six Siegeâ€™in 2.yÄ±lÄ±nÄ±n son sezonu olan White Noise bugÃ¼nden itibaren tÃ¼m platformlarda baÅŸladÄ±. Ubisoft, yeni sezonun gÃ¼ncellemesini kullanÄ±cÄ±lara sunarken Rainbow Six Siegeâ€™in kayÄ±tlÄ± oyuncu sayÄ±sÄ±nÄ±n 25 milyonu geride bÄ±raktÄ±ÄŸÄ±nÄ± duyurdu.\r\n\r\nBundan yaklaÅŸÄ±k 6 ay Ã¶ncesinde Ubisoft, Rainbow Six Siegeâ€™in oyuncu sayÄ±sÄ±nÄ±n 20 milyonu geÃ§tiÄŸini belirtmiÅŸti. Bu kadar kÄ±sa sÃ¼rede bu rakama 5 milyonun daha eklenmesi oldukÃ§a bÃ¼yÃ¼k bir baÅŸarÄ±. AyrÄ±ca oyunun daha geÃ§tiÄŸimiz gÃ¼nlerde 2.yaÅŸ kutlamasÄ±â€™da yapÄ±lmÄ±ÅŸtÄ±. 2 senede 25 milyonu geÃ§kin oyuncu sayÄ±sÄ± ile Ubisoft bu rakamdan oldukÃ§a memnun. Oyunu oynayan bu kadar fazla kiÅŸi varkenâ€™de geliÅŸtirici firma Rainbow Six Siege oyununu Ã¶nÃ¼mÃ¼zdeki yÄ±lda destekleyerek oyunun 3.yÄ±lÄ±nda yeni sezonlar ve iÃ§erikler eklemeye devam edecek.', '2017-12-09 13:14:13'),
(6, 'Operation White Noise GÃ¼ncellemesinin Boyutu ve YayÄ±nlanma Saatleri Belli Oldu', 'Rainbow Six Siegeâ€™in GÃ¼ney Kore sezonu White Noise bugÃ¼nden itibaren baÅŸlayacak. Yeni sezon gÃ¼ncellemesinin boyutlarÄ± ve yayÄ±nlanma saatleri ubisoftâ€™un twitter hesabÄ± Ã¼zerinden paylaÅŸÄ±ldÄ±.\r\n\r\nWhite Noise gÃ¼ncellemesi ilk olarak Ps4 Ã¼zerinde baÅŸlayacak ve 1 saatlik bakÄ±m ara ile sÄ±rasÄ±yla diÄŸer platformlardaâ€™da indirmeye sunulacak. White Noise gÃ¼ncellemesinin Ã¼lkemiz saatleri ve ne kadarlÄ±k boyutlara sahip olduÄŸunu aÅŸaÄŸÄ±dan gÃ¶rebilirsiniz.\r\n\r\nPs4 Ã¼zerinde TSÄ° 17:00 â€“ 18:00 arasÄ±\r\nâ€“ Boyutu 13.2GB\r\n\r\nXbox One Ã¼zerinde TSÄ° 18:00 â€“ 19:00 arasÄ±\r\nâ€“ Boyutu 14.19GB\r\n\r\nPc Ã¼zerinde TSÄ° 19:00 â€“ 20:00 arasÄ±\r\nâ€“ Boyutu 23:36GB (YÃ¼ksek Grafik Paketi)\r\nâ€“ Standart Boyutu 15.23GB', '2017-12-09 13:14:30'),
(7, 'Dokkaebi iÃ§in Yeni TanÄ±tÄ±m Videosu YayÄ±nlandÄ±', 'GeÃ§tiÄŸimiz gece Ubisoft, GÃ¼ney kore savunma operatÃ¶rÃ¼ Vigil iÃ§in ilk tanÄ±tÄ±m videosunu yayÄ±nlarken, SaldÄ±rÄ± operatÃ¶rÃ¼ Dokkaebi iÃ§inde yeni bir video paylaÅŸtÄ±.\r\n\r\nHacker olacaÄŸÄ±nÄ± bildiÄŸimiz Dokkaebiâ€™nin nasÄ±l bir Ã¶zelliÄŸinin olacaÄŸÄ±nÄ± tam olarak bilmiyorduk ancak yeni yayÄ±nlanan tanÄ±tÄ±m videosu ile beraber Dokkaebiâ€™nin Ã¶zelliÄŸini Ã¶ÄŸrenmiÅŸ olduk. Dokkaebi, savunma operatÃ¶rlerinin telefonlarÄ±nÄ± hackleyip telefonlarÄ±ndan mÃ¼zik Ã§aldÄ±racak, BÃ¶ylece Ã§alan mÃ¼zik sayesinde operatÃ¶rlerin yerlerini belli ettirecek. Bu Ã¶zelliÄŸin oldukÃ§a eÄŸlenceli ancak savunma sÄ±nÄ±fÄ±ndaki oyuncularÄ± bir hayli zorlayacaÄŸÄ±nÄ± sÃ¶yleyebiliriz. Zofia, Vigil ve Dokkaebi ile White Noise sezonu oldukÃ§a zorlayÄ±cÄ± geÃ§ecek. Dokkaebi iÃ§in yayÄ±nlanan yeni tanÄ±tÄ±m videosuna aÅŸaÄŸÄ±dan ulaÅŸabilirsiniz.<br>\r\n\r\n<a href="https://youtu.be/4MfOe_7J8u4">Rainbow Six Siege: Operation White Noise - Dokkaebi | Trailer | Ubisoft [US]</a>\r\n\r\n\r\n', '2017-12-09 13:19:52'),
(8, 'Rainbow Six: Siege Year Three Pass Ä°Ã§erikleri EriÅŸime AÃ§Ä±ldÄ±', 'Year Three Pass ile birlikte 2018 yÄ±lÄ±nda gelecek Rusya, Fransa, Ä°talya, Ä°ngiltere, Amerika ve Fasâ€™tan toplam 8 operatÃ¶r, 8 Ã¶zel Ã¼niforma ve kask, silahlara takÄ±labilen Ã¶zel season pas anahtarlÄ±ÄŸÄ±, 600 R6 kredisi sunulmakta. Bunlara ek olarak bir yÄ±llÄ±k VIP Perks, %5 Renown takviyesi, 0,3% Alpha Paketi takviyesi ve maÄŸazada %10â€™luk Ã¶zel indirimlerde season pass sahiplerine ayrÄ±calÄ±klÄ± olarak sunulmakta. YukarÄ±daki operatÃ¶rler hariÃ§ bÃ¼tÃ¼n iÃ§erikler an itibari ile Year Three Pass alanlara aÃ§Ä±lmÄ±ÅŸ durumda. OperatÃ¶rler ise Ã§Ä±kÄ±ÅŸ yapacaklarÄ± sezonlar ile birlikte 7 gÃ¼n Ã¶ncesinden ilk olarak Year Three Pass sahiplerine sonrasÄ±nda ise tÃ¼m kullanÄ±cÄ±lara sunulacak.\r\nYear Three Pass Steam Ã¼zerinde 105 TL, Playstation 4 Ã¼zerinde 88,99 TL, Xbox One Ã¼zerinde ise 89 TL fiyat etiketi ile satÄ±ÅŸta.\r\n\r\n', '2017-12-17 20:33:18');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `characters`
--

CREATE TABLE `characters` (
  `char_id` int(11) NOT NULL,
  `char_name` varchar(50) NOT NULL,
  `char_content` text NOT NULL,
  `char_image` varchar(255) NOT NULL,
  `char_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `characters`
--

INSERT INTO `characters` (`char_id`, `char_name`, `char_content`, `char_image`, `char_type`) VALUES
(9, 'Thermite', 'Thermite operatÃ¶rÃ¼ ile kÄ±rÄ±lmayan gÃ¼Ã§lendirilmiÅŸ duvarlarÄ± (reinforce) kÄ±rabiliyorsunuz. Bunun iÃ§in kendisinde bulunan Ã¶zel iki adet paneli duvara yerleÅŸtirip aktif etmeniz yeterli olacak bÃ¶ylece takÄ±m arkadaÅŸlarÄ±nÄ±za yol aÃ§acak rakibi beklenmedik yerlerden indirebileceksiniz.', 'Thermite_Portrait-300x257.png', 1),
(10, 'Thatcher', 'Thatcher operatÃ¶rÃ¼ ile dÃ¼ÅŸmanlarÄ±nÄ±zÄ±n kurmuÅŸ olduÄŸu Kapkan lazerleri, Bandit elektrikleri, Mute cihazlarÄ± gibi tuzak veya dÃ¼zenekleri bozabiliyorsunuz.', 'Thatcher_Portrait-300x257.png', 1),
(11, 'Sledge', 'Sledge operatÃ¶rÃ¼ ile kÄ±rÄ±labilir tÃ¼m duvar ve barikatlarÄ± (reinforce hariÃ§) kullandÄ±ÄŸÄ± balyozu sayesinde tek bir vuruÅŸta kÄ±rabiliyor ve rakiplerinize beklenmedik darbeyi aniden indirebiliyorsunuz..', 'sledge-300x260.png', 1),
(12, 'Twitch', 'Twitch operatÃ¶rÃ¼ kullanmÄ±ÅŸ olduÄŸu Ã¶zel dronu sayesinde dÃ¼ÅŸmana elektrik verebiliyor. AynÄ± zamanda dÃ¼ÅŸmanÄ±n kurduÄŸu birtakÄ±m tuzaklarÄ±â€™da bu dron sayesinde yokedebiliyorunuz. (Kapkan lazeri, Bandit elektrikli akÃ¼sÃ¼ gibi tuzaklarÄ±)', 'R6-operators-twitch-300x257.png', 1),
(13, 'Blitz', 'Blitz armoru yÃ¼ksek bir operatÃ¶r. AynÄ± zamanda kullanmÄ±ÅŸ olduÄŸu Ã¶zel kalkanÄ± sayesinde hem Ã¶nden gelen saldÄ±rÄ±yÄ± geri pÃ¼skÃ¼rtebildiÄŸi gibi bu kalkanÄ±n Ã¶nÃ¼nde bulunan Ã¶zel bir dÃ¼zenek sayesinde dÃ¼ÅŸmanlarÄ± ile flash  kÄ±sa sÃ¼reliÄŸine kÃ¶r edip anÄ± saldÄ±rÄ±lar gerÃ§ekleÅŸtirebiliyor.', 'R6-operators-blitz-300x257.png', 1),
(14, 'Ash', 'Ash operatÃ¶rÃ¼ hÄ±zlÄ± olduÄŸu gibi kullanmÄ±ÅŸ olduÄŸu Ã¶zel bomba atar silahÄ± sayesinde neredeyse tÃ¼m duvarlarÄ± (reinforce hariÃ§) uzaktan attÄ±ÄŸÄ± matkap tÃ¼rÃ¼ bomba ile parÃ§alayabiliyor.', 'R6-operators-ash_229846-300x257.png', 1),
(15, 'Glaz', 'Glaz operatÃ¶rÃ¼ne tÃ¼rÃ¼nÃ¼n tek Ã¶rneÄŸi diyebiliriz. Ã‡Ã¼nkÃ¼ kendisi bir sniper ve baÅŸka bir operatÃ¶rde bulunmayan keskin niÅŸancÄ± tÃ¼feÄŸine sahip. Bu keskin niÅŸancÄ± tÃ¼feÄŸinin merceÄŸinde ise dÃ¼ÅŸmanÄ±n vÃ¼cut Ä±sÄ±sÄ±nÄ± gÃ¶steren bir dÃ¼zenek mevcut. AyrÄ±ca keskin niÅŸancÄ± silahÄ±ndaki hasar oranÄ± oyunda bulunan hiÃ§bir operatÃ¶rÃ¼n silahÄ±nda yok. Bu yÃ¼zden bu silah ile dÃ¼ÅŸmanÄ±n kurtulma olanaÄŸÄ± Ã§ok dÃ¼ÅŸÃ¼k bir ihtimal.', 'photo-1-300x300.jpg', 1),
(16, 'Montagne', 'Montagne operatÃ¶rÃ¼ tÄ±pkÄ± Blitz gibi armoru yÃ¼ksek bir karakter. Kendisi kullanmÄ±ÅŸ olduÄŸu bu Ã¶zel kalkanÄ±nÄ± aÃ§tÄ±ÄŸÄ±nda Ã¶nden, saÄŸdan ve soldan hiÃ§bir ÅŸekilde mermi geÃ§irmiyor. Bu sayede dÃ¼ÅŸmanÄ±n ilgisini kendine Ã§ekip onu tedirgin edebiliyor ve takÄ±m arkadaÅŸlarÄ±na yol aÃ§abiliyor.', 'montagne-830x710-300x257.png', 1),
(17, 'IQ', 'IQ operatÃ¶rÃ¼nÃ¼n kolunda takÄ±lÄ± tablete benzer tarayÄ±cÄ± sayesinde dÃ¼ÅŸmanlarÄ±n kurmuÅŸ olduÄŸu bomba ve tuzaklarÄ± gÃ¶rebiliyorsunuz. AyrÄ±ca Pulse operatÃ¶rÃ¼nÃ¼n kullandÄ±ÄŸÄ± kalp ritmi tarayÄ±cÄ±sÄ±nÄ±â€™da gÃ¶rmektesiniz.', 'IQ_Portrait-300x257.png', 1),
(18, 'Fuze', 'Fuze operatÃ¶rÃ¼ rakiplerinizin korkulu rÃ¼yasÄ± denebilir zira kendisi kÄ±rÄ±labilir yÃ¼zeylere yerleÅŸtirdiÄŸi Ã¶zel bir alet sayesinde ardÄ± ardÄ±na yÃ¼zey arkasÄ±na patlayÄ±cÄ±lar yollayabiliyor. Ã–zellikle hostage (rehine) modunda dikkat edilmesi gereken Fuzeâ€™un patlayÄ±cÄ±larÄ± dÃ¼ÅŸmanÄ±n yakÄ±nÄ±na dÃ¼ÅŸtÃ¼ÄŸÃ¼ taktirde kurtulmasÄ± imkansÄ±z olduÄŸu gibi bu patlayÄ±cÄ±lar agresif bir ÅŸekilde odaya rastgele daÄŸÄ±lmaktadÄ±r.', 'fuze-830x710-300x257.png', 1),
(19, 'Buck', 'Buck oyunun ilk sezonunda gelen saldÄ±rÄ± operatÃ¶rÃ¼ olmakla birlikte kullanmÄ±ÅŸ olduÄŸu silahÄ±nÄ± tek tuÅŸla pompalÄ± tÃ¼feÄŸe dÃ¶nÃ¼ÅŸtÃ¼rebiliyor. Bu iÅŸlem ise silahÄ±nÄ±n ucunda takÄ±lÄ± olan Ã¶zel bir dÃ¼zenek sayesinde gerÃ§ekleÅŸiyor ve silahÄ± pompalÄ± dÃ¼zeyine Ã§ektiÄŸinizde neredeyse tÃ¼m duvarlarÄ± (reinforce hariÃ§) kÄ±rabiliyorsunuz. Buck, silahlarÄ± seri bir ÅŸekilde deÄŸiÅŸtiren oyucular iÃ§in oldukÃ§a ideal bir operatÃ¶r.', '20170222231529-300x257.png', 1),
(20, 'Blackbeard', 'Blackbeard oyunun ikinci sezonunda gelen ve ayn zamanda bir zamanlar en fazla kullanÄ±lan ve sevilen operatÃ¶r olmaktaydÄ±. Ã‡Ã¼nkÃ¼ kendisi silahÄ±nÄ±n Ã¶nÃ¼ne takmÄ±ÅŸ olduÄŸu balistik kalkan sayesinde kafaya gelen mermileri engellemekte. Ancak bu Ã¶zelliÄŸi sayesinde oldukÃ§a gÃ¼Ã§lÃ¼ bir konuma Ã§Ä±kan Blackbeard zamanla nerflendi (Ã¶zelliÄŸi dÃ¼ÅŸÃ¼rÃ¼ldÃ¼) ve namÄ± yerindeyse unutulup gitti. Ã‡Ã¼nkÃ¼ Blackbeard ilk zamanlarÄ±nda neredeyse Ã¶lmeyen bir karakterdi ve kalkanÄ±nÄ± kÄ±rmak imkansÄ±z denilebilirdi ancak ÅŸimdilerde kalkanÄ± bir iki mermide kÄ±rÄ±lmakta olup Ã¶zelliÄŸinin dÃ¼ÅŸÃ¼rÃ¼lmesi ile birlikte niÅŸan almasÄ±na kadar hantallaÅŸan bir operatÃ¶r haline getirildi.', 'blacbeard.jpg', 1),
(21, 'CapitÃ£o', 'CapitÃ£oâ€™da oyunun Ã¼Ã§Ã¼ncÃ¼ sezonunda gelen bir operatÃ¶r. Ancak CapitÃ£oâ€™nun Ã¶nceki sezonda gelen saldÄ±rÄ± operatÃ¶rlerine gÃ¶re Ã¶zelliÄŸi daha dÃ¼ÅŸÃ¼k seviyede zira kendisi hem alev hemde sis atabilen bir arbalete sahip. Bu arbalet ile dÃ¼ÅŸmanÄ±n olduÄŸu bÃ¶lgeye alevli ok fÄ±rlattÄ±ÄŸÄ± taktirde bu ok belli bir mesafeyi yakÄ±yor ve bu alanÄ±n iÃ§erisinde rakip oyuncu var ise Ã¶lÃ¼mcÃ¼l sonuÃ§lara gÃ¶tÃ¼rebiliyor.', 'CapitÃ£o.png', 1),
(22, 'Hibana', 'Hibana 1.yÄ±lÄ±n son sezonunda gelen SAT birliÄŸinden olan Japon operatÃ¶r. Ã–zelliÄŸi ise Ash ile Thermite operatÃ¶rÃ¼nÃ¼n karÄ±ÅŸÄ±mÄ± niteliÄŸinde zira kendisi resimdeâ€™de gÃ¶rebileceÄŸiniz Ã¼zere elindeki bu silahÄ± ile gÃ¼Ã§lendirilmiÅŸ (reinforce) duvarlarda delik aÃ§abilmekte.', 'Hibana.png', 1),
(23, 'Jackal', 'Jackal ismindenâ€™de anlaÅŸÄ±lacaÄŸÄ± Ã¼zere oldukÃ§a Ã§akal birisi zira kendisi takmÄ±ÅŸ olduÄŸu kaskÄ±ndaki Ã¶zel bir dÃ¼zenek sayesinde dÃ¼ÅŸmanlarÄ±  ayak izlerini zeminde gÃ¶rebiliyor bu bunlarÄ± tarayarak dÃ¼ÅŸmanÄ±n nerede olduÄŸunu aÃ§Ä±k edebiliyor. Ã–zellikle agresif olan ve haritada boyuna dolaÅŸan dÃ¼ÅŸmanlara gÃ¶z aÃ§tÄ±rmayacak Ã¶zelliÄŸe sahip olan Jackal ile rakibinize nefes bile aldÄ±rmayacaksÄ±nÄ±z.', 'Jackal.png', 1),
(24, 'Pulse', 'Pulse operatÃ¶rÃ¼ tablet benzeri kullanmÄ±ÅŸ olduÄŸu kalp ritim takipleyici ekipmanÄ± sayesinde dÃ¼ÅŸmanÄ± belli bir uzaklÄ±ktan  duvar Ã¶tesinden gÃ¶rebiliyor. KullanÄ±labildiÄŸinde takÄ±ma fazlasÄ±yla yardÄ±mcÄ± olan Pulse ile dÃ¼ÅŸmanlarÄ±nÄ±za aniden sÃ¼rprizler yapabilirsiniz.\r\n\r\n', 'Pulse.png', 2),
(25, 'Castle', 'Castle destek aÄŸÄ±rlÄ±klÄ± bir operatÃ¶r olup normal barikatlara nazaran pencerelere ve kapÄ±lara aÃ§Ä±lmasÄ± daha zor olan bir panel yerleÅŸtirmektedir. Duvar gÃ¶revi gÃ¶ren Castle ile bÃ¶ylece savunacaÄŸÄ±nÄ±z bÃ¶lgeyi daha korunaklÄ± bir hale getirebiliyorsunuz.', 'Castle.png', 2),
(26, 'Tachanka ', 'Savunma sÄ±nÄ±fÄ±nÄ±n aÄŸÄ±r toplarÄ±ndan biri olan Tachanka Ã¼zerinde taÅŸÄ±dÄ±ÄŸÄ± aÄŸÄ±r makineli silahÄ± ile dÃ¼ÅŸmanlarÄ±nÄ± delik deÄŸiÅŸik etmektedir. Bu aÄŸÄ±r makineli silahÄ±n Ã¼zerinde BlackBeard operatÃ¶rÃ¼ne benzer bir kalkanda bulunmaktadÄ±r. Tachankaâ€™nÄ±n kullandÄ±ÄŸÄ± aÄŸÄ±r makineli silahÄ± olabildiÄŸinde kÃ¶r noktalara gizlerseniz aÃ§Ä±k hedef olup vurulmaktan kaÃ§Ä±nÄ±rsÄ±nÄ±z. AyrÄ±ca Tachanka operatÃ¶rÃ¼nÃ¼n Ã§ok az kullanÄ±ldÄ±ÄŸÄ±nÄ±â€™da belirtelim.', 'Tachanka.png', 2),
(28, ' Mute', 'Mute, kullandÄ±ÄŸÄ± modem benzeri aletler ile dÃ¼ÅŸmanÄ±n elektronik cihazlarÄ±nÄ± bozabiliyor. AyrÄ±ca sinyal kesici olarakâ€™da kullanÄ±lan bu modemler sayesinde gÃ¼Ã§lendirilmiÅŸ duvarlarÄ±n Thermite ve Hibana gibi kesici operatÃ¶rlerin duvarÄ± aÃ§masÄ±na engel olabiliyoruz.', 'Mute.jpg', 2),
(29, 'Rook', 'Rook ile takÄ±m arkadaÅŸlarÄ±mÄ±za ve kendimize 5 adet Ã§elik yelek verebiliyoruz. BÃ¶ylece takÄ±m arkadaÅŸlarÄ±mÄ±zÄ±n dayanÄ±klÄ±lÄ±ÄŸÄ± dahaâ€™da artmakta oluyor. AyrÄ±ca Rook operatÃ¶rÃ¼nÃ¼n kendi zÄ±rhÄ±nÄ±n yÃ¼ksek olduÄŸunu sÃ¶ylemekte yarar var.', 'Rook.png', 2),
(30, 'Kapkan', 'Kapkan, kapÄ±larÄ±n arkasÄ±na yerleÅŸtirmiÅŸ olduÄŸu Ã¶zel bir dÃ¼zenek ile dÃ¼ÅŸmanlarÄ±na tuzaklar kurabiliyor. Bu lazer benzeri dÃ¼zeneÄŸe takÄ±lan dÃ¼ÅŸman anÄ±nda Ã¶lÃ¼rken Ã¶zellikle son dakikalarda savunma odasÄ±na rust atan dÃ¼ÅŸmanlara oldukÃ§a etkili oluyor. Ã–zellikle dÃ¼ÅŸmanlarÄ±n gireceÄŸi bÃ¶lgelere bu tuzaklarÄ± kurmanÄ±z size avantaj saÄŸlayacaktÄ±r.', 'Kapkan.png', 2),
(31, 'Bandit', 'Bandit, gÃ¼Ã§lendirilmiÅŸ duvarlara yerleÅŸtirmiÅŸ olduÄŸu akÃ¼ler sayesinde bu duvarlara elektrik verebiliyor. Bunu yapmasÄ±ndaki amaÃ§ ise dÃ¼ÅŸmanlarÄ±n gÃ¼Ã§lendirilmiÅŸ duvarlarÄ± aÃ§masÄ±na engel olmak. AyrÄ±ca bu duvarlara dokunan dÃ¼ÅŸmanlara elektrik Ã§arpabiliyor.', 'Bandit.png', 2),
(32, 'Smoke', 'Smoke zehirli gaz bombalarÄ± atarak dÃ¼ÅŸmanlarÄ± yavaÅŸlatabiliyor, hatta bu zehirli gazÄ±n iÃ§erisinde kalan dÃ¼ÅŸmanlarÄ± Ã¶ldÃ¼rebiliyor.\r\n\r\n', 'Smoke_Portrait-300x257.png', 2),
(33, 'Jager', 'Jager takÄ±m iÃ§in oldukÃ§a iÅŸe yarayan bir operatÃ¶r zira kendisi etrafa kurmuÅŸ olduÄŸu aletler sayesinde dÃ¼ÅŸman bombalarÄ±nÄ± etkisiz hale getirebiliyor. Ã–zellikle Fuze operatÃ¶rÃ¼ne karÅŸÄ± oldukÃ§a etkili.\r\n\r\n', 'Jager.jpg', 2),
(34, 'Doc', 'Ä°smindenâ€™de anlaÅŸÄ±ldÄ±ÄŸÄ± Ã¼zere doktor ile takÄ±m arkadaÅŸlarÄ±nÄ±za can basabiliyor dÃ¼ÅŸtÃ¼klerinde Ã¶zel iÄŸnesi ile takÄ±m arkadaÅŸlarÄ±nÄ±zÄ± kaldÄ±rabiliyorsunuz.\r\n\r\n', 'Doc.jpg', 2),
(35, 'Frost', 'Ä°lk sezon ile gelen savunma sÄ±nÄ±fÄ±ndaki Frost oldukÃ§a etkili bir operatÃ¶r Kendisi tuakÃ§Ä± olarak Ã¶n plana Ã§Ä±kmakta ve etrafa kurmuÅŸ olduÄŸu ayÄ± kapanlarÄ± ile dÃ¼ÅŸmanlarÄ± gafil avlayabiliyor. Ã–zellikle pencere diplerine ve kapÄ± altlarÄ±nÄ± kurmuÅŸ olduÄŸunuz kapanlarÄ±n Ã¼stlerini tel ile kamuflaj ettiÄŸinizde gÃ¶rÃ¼lmesi daha gÃ¼Ã§ bir hal alÄ±yor.\r\n\r\n', 'Frost.png', 2),
(36, ' Valkyrie', 'Valkyrie ile istediÄŸiniz bÃ¶lgelere ufak kameralar atabiliyorsunuz. Ã–zellikle bu kameralar ile dÃ¼ÅŸmanlarÄ±n nereden geldiÄŸini gÃ¶rebiliyor ve buna karÅŸÄ± Ã¶nceden Ã¶nleminizi alabiliyorsunuz.', 'Valkyrie.jpg', 2),
(37, 'Caveira', 'Caveira, iki ucuâ€™da keskin bir operatÃ¶r zira iyi oynadÄ±ÄŸÄ±nÄ±z taktirde maÃ§Ä± kazanabilir, kÃ¶tÃ¼ oynadÄ±ÄŸÄ±nÄ±z taktirde takÄ±m arkadaÅŸlarÄ±nÄ±zÄ± bir kiÅŸi eksik bÄ±rakÄ±p maÃ§Ä± kaybedebilirsiniz Ã§Ã¼nkÃ¼ caveira ile sÃ¼rekli olarak dolaÅŸmanÄ±z ve dÃ¼ÅŸmanÄ± arkalamanÄ±z gerekmekte. Kendisinin Ã¶zelliÄŸi ise koÅŸarken ayak seslerinin Ã§Ä±kmamasÄ±.  AyrÄ±ca dÃ¼ÅŸmanÄ± yere dÃ¼ÅŸÃ¼p sorgulayabilir ve diÄŸer dÃ¼ÅŸmanlarÄ±n haritada belli bir sÃ¼reliÄŸine gÃ¶rÃ¼lmesini saÄŸlayabilirsiniz.', 'Caveira.png', 2),
(38, 'Echo', 'Echo, kullandÄ±ÄŸÄ± tavanlarda asÄ±lÄ± kalabilen Ã¶zel dronu ile dÃ¼ÅŸmanlara ÅŸok dalgasÄ± atabiliyor. Bu ÅŸok dalgasÄ± ile dÃ¼ÅŸmanlar belli bir sÃ¼reliÄŸine gÃ¶rÃ¼ÅŸ alanlarÄ± bozuluyor bÃ¶ylece onlarÄ±n sizi vurmasÄ± Ã§ok daha zor bir hal alÄ±rken bu esnada dÃ¼ÅŸmanlarÄ± Ã§ok daha rahat bir ÅŸekilde gafil avlaya biliyorsunuz.', 'Echo.png', 2),
(39, 'Mira', 'Mira savunmada oldukÃ§a gerekli bir operatÃ¶r zira garaj bÃ¶lgesi olan haritalarda Ã¶zellikle almanÄ±z size avantaj saÄŸlayacaktÄ±r. Mira duvarlarda iki adet pencere aÃ§abiliyor. Bu pencere ile dÃ¼ÅŸmanÄ± rahatÃ§a gÃ¶rebiliyorsunuz ancak onlar pencerenin diÄŸer tarafÄ±ndan sizi gÃ¶remiyor. BÃ¶ylece bu pencereler ile taktiksel hamleler gerÃ§ekleÅŸtirebilirsiniz.\r\n\r\n', 'Mira.png', 2),
(40, 'Zofia', 'Zofia hem ÅŸok hemde patlayÄ±cÄ± bomba atabilen bir cihaz kullanÄ±yor,ÅŸarjÃ¶r deÄŸiÅŸtirmeye gerek duymayan namluya birden fazla bomba sÄ±kÄ±ÅŸtÄ±rÄ±lmÄ±ÅŸ bir cihaz,ÅŸok bombasÄ± 170- desibel bir ÅŸok dalgasÄ± yayarak,hem duyma hem gÃ¶rme yetisini etkileyebiliyor.PatlayÄ±cÄ± bomba ise herhangi bir yere deÄŸdiÄŸi anda patlayabilen bir bomba.', 'Zofia_Portrait.png', 1),
(41, 'Ying', 'Ying\'in en bÃ¼yÃ¼k Ã¶zelliÄŸi Ã¶zel flash bombasÄ± setiyle geliyor olmasÄ± ve bu flashlarÄ± Ã¼Ã§ farklÄ± ÅŸekilde atabiliyor olmasÄ±. Ãœstelik Ã¶zel gÃ¶zlÃ¼kleri sayesinde kendisi flashlanmÄ±yor. Ofansif operatÃ¶rlerden biri. Ä°ster flashÄ± direkt iÃ§eri sallÄ±yor, ister barikat altÄ±ndan yuvarlÄ±yor, isterse flashÄ± son saniyeye kadar elinde tutup bir anda patlatabiliyor.', 'Ying_Portrait.png', 1),
(42, 'Lesion', 'Lesion doÄŸru noktaya koyulduÄŸunda neredeyse gÃ¶rÃ¼nmez hale gelen zehirli tuzaklar kurabiliyo', 'Lesion_Portrait.png', 2),
(43, 'Ela', 'Ela Grzmot mayÄ±nlarÄ±na sahip. Bunlar duvarlara ve farklÄ± yÃ¼zeylere yapÄ±ÅŸabilen ve dÃ¼ÅŸmanÄ± geÃ§ici sÃ¼reliÄŸine yerine kilitleme Ã¶zelliÄŸine sahip bombalar. KilitlediÄŸi dÃ¼ÅŸmanÄ±nÄ± da kÄ±sa mesafede hemen infaz edebiliyor.', 'Ela_Portrait.png', 2),
(44, 'Dokkaebi', 'Ã–zel tabletinden kiÅŸilerin telefonunu arÄ±yor bu sÃ¼re iÃ§erisinde kiÅŸilerin telefon seslerini duyabiliyorsunuz.Bu sÄ±rada Ä°Q Ã¶zel yeteneÄŸi ile tam olarak yerlerini tespit edebiliyor.\r\n\r\n2. yeteneÄŸi olarak ise Ã¶len kiÅŸilerin cep telefonlarÄ± yere dÃ¼ÅŸÃ¼yor bu telefonlardan sadece defenderlarÄ±n yani savunucularÄ±n eriÅŸebildiÄŸi kameraya eriÅŸebiliyor!Tabi karÅŸÄ± takÄ±m bu sÃ¼re zarfÄ±nda telefonu kÄ±rarsa malum telefona ulaÅŸamÄ±yorsunuz ', 'Dokkaebi_Portrait.png', 1),
(45, 'Vigil', ' Vigil drone kameralarÄ±na GÃ–ZÃœKMÃœYOR!\r\nAyrÄ±ca bu Ã¶zelliÄŸi Ã§ok broken(aÅŸÄ±rÄ± gÃ¼Ã§lÃ¼)dÃ¼ÅŸÃ¼nebilirsiniz ancak merak etmeyin Ã§Ã¼nkÃ¼ Ã¶zelliÄŸi sÄ±nÄ±rsÄ±z bir ÅŸekillde kullanamÄ±yor zamana baÄŸlÄ± olarak harcanÄ±yor ve yeniden doluyor.\r\nNot:Unutmamak lazÄ±m ki Ä°Qâ€™nun monitÃ¶rÃ¼ ile Vigilâ€™Ä±n arkasÄ±ndaki jammerÄ± gÃ¶rebiliyoruz', 'Vigil_Portrait.png', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `com_sendername` varchar(50) NOT NULL,
  `com_senderemail` varchar(256) NOT NULL,
  `com_content` text NOT NULL,
  `com_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`com_id`, `com_sendername`, `com_senderemail`, `com_content`, `com_time`) VALUES
(30, 'Emrecan', 'emreblbl96@gmail.com', 'KapkanÄ±n tuzaklarÄ± oyunda beleÅŸ kill almak iÃ§in ideal keÅŸke hasar oranÄ± dÃ¼ÅŸsede Ã¶lmesek :D', '2017-12-24 09:15:46');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maps`
--

CREATE TABLE `maps` (
  `map_id` int(11) NOT NULL,
  `map_title` varchar(255) NOT NULL,
  `map_content` text NOT NULL,
  `map_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `maps`
--

INSERT INTO `maps` (`map_id`, `map_title`, `map_content`, `map_image`) VALUES
(13, 'BORDER', 'OrtadoÄŸu\'nun bir yerinde, Rainbow adlÄ± ekip, yerel kanun uygulamanÄ±n sÄ±nÄ±r denetimini ele geÃ§irmesine yardÄ±mcÄ± olmak iÃ§in Ã§aÄŸrÄ±ldÄ±. Eski ve yeni inÅŸaat ile aÃ§Ä±k hava yollarÄ±nÄ±n karÄ±ÅŸÄ±mÄ±, oyundaki en yÄ±kÄ±cÄ± ve aÃ§Ä±k haritalardan biridir.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/coastline.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-border-02_250248.jpg'),
(14, 'YACHT', 'Baffin Koyu\'nda, lÃ¼ks bir yat, gÃ¶vdeyi kÄ±ran bir buzdaÄŸÄ±na dÃ¼ÅŸtÃ¼. GÃ¶kkuÅŸaÄŸÄ±, karaya oturan tekneyi tanÄ±mlanamayan bir denizaltÄ± geminin yanÄ±na yerleÅŸtiÄŸinden korumak iÃ§in gÃ¶nderildi<br>\r\n<a href=https://rainbow6.ubisoft.com/siege/en-us/game-info/map/yacht.aspx>Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-yacht-03_236385.jpg'),
(15, 'BANK', 'LA SWAT gÃ¼Ã§leri iÃ§in simgesel bir karÅŸÄ±laÅŸma olan bu harita bÃ¼yÃ¼k bir bankaya yapÄ±lan saldÄ±rÄ±yÄ± tasvir ediyor. Odak noktasÄ±, binanÄ±n giderek daha kuvvetlendirilmiÅŸ alanlarÄ±na doÄŸru ilerledikÃ§e saldÄ±rganlarÄ±n ilerleme hissi vermesidir.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/bank.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-bank-07_229699.jpg'),
(17, 'CHALET', 'FransÄ±z Alpleri\'ndeki bir "aprÃ¨s-ski" daÄŸ evinde bir Ã§atÄ±ÅŸmada bulunan bu alan, iÃ§ mekanlarÄ±nÄ±n sÄ±cak ve rahat havasÄ±nÄ±, dÄ±ÅŸ kÄ±sÄ±mlarÄ±nÄ±n soÄŸuk, kÄ±sÄ±tlÄ± gÃ¶rÃ¼nÃ¼rlÃ¼ÄŸÃ¼yle tezat oluÅŸturuyor.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/chalet.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>\r\n', 'r6-game-info-map-chalet-11_229704.jpg'),
(18, 'CLUBHOUSE', '\r\nBu harita, bisikletÃ§i Ã§ete kulÃ¼bÃ¼ndeki bir saldÄ±rÄ±yÄ± tasvir ediyor. Tam bir bar, oyun masalarÄ± ve deri mobilyalara sahip olan bu karÄ±ÅŸÄ±k iÃ§ / dÄ±ÅŸ dÃ¼zen, saldÄ±rgan ve savunmacÄ± iÃ§in bir takÄ±m ilginÃ§ taktik imkÃ¢nlarÄ± sunar.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/clubhouse.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-clubhouse-06_229711.jpg'),
(19, 'CONSULATE', 'YÃ¼ksek riskli, yÃ¼ksek derecede gÃ¼venli bir kaleye sahip olan bu harita, FildiÅŸi Sahilleri\'ndeki FransÄ±z konsolosluÄŸuna dÃ¼zenlenen bir saldÄ±rÄ±yÄ± tasvir ediyor.\r\n<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/consulate.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-consulate-11_229714.jpg'),
(20, 'HEREFORD BASE', 'Ä°lk ve en ikonik CTU\'nun CTU eÄŸitim alanlarÄ±. SAS ajanlarÄ±, el sanatlarÄ±nÄ± ve burada da kontrplak hedefleri, kum torbalarÄ±, dikenli tel ve diÄŸer engellerin bir parÃ§asÄ±nÄ± Ã¶ÄŸreniyorlar. KuÅŸatma oyununun en temel Ã¶rneklerinden biri.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/hereford.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-hereford-13_229719.jpg'),
(21, 'HOUSE', 'AÅŸinalÄ±k ve savunmasÄ±z temalar Ã¼zerinde oynuyor, bu karÅŸÄ±laÅŸma tipik bir banliyÃ¶ evinde gerÃ§ekleÅŸir. YÄ±kÄ±cÄ± derinlik ve yeniden oynatÄ±labilirliÄŸin baÅŸlÄ±ca Ã¶rneÄŸidir ve klasik kuÅŸatma oyununun sergilendiÄŸi vitrinlerden biridir.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/house.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>\r\n', 'r6-game-info-map-house-15_229724.jpg'),
(22, 'KAFE DOSTOYEVSKY', 'Moskova\'nÄ±n merkezindeki bu birinci sÄ±nÄ±f kafe, ihtiÅŸamÄ±n ve cazibenin doruk noktasÄ±dÄ±r ve Spetsnaz gÃ¼Ã§leri iÃ§in doÄŸal bir mÃ¼dahale alanÄ±dÄ±r. Zirveye karizma evinde zulÃ¼m sÄ±rasÄ±nda terÃ¶ristler tarafÄ±ndan zemin katlandÄ± ve zengin, ÅŸÄ±k, klasik dekorun tahrip edilmesi bu haritanÄ±n kilit unsurlarÄ±ndan biri olacak.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/kafe_dostoyevsky.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-kafe-dostoyevsky-03_229729.jpg'),
(23, 'KANAL', 'Hamburg, Almanya\'nÄ±n sanayi bÃ¶lgesinde yer alan \'Kanal\', kanallar Ã¼zerinde stratejik baÄŸlantÄ± noktalarÄ± bulunan Ã§ok sayÄ±da bina iÃ§eriyor. BirÃ§ok kÃ¶prÃ¼, bina ve arazinin ilgili vantage noktalarÄ± tarafÄ±ndan yaratÄ±lmÄ±ÅŸ birÃ§ok ilginÃ§ stratejik olanaklara sahiptir.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/kanal.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>\r\n', 'r6-game-info-map-kanal-10_229734.jpg'),
(24, 'OREGON', '\'Oregon\', surtifiye hayatta kalma bileÅŸkesine yapÄ±lan bir saldÄ±rÄ±yÄ± tasvir etmektedir. Rustik, eklektik ve yaÅŸanmÄ±ÅŸ bir halde hissediyor ve etkili bir ÅŸekilde sÃ¼pÃ¼rÃ¼lÃ¼p tutmak iÃ§in uyarlanmÄ±ÅŸ taktikler gerektiren geniÅŸ, yayÄ±lmÄ±ÅŸ bir dÃ¼zen iÃ§eriyor.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/oregon.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-oregon-14_229739.jpg'),
(25, 'PRESIDENTIAL PLANE', '\r\nCTU operasyonu iÃ§in en ikonik ayarlardan bir tanesi olan bu baÅŸkanlÄ±k uÃ§aÄŸÄ± egzotik ve eÅŸsiz bir kuÅŸatma deneyimi sunuyor.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/presidential_plane.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-plane-12_229744.jpg'),
(26, 'COASTLINE', '\r\nÄ°spanya\'nÄ±n Ä°biza sahilini korumak iÃ§in Rainbow TakÄ±mÄ±na Ã§aÄŸrÄ±ldÄ±. G.E.O.\'nun en becerikli OperatÃ¶rlerinden ikisi, Ã¼nitelerine kendi benzersiz taktik uzmanlÄ±klarÄ±nÄ± saÄŸlamak iÃ§in seÃ§ildi. Ä°biza\'nÄ±n kayalÄ±k kÄ±yÄ±sÄ±nda duruyor, Balear hurmasÄ± geÃ§iyor ve tehdidi etkisiz hale getirmek iÃ§in gÃ¼rleyen barlarla dolaÅŸÄ±yor.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/coastline.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-coastline.jpg'),
(27, 'FAVELA', 'TakÄ±m Rainbow Favela\'nÄ±n gerginleÅŸtirilmesi ve kontrolÃ¼nÃ¼ ele geÃ§irmesi iÃ§in Ã§aÄŸrÄ±ldÄ±. Renkli ve dar caddeleri yÃ¼ksek gÃ¶rÃ¼ÅŸ noktalarÄ± ile karÄ±ÅŸtÄ±ran bu harita, bugÃ¼ne kadar en yÄ±kÄ±cÄ± hale getiren dÄ±ÅŸ kabuk tahribatÄ±nÄ± destekliyor.<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/favela.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-favela-02_263229.jpg'),
(28, 'SKYSCRAPER', 'Nagoya, Japonya\'daki GÃ¶kdelen\'in tepesinde tÃ¼nemiÅŸ olan zararlÄ± bir malikanede zarif bir Japon mimari eserini keÅŸfedeceksiniz. Modernite ve geleneÄŸin buluÅŸtuÄŸu sabah gÃ¼neÅŸinin bulanÄ±klÄ±ÄŸÄ±nda baÅŸ dÃ¶ndÃ¼rÃ¼cÃ¼ inceltmeler iÃ§in hazÄ±rlanÄ±n.\r\n<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/skyscraper.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-skyscraper-1_275806.jpg'),
(29, 'BARTLETT UNIVERSITY', 'Team Rainbow, yerel kolluk kuvvetlerine yardÄ±m etmek ve Cambridge, Massachusetts\'deki Bartlett Ãœniversitesi kontrolÃ¼nÃ¼ ele geÃ§irmek iÃ§in Ã§aÄŸrÄ±ldÄ±. Bu harita sÄ±cak bÃ¶lgeleri arasÄ±nda nefes alan asimetrik bir dÃ¼zen sunar. Tesislerin barikatlarÄ±nda dolaÅŸÄ±n ve yarÄ±n liderleri koruyan tuÄŸla duvarlardan patlayÄ±n.\r\n<br>\r\n<a href="https://rainbow6.ubisoft.com/siege/en-us/game-info/map/bartlett.aspx">Daha DetaylÄ± Bilgi Ä°Ã§in</a>', 'r6-game-info-map-bartlett-1_279891.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_pass` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`) VALUES
(1, 'admin', 'admin');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`ann_id`);

--
-- Tablo için indeksler `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`char_id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Tablo için indeksler `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`map_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `announcements`
--
ALTER TABLE `announcements`
  MODIFY `ann_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `characters`
--
ALTER TABLE `characters`
  MODIFY `char_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Tablo için AUTO_INCREMENT değeri `maps`
--
ALTER TABLE `maps`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
