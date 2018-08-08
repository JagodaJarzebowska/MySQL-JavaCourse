-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: j1b
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `adresy`
--

DROP TABLE IF EXISTS `adresy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresy` (
  `id_adresu` int(11) NOT NULL,
  `ulica` varchar(50) DEFAULT NULL,
  `numer_domu` varchar(5) DEFAULT NULL,
  `numer_mieszkania` varchar(5) DEFAULT NULL,
  `kod_pocztowy` varchar(10) DEFAULT NULL,
  `miasto` varchar(30) DEFAULT NULL,
  `panstwo` varchar(20) DEFAULT NULL,
  `wojewodztwo` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_adresu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresy`
--

LOCK TABLES `adresy` WRITE;
/*!40000 ALTER TABLE `adresy` DISABLE KEYS */;
INSERT INTO `adresy` VALUES (1,'ul. Generala Stanislawa Taczaka','01','79','73070','Ostrów Mazowiecka','Polska','swietokrzyskie'),(2,'ul. Melchiora Wankowicza','66','20','85017','Tomaszów Mazowiecki','Polska','lódzkie'),(3,'ul. Kaszubska','83','59','76973','Miedzyrzecz','Polska','lubelskie'),(4,'ul. 16 Pulku Ulanow Wielkopolskich','06',NULL,'85167','Sandomierz','Polska','mazowieckie'),(5,'ul. Ksiedza Stanislawa Streicha','56','46','18121','Chelm','Polska','wielkopolskie'),(6,'ul. Krzywa','06',NULL,'70253','Nowy Sacz','Polska','podkarpackie'),(7,'ul. Przelomowa','94','28','46871','Konskie','Polska','malopolskie'),(8,'ul. Zakopianska','81','68','94205','Malbork','Polska','pomorskie'),(9,'ul. Zamknieta','70','35','28326','Debica','Polska','lubelskie'),(10,'ul. Seminaryjna','97',NULL,'22384','Biala Podlaska','Polska','mazowieckie'),(11,'ul. Jakuba Wojciechowskiego','86','69','94341','Zamosc','Polska','opolskie'),(12,'ul. Jana Bielawskiego','13','87','46124','Radom','Polska','mazowieckie'),(13,'ul. Szafirowa','68',NULL,'43010','Ketrzyn','Polska','mazowieckie'),(14,'ul. Tarnowska','41','79','14408','Jelenia Góra','Polska','kujawsko-pomorskie'),(15,'ul. Pijarow','14','89','35063','Szczecinek','Polska','warminsko-mazurskie'),(16,'ul. Stefana Okrzei','43',NULL,'66198','Swidwin','Polska','malopolskie'),(17,'ul. Krzywa','74','46','85182','Sierpc','Polska','lubuskie'),(18,'ul. Generala Jozefa Hallera','99',NULL,'73557','Walcz','Polska','warminsko-mazurskie'),(19,'ul. Przemyslowa','59',NULL,'94335','Krapkowice','Polska','opolskie'),(20,'ul. Malzowa','63','93','27369','Ostroleka','Polska','kujawsko-pomorskie'),(21,'ul. Grudziadzka','04','95','37636','Kozienice','Polska','swietokrzyskie'),(22,'ul. Okolna','03','65','37460','Pila','Polska','opolskie'),(23,'ul. Torfowa','78','01','88206','Hrubieszów','Polska','lubelskie'),(24,'ul. Swobodna','91',NULL,'39973','Zabrze','Polska','kujawsko-pomorskie'),(25,'ul. Michala Grobelskiego','07','54','54358','Ostrów Mazowiecka','Polska','kujawsko-pomorskie'),(26,'ul. Kujawska','02','54','91563','Zabrze','Polska','lódzkie'),(27,'ul. Ludowa','89','41','33218','Walbrzych','Polska','mazowieckie'),(28,'ul. Niewiescinska','71',NULL,'12771','Tarnobrzeg','Polska','zachodniopomorskie'),(29,'ul. Wyzwolenia','85','56','45471','Krapkowice','Polska','kujawsko-pomorskie'),(30,'ul. Zygmunta Moczynskiego','37','13','78714','Busko-Zdrój','Polska','dolnoslaskie'),(31,'ul. 2 Pazdziernika','06','72','40967','Nysa','Polska','kujawsko-pomorskie'),(32,'ul. Drozdow','62','31','43212','Rypin','Polska','mazowieckie'),(33,'ul. Henryka Sienkiewicza','11','97','68098','Ostroleka','Polska','lódzkie'),(34,'ul. Juhasow','66','22','99104','Kolo','Polska','podkarpackie'),(35,'ul. Kanalowa','59','75','40754','Kedzierzyn-Kozle','Polska','swietokrzyskie'),(36,'ul. Ku Wiatrakom','73','04','04820','Mielec','Polska','pomorskie'),(37,'ul. Trociowa','09','64','61161','Nisko','Polska','swietokrzyskie'),(38,'ul. Stanislawa labendzinskiego','08',NULL,'92005','Kluczbork','Polska','swietokrzyskie'),(39,'ul. Wislana','20','61','67482','Olecko','Polska','zachodniopomorskie'),(40,'ul. Boczna','42','63','97742','Jastrzebie-Zdrój','Polska','warminsko-mazurskie'),(41,'ul. Jesionowa','22','93','22302','Wielun','Polska','podlaskie'),(42,'ul. Niecala','84','97','28722','Radom','Polska','opolskie'),(43,'ul. Czyzykowa','94','35','77956','Boleslawiec','Polska','wielkopolskie'),(44,'ul. sniezna','61','33','19621','Sanok','Polska','lódzkie'),(45,'ul. Konstantego Chmielewskiego','70',NULL,'29195','Zary','Polska','dolnoslaskie'),(46,'ul. Karpacka','94','09','00389','Ozorków','Polska','mazowieckie'),(47,'ul. zrodlana','93',NULL,'05265','Szczytno','Polska','lubelskie'),(48,'ul. Lubelska','66','19','15515','Walbrzych','Polska','dolnoslaskie'),(49,'ul. Generala Wiktora ThommÃ©e','78','51','99907','Wloclawek','Polska','swietokrzyskie'),(50,'ul. Kosmonautow','48','72','12659','Boleslawiec','Polska','malopolskie'),(51,'ul. Stawowa','40','89','09696','Sandomierz','Polska','mazowieckie'),(52,'ul. Skalarowa','22','69','98032','Zagan','Polska','podlaskie'),(53,'ul. Raclawicka','98',NULL,'67533','Biala Podlaska','Polska','dolnoslaskie'),(54,'ul. Generala Jozefa Dwernickiego','35','82','02482','Bytom','Polska','opolskie'),(55,'ul. Pod Blankami','48','85','93351','Dzierzoniów','Polska','opolskie'),(56,'ul. Wiecborska','84','28','80824','Klodzko','Polska','zachodniopomorskie'),(57,'ul. Kornela Ujejskiego','40',NULL,'20690','Grajewo','Polska','opolskie'),(58,'ul. Walbrzyska','77',NULL,'19545','Radzyn Podlaski','Polska','podlaskie'),(59,'ul. Janka z Czarnkowa','33','62','59238','Kutno','Polska','podlaskie'),(60,'ul. Jana Maciaszka','44','09','78918','Mragowo','Polska','podkarpackie'),(61,'ul. Sztumska','23','50','15231','Kamienna Góra','Polska','podlaskie'),(62,'ul. Artyleryjska','43','91','55432','Strzelce Opolskie','Polska','dolnoslaskie'),(63,'ul. Polarna','89','38','49321','Jaslo','Polska','kujawsko-pomorskie'),(64,'ul. Kormoranow','42','41','28610','Chrzanów','Polska','mazowieckie'),(65,'ul. Perkozowa','94','38','94230','Brzeg','Polska','wielkopolskie'),(66,'ul. Bydgoskich Olimpijczykow','35','20','88169','Kamienna Góra','Polska','lódzkie'),(67,'ul. Pszczynska','81','89','26618','Zamosc','Polska','lubuskie'),(68,'ul. Kliniczna','02','08','79216','Tomaszów Mazowiecki','Polska','podkarpackie'),(69,'ul. Galla Anonima','64','56','27979','Bytom','Polska','podkarpackie'),(70,'ul. Sepolenska','39',NULL,'87648','Pila','Polska','warminsko-mazurskie'),(71,'ul. Rozana','79','16','94265','Bartoszyce','Polska','slaskie'),(72,'ul. Pucka','25','09','93201','Krasnystaw','Polska','opolskie'),(73,'ul. Leborska','02',NULL,'68673','Szczecinek','Polska','swietokrzyskie'),(74,'ul. Blotna','71',NULL,'60821','Dzialdowo','Polska','slaskie'),(75,'ul. Przylesna','14','44','33675','Mielec','Polska','wielkopolskie'),(76,'ul. Juliana Prejsa','56','26','58558','Konskie','Polska','pomorskie'),(77,'ul. Konstantego Krygera','49',NULL,'18556','Sosnowiec','Polska','podkarpackie'),(78,'ul. Partyzantow','82','56','05238','Kedzierzyn-Kozle','Polska','dolnoslaskie'),(79,'ul. Ksiedza Zygmunta Trybowskiego','95',NULL,'09961','Dzierzoniów','Polska','warminsko-mazurskie'),(80,'ul. Ksiedza Jana Konopczynskiego','56',NULL,'29081','Gizycko','Polska','lubuskie'),(81,'ul. Serbska','89',NULL,'23192','Klodzko','Polska','dolnoslaskie'),(82,'ul. Wladyslawa Piorka','18','63','73008','Dzialdowo','Polska','malopolskie'),(83,'ul. Iglasta','68','90','74973','Braniewo','Polska','opolskie'),(84,'ul. 19 Marca 1981 Roku','96','14','35393','Kutno','Polska','lubelskie'),(85,'ul. Podkowa','34','90','80972','Zlotów','Polska','pomorskie'),(86,'ul. Na Wzgorzu','42',NULL,'59007','Pila','Polska','lubelskie'),(87,'ul. Teodora Kocerki','69','91','05803','Kamienna Góra','Polska','podkarpackie'),(88,'ul. Edmunda Biernackiego','59',NULL,'00603','Strzelce Opolskie','Polska','slaskie'),(89,'ul. Zdrowotna','90','85','50802','Jaslo','Polska','mazowieckie'),(90,'ul. Modlinska','32','16','16262','Jastrzebie-Zdrój','Polska','wielkopolskie'),(91,'ul. Lawinowa','43','52','84784','Nowa Sól','Polska','warminsko-mazurskie'),(92,'ul. Podchorazych','97','18','03818','Przemysl','Polska','dolnoslaskie'),(93,'ul. Dabrowa','08','75','23700','Walcz','Polska','wielkopolskie'),(94,'ul. Wolna','91',NULL,'97062','Stalowa Wola','Polska','pomorskie'),(95,'ul. Sielska','25','15','74413','Bartoszyce','Polska','lódzkie'),(96,'ul. Spoldzielcza','73','54','44257','Debica','Polska','lubelskie'),(97,'ul. sniegowa','18','74','77732','Sosnowiec','Polska','wielkopolskie'),(98,'ul. Urodzajna','55','52','57006','Bartoszyce','Polska','lubuskie'),(99,'ul. Przy Boznicy','91','66','03791','Konin','Polska','lubuskie'),(100,'ul. Strzegowska','44','95','48241','Nisko','Polska','kujawsko-pomorskie');
/*!40000 ALTER TABLE `adresy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firmy`
--

DROP TABLE IF EXISTS `firmy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firmy` (
  `id_firmy` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `ulica` varchar(50) DEFAULT NULL,
  `numer_domu` varchar(5) DEFAULT NULL,
  `numer_mieszkania` varchar(5) DEFAULT NULL,
  `nip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_firmy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firmy`
--

LOCK TABLES `firmy` WRITE;
/*!40000 ALTER TABLE `firmy` DISABLE KEYS */;
INSERT INTO `firmy` VALUES (1,'Kazar','ul. Gorczanska','49',NULL,'0349734529'),(2,'PEPSI','ul. Wladyslawa Odonica','86',NULL,'8083579347'),(3,'Saturn','ul. Podolska','25',NULL,'8461394795'),(4,'Logon','ul. Jozefa Chelmonskiego','53',NULL,'8855520197'),(5,'Big Star','ul. Armii Ludowej','99',NULL,'9408552056'),(6,'Saturn','ul. Ksiedza Piotra Wawrzyniaka','58',NULL,'8260669918'),(7,'Luxmed','ul. Czeslawa Nieduszynskiego','53',NULL,'6431653677'),(8,'Biedronka','ul. Sportowa','85','38','9638575415'),(9,'Beko','ul. Komisji Edukacji Narodowej','69',NULL,'7009947937'),(10,'Fotolumo','ul. Ruczaj','61','90','8812728365'),(11,'Kazar','ul. zurawinowa','17','31','3245312833'),(12,'Straz Pozarna ','ul. Msciwoja','79','26','2435890851'),(13,'Restauracja Neon','ul. Adama Naruszewicza','31',NULL,'0734745931'),(14,'Biedronka','ul. Rajmunda Palubickiego','20','69','9708473183'),(15,'Rossmann','ul. Ksiedza Ignacego Skorupki','20','78','4057314086'),(16,'Restauracja Neon','ul. Gdynska','70',NULL,'5355263851'),(17,'Timberland','ul. Dobrzynska','03','71','0719365521'),(18,'COCA COLA','ul. Kruszwicka','11',NULL,'3518760160'),(19,'COCA COLA','ul. Tadeusza Kosciuszki','25','00','9295093680'),(20,'COCA COLA','ul. Dzialdowska','03',NULL,'7047057767'),(21,'Pizza Mario','ul. Planty','76',NULL,'1395489438'),(22,'Restauracja Neon','ul. Wisniowa','11','66','8165107350'),(23,'PEPSI','ul. zolnierska','58','85','7299386273'),(24,'Microsoft','ul. Kasztanowa','95','25','1173500679'),(25,'Fotolumo','ul. Plowiecka','48',NULL,'4166391277'),(26,'Rossmann','ul. Wroblowa','54',NULL,'1067276805'),(27,'Big Star','ul. Wrzosowa','69','10','7586653123'),(28,'Ecco','ul. Linowa','81',NULL,'0241049316'),(29,'Huge Games','ul. Unislawska','40',NULL,'1592822942'),(30,'Big Star','ul. Ksiedza Stanislawa Streicha','66','25','2013921940'),(31,'COCA COLA','ul. Chojnicka','54','25','0065614900'),(32,'Saturn','ul. Ku Wiatrakom','58',NULL,'1371984658'),(33,'Big Star','ul. Kuznicka','20','05','2645169561'),(34,'Pizza Mario','ul. Generalska','19','22','7539015330'),(35,'Carrefour','ul. Blotna','84',NULL,'9638082327'),(36,'Straz Pozarna ','ul. Magnuszewska','09',NULL,'9772681006'),(37,'Piotr i Pawel','ul. swietej Trojcy','49','55','4418345984'),(38,'Poczta Polska','ul. Boleslawa Marcinczaka','08','60','0987233377'),(39,'Carrefour','ul. Powstancow Wielkopolskich','45',NULL,'2609915510'),(40,'Timberland','ul. Biedronkowa','64','93','1476899745'),(41,'Ecco','ul. Jozefa Chelmonskiego','09',NULL,'8298695738'),(42,'Biedronka','ul. Spadzista','12','20','0295840443'),(43,'Mobica','ul. lobzenicka','54',NULL,'8554899735'),(44,'Kaufland','ul. Tczewska','71','14','0081014894'),(45,'Fotolumo','ul. Wladyslawa IV','59','84','7292533391'),(46,'Tesco','ul. Wladyslawa Baranowskiego','10','83','5858298079'),(47,'Huge Games','ul. Ludowa','27',NULL,'4421865518'),(48,'Timberland','ul. Stanislawa Noakowskiego','74',NULL,'7690342224'),(49,'Fotolumo','ul. Wesola','73','30','2062143192'),(50,'Microsoft','ul. Serocka','10',NULL,'0579816786');
/*!40000 ALTER TABLE `firmy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy`
--

DROP TABLE IF EXISTS `pracownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `kolor_oczu` varchar(15) DEFAULT NULL,
  `wzrost` smallint(6) DEFAULT NULL,
  `plec` char(1) DEFAULT NULL,
  `telefon` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `PESEL` varchar(11) DEFAULT NULL,
  `data_urodzin` date DEFAULT NULL,
  `id_stanowiska` int(11) DEFAULT NULL,
  `wynagrodzenie` int(11) DEFAULT NULL,
  `id_firmy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pracownika`),
  KEY `id_stanowiska` (`id_stanowiska`),
  KEY `id_firmy` (`id_firmy`),
  CONSTRAINT `pracownicy_ibfk_1` FOREIGN KEY (`id_stanowiska`) REFERENCES `stanowiska` (`id_stanowiska`),
  CONSTRAINT `pracownicy_ibfk_2` FOREIGN KEY (`id_firmy`) REFERENCES `firmy` (`id_firmy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy`
--

LOCK TABLES `pracownicy` WRITE;
/*!40000 ALTER TABLE `pracownicy` DISABLE KEYS */;
INSERT INTO `pracownicy` VALUES (1,'Arnold','Sokol','blekitny',179,'M',NULL,'BiancaMorton@mymail.nl','42180511710','1981-11-18',11,7500,7),(2,'Zenon','Grzelak','szary',180,'M','+48496043494','HankHendrix2@web.nl','40678702676','1976-06-11',11,2000,7),(3,'Amadeusz','Hajduk','czarny',200,'M','+48890317650','Ann.Bernstein@msn.no','16328304808','1979-03-21',13,8000,7),(4,'Ireneusz','Urbaniak','szary',179,'M','+48298771627','H.Kellock3@myspace.net','07819143935','1957-11-14',13,2100,12),(5,'Oliwia','Wieczorek','piwny',172,'K','+48854559419','K.Laudanski@myspace.us','08392276917','1978-04-07',13,15000,22),(7,'Patryk','Dudek','niebieski',202,'M','+48350849245','Bas.Pierce3@myspace.org','10672708089','1967-03-24',4,5000,34),(8,'Iwona','Zygmunt','zielony',200,'K','+48762940560','Vincent.Framus@yahoo.es','57529842246','1959-01-17',15,2000,37),(9,'Regina','Borowiec','zielony',187,'K','+48624874618','NadineWood@mail.us','03076458170','1979-06-26',15,5000,37),(10,'Stanislawa','Pawlik','blekitny',157,'K','+48053462348','PGriffioen@gmail.nl','18115998251','1976-11-16',24,3000,45),(11,'Czeslawa','Szyszka','niebieski',152,'K','+48672397856','Matt.Esperiza@aol.no','21576953665','1986-07-17',24,2000,50),(12,'Adrianna','Dominiak','szary',158,'K','+48726111765','Hans.Conley4@lycos.org','95676990607','1994-02-23',24,15000,50),(13,'Aldona','Przybyla','blekitny',164,'K','+48955030370','N.Uitergeest@gmail.cn','91190771021','1962-10-24',5,10000,50),(14,'Stanislawa','Milczarek','piwny',172,'K','+48830151816','KylieGerschkow5@gawab.it','11593934753','1990-12-09',5,5000,7),(15,'Amadeusz','Skowron','brazowy',155,'M','+48106012841','LeonMeterson@mymail.be','91007318154','1988-04-02',7,10000,16),(16,'Patryk','Czyz','niebieski',191,'M','+48004228469','YBertelson2@mymail.es','30351422621','1992-12-20',9,5000,19),(17,'Ewa','Sobieraj','zielony',205,'K','+48439755476','Fons.Schubert@mobileme.com','52802938154','1957-07-28',9,7500,19),(18,'Ewelina','Szulc','zielony',155,'K','+48045902817','ICramer@mail.cc','56443571712','1965-12-30',9,15000,19),(19,'Marceli','Janus','czarny',201,'M','+48652395042','Michael.Friedman@mymail.it','17458257016','1951-06-26',11,10000,21),(20,'Iwona','Kapusta','niebieski',183,'K','+48035011945','LynnNoteboom1@kpn.gov','04122283880','1974-09-13',11,5000,25),(21,'Stella','Bujak','czarny',179,'K','+48373364953','BartVanderoever4@telfort.no','46778000748','1955-05-06',20,2100,25),(22,'Herbert','Michalek','szary',168,'M','+48656328613','SGeoppo3@msn.us','66855424705','1951-09-08',20,15000,25),(23,'Olga','Kazmierczak','niebieski',186,'K','+48588850511','PaulSchmidt@telfort.nl','66096751089','1976-09-20',6,2000,26),(24,'Roksana','Krupa','blekitny',169,'K','+48619394984','KimUprovski1@kpn.no','45318410255','1959-08-09',6,15000,26),(25,'Lidia','Janik','zielony',193,'K','+48753576815','HansDeleo2@dolfijn.org','89003936532','1998-06-14',6,10000,30),(26,'Sara','Lasota','niebieski',160,'K','+48819743420','William.Bloom5@mobileme.com','63555377874','1985-08-03',8,2500,30),(27,'Donald','Ciesla','szary',178,'M','+48943460521','HansDurso1@weboffice.no','79032107293','1968-06-25',8,3000,30),(28,'Grzegorz','Adamiak','szary',200,'M','+48691575243','Fred.Jones@mail.ca','67760239027','1960-12-29',15,10000,40),(29,'Bronislaw','Szczesny','szary',167,'M','+48589897243','Bas.Prior@excite.ca','93647314213','1986-09-14',15,7500,45),(30,'Gustaw','Socha','czarny',173,'M','+48181576714','D.Fernandez@mymail.gov','67187592066','1966-03-29',15,7500,45),(31,'Karina','Matusiak','szary',154,'K','+48747505016','Ann.Pengilly1@libero.no','78903168360','1977-11-22',20,10000,45),(32,'Miroslawa','Galazka','piwny',178,'K','+48675146019','William.Raines@web.org','06737268725','1961-11-01',20,25000,3),(33,'Dominik','Zawada','szary',152,'M','+48844975506','RickLittle2@excite.net','21966174821','1976-07-25',23,2100,8),(34,'Zbigniew','Sobczak','zielony',191,'M','+48424480733','M.Howe@kpn.dk','97717353377','1969-08-28',7,10000,8),(35,'Maksymilian','Rak','piwny',173,'M','+48480837691','Hans.Chwatal@mobileme.dk','22542859171','1998-01-17',8,2800,8),(36,'Teodor','Witek','blekitny',153,'M','+48246877820','HWarner@freeweb.de','69536200748','1951-09-27',15,5000,15),(37,'Olaf','Slowik','niebieski',184,'M','+48426138432','JPress4@telfort.es','23941310137','1970-05-08',15,2500,15),(38,'Stanislawa','Socha','szary',190,'K','+48251842942','FreddyHerzog@weboffice.cn','82407040780','1951-04-02',15,7500,22),(39,'Czeslaw','Mucha','piwny',190,'M','+48486173562','MartReames@live.cc','63070083725','1982-11-21',2,5000,28),(40,'Alina','Kasprzyk','niebieski',190,'K','+48359832772','BGua Lima4@gawab.net','45016911714','1966-07-24',2,2800,30),(41,'lukasz','Stanek','czarny',179,'M','+48584178923','EEmerson5@aol.no','44353181592','1952-10-17',2,8000,30),(42,'Igor','lukasik','piwny',169,'M','+48625560369','DanPetterson4@mobileme.org','09911614373','1976-12-29',9,2000,38),(43,'Kornelia','Hajduk','czarny',162,'K','+48728178426','I.Nahay@excite.ca','81649517735','1975-11-23',9,5000,38),(44,'Iga','Witczak','zielony',190,'K','+48055966273','Hank.Brady1@mobileme.org','65055859413','1981-10-13',11,2800,38),(45,'Julita','Kuc','zielony',162,'K','+48415005528','BrendToreau@myspace.cc','86855832166','1978-08-22',11,2000,39),(46,'Szymon','Kacprzak','niebieski',155,'M','+48607288133','Frank.Bruno5@excite.be','71095212942','1979-06-04',21,2500,39),(47,'Przemyslaw','Jarosz','zielony',166,'M','+48668075783','Peter.Poplock@live.nl','48713827088','1967-04-29',21,8000,39),(48,'Lidia','Kulik','brazowy',183,'K','+48912237169','E.Haynes@excite.co.uk','49568379490','1961-08-26',21,9000,41),(49,'Gerard','Socha','brazowy',182,'M','+48552020246','BiancaHuston@yahoo.org','74237383170','1963-06-16',4,2800,49),(50,'Leszek','luczak','szary',199,'M','+48772673844','FransCramer@web.be','36534507131','1952-11-03',4,15000,6),(51,'Mariola','Wrobel','szary',179,'K','+48390756521','SPolti@yahoo.cn','91077741579','1991-09-24',15,2100,6),(52,'Mieczyslaw','Nawrot','zielony',200,'M','+48336520044','H.Sterrett5@dolfijn.gov','46677504329','1962-06-16',19,25000,6),(53,'Nina','Krysiak','brazowy',174,'K','+48303693454','Sydney.Friedman@freeweb.us','71360866014','1991-03-12',24,7500,7),(54,'Kajetan','Stepien','czarny',158,'M','+48168017300','BiancaKnight@telefonica.com','77453255993','1998-02-20',24,2500,7),(55,'Dominik','Augustyniak','czarny',166,'M','+48406148128','FreddyMorton2@gmail.net','50062953103','1970-01-05',24,8000,17),(56,'Wioletta','Gawlik','niebieski',202,'K','+48316821587','Bianca.DeWald1@hotmail.org','37572118464','1956-07-12',5,7500,27),(57,'Olga','Kaluza','zielony',192,'K','+48627138353','Brent.Anderson@freeweb.es','13419502424','1967-06-07',5,25000,27),(58,'Ferdynand','Bober','zielony',173,'M','+48268153214','PattyHollman2@myspace.fr','26992648464','1952-03-28',13,9000,37),(59,'Teresa','sliwa','blekitny',175,'K','+48761090985','TreesOyler4@myspace.ca','49863333825','1955-02-10',19,10000,42),(60,'Emil','Szczepaniak','niebieski',176,'M','+48623061677','FrankyGrote2@live.us','26334551589','1952-10-11',1,7500,42),(61,'Dominik','Paluch','zielony',188,'M','+48412524388','Ronald.Arden@mobileme.fr','07420954271','1979-02-16',1,2100,42),(62,'Zenon','Matusiak','blekitny',177,'M','+48739819132','TonArcadi@freeweb.us','65666002081','1959-05-23',1,2800,43),(63,'Pawel','Stepniak','niebieski',162,'M','+48825663568','LDitmanen@mymail.net','92836137975','1987-04-07',14,8000,43),(64,'Olaf','Sieradzki','brazowy',172,'M','+48813218492','GCappello@yahoo.ca','40911708208','1955-08-09',14,9000,43),(65,'Eryk','Milczarek','czarny',176,'M','+48827633918','YFreed@mymail.es','33433427659','1963-11-13',19,7500,1),(66,'Feliks','Konieczny','czarny',153,'M','+48014866091','P.Conley3@yahoo.us','62583610740','1965-07-21',19,3000,1),(67,'Ada','Grzegorczyk','szary',164,'K','+48190524204','K.Foreman1@weboffice.cn','08675112478','1994-09-05',23,5000,1),(68,'Hilary','Szulc','brazowy',188,'M','+48392974475','P.DeWald5@yahoo.us','13535436974','1971-06-15',1,3000,4),(69,'Wiktor','Wrobel','zielony',184,'M','+48109896526','MandyBernstein@myspace.gov','85439346042','1973-02-13',4,7500,4),(70,'Aldona','Bartosik','piwny',205,'K','+48297633867','KStewart@hotmail.dk','09768769322','1996-09-13',6,15000,8),(71,'Cecylia','Dudziak','piwny',182,'K','+48967517885','Johan.Hopper@msn.cn','32733057446','1950-05-31',6,25000,8),(72,'Hubert','Musial','blekitny',173,'M','+48775929342','BiancaDepew@weboffice.dk','69042553368','1960-07-18',19,2800,15),(73,'Beniamin','Bialas','szary',175,'M','+48548148410','K.Frega3@msn.gov','10347823399','1984-02-02',6,2500,15),(74,'Kornelia','Pasternak','zielony',175,'K','+48254939618','AnnWicks2@excite.com','40242957309','1989-12-21',6,2500,25),(75,'Lucjan','Wrona','niebieski',159,'M','+48007565515','Sigrid.Alspaugh@telefonica.us','76810348989','1980-02-19',15,15000,25),(76,'Robert','Galazka','czarny',199,'M','+48866779083','NadineStannard1@libero.no','96362918574','1961-04-24',16,10000,25),(77,'Helena','Kowalczyk','czarny',168,'K','+48143308846','YYinger5@mail.gov','65898145983','1952-07-12',16,7500,33),(78,'Wojciech','Czech','niebieski',189,'M','+48372464514','Maddy.Geoppo@aol.gov','65953248831','1986-02-26',16,15000,38),(79,'Patryk','Cichon','niebieski',164,'M','+48989884131','Ton.Hankins3@telfort.com','32300434749','1990-01-06',24,15000,38),(80,'Boleslaw','Majchrzak','blekitny',152,'M','+48353140632','Johan.Newman2@msn.de','57190260838','1989-09-21',4,10000,42),(81,'Rozalia','Kolasa','brazowy',160,'K','+48597910185','FonsBrown@live.com','30523529327','1959-05-12',4,15000,42),(82,'Franciszka','Zareba','szary',165,'K','+48963492948','FonsWooten1@aol.org','58971200472','1973-07-10',9,9000,48),(83,'Juliusz','Szczepaniak','szary',184,'M','+48299583134','EGunter5@telfort.no','44857253843','1969-04-23',13,9000,6),(84,'Antoni','Wojcik','brazowy',183,'M','+48498633975','H.Toreau@lycos.cn','96496051311','1961-08-10',13,2800,6),(85,'Zuzanna','Pasternak','piwny',167,'K','+48934242684','AnnAnderson@mobileme.cc','19953042528','1985-01-21',13,8000,9),(86,'Jacek','Bober','zielony',154,'M','+48633069426','IStevens3@aol.cn','32828465067','1974-02-02',15,2100,9),(87,'Sonia','Filipek','szary',196,'K','+48920436707','Fons.Guyer@myspace.de','01568271486','1983-10-19',17,25000,10),(88,'Beniamin','Lis','piwny',186,'M','+48863300896','RogerReames@libero.it','70635238717','1966-09-05',21,10000,12),(89,'Hilary','Kobus','zielony',202,'M','+48168951571','WilliamSlemp@telfort.cn','65727497521','1992-12-04',1,9000,17),(90,'Leokadia','Janus','piwny',176,'K','+48830889856','H.Ray5@weboffice.cc','55913859711','1954-12-27',1,2500,17),(91,'Anita','Gil','blekitny',200,'K','+48854814552','Bill.Pickering@aol.org','70855357654','1981-12-31',7,2500,17),(92,'Eugenia','Bogusz','brazowy',196,'K','+48834635770','LStorrs@freeweb.fr','39595532195','1992-07-02',8,2800,20),(93,'Miroslaw','Hajduk','szary',151,'M','+48860841286','LMarkovi@gawab.be','78389327562','1997-09-15',8,25000,27),(94,'Andrzej','Kopec','brazowy',186,'M','+48301517436','VincentThompson@aol.org','66637019972','1997-04-12',8,3000,31),(95,'Aleksandra','Sobczak','niebieski',158,'K','+48414543955','Brent.Voigt2@excite.dk','70194723429','1969-10-08',20,2000,31),(96,'Irmina','Adamczak','zielony',161,'K','+48569640969','William.Brumley1@freeweb.dk','34980423395','1985-03-13',20,10000,37),(97,'Teresa','Bujak','blekitny',180,'K','+48069340047','L.Byrnes1@telefonica.cn','72127791543','1971-05-18',20,7500,37),(98,'Jaroslaw','Krakowiak','niebieski',158,'K','+48811825713','I.Miller5@hotmail.org','83185270244','1996-06-05',5,7500,37),(99,'Dionizy','Blaszczyk','czarny',175,'M','+48660311874','Lindsy.Brown3@lycos.co.uk','70119607485','1992-09-01',5,2100,41),(100,'Ewa','Kepa','szary',194,'K','+48352083993','NickComeau3@gawab.ca','12057793518','1971-06-28',14,7500,41),(101,'Aleksy','Kedziora','niebieski',187,'M','+48533584496','RicoBarnett@dolfijn.ca','72404890973','1992-04-14',14,2000,44);
/*!40000 ALTER TABLE `pracownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pracownicy_adresy`
--

DROP TABLE IF EXISTS `pracownicy_adresy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pracownicy_adresy` (
  `id_pracownika` int(11) NOT NULL,
  `id_adresu` int(11) NOT NULL,
  `od` date DEFAULT NULL,
  `do` date DEFAULT NULL,
  KEY `id_pracownika` (`id_pracownika`),
  KEY `id_adresu` (`id_adresu`),
  CONSTRAINT `pracownicy_adresy_ibfk_1` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id_pracownika`),
  CONSTRAINT `pracownicy_adresy_ibfk_2` FOREIGN KEY (`id_adresu`) REFERENCES `adresy` (`id_adresu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pracownicy_adresy`
--

LOCK TABLES `pracownicy_adresy` WRITE;
/*!40000 ALTER TABLE `pracownicy_adresy` DISABLE KEYS */;
INSERT INTO `pracownicy_adresy` VALUES (39,5,'2002-08-20','2017-09-02'),(39,7,'2004-11-16','2003-03-18'),(49,16,'2005-09-15','2006-09-18'),(57,16,'2000-06-27','2010-09-27'),(57,16,'2000-12-01','2004-02-08'),(74,24,'2003-04-09','2009-09-10'),(74,30,'2002-05-12','2013-05-12'),(74,30,'2005-07-08','2009-02-17'),(27,30,'2000-09-10','2008-07-31'),(27,37,'2001-08-13','2007-12-27'),(93,37,'2005-05-23','2015-10-30'),(43,38,'2005-07-26','2002-04-15'),(43,38,'2003-01-20','2011-01-28'),(43,38,'2005-04-14','2011-06-04'),(19,45,'2005-10-03','2007-01-13'),(85,45,'2001-05-10','2001-04-27'),(63,45,'2003-06-07','2014-08-05'),(64,49,'2003-04-15','2008-01-28'),(64,49,'2001-03-18','2001-12-16'),(36,55,'2000-03-17','2001-07-21'),(77,55,'2001-07-15','2015-12-30'),(77,60,'2002-09-20','2006-12-01'),(21,60,'2002-10-31','2002-11-27'),(21,60,'2001-09-15','2001-12-18'),(21,62,'2003-03-06','2016-02-18'),(32,62,'2005-01-14','2012-04-06'),(32,62,'2003-06-28','2008-04-12'),(32,63,'2004-03-17','2009-03-11'),(97,72,'2004-08-21','2011-11-03'),(97,72,'2003-08-28','2004-11-01'),(33,78,'2001-04-20','2017-03-04'),(33,78,'2000-09-17','2014-08-21'),(61,79,'2000-04-29','2006-02-25'),(61,79,'2003-01-21','2002-12-25'),(68,86,'2004-07-10','2012-11-14'),(69,91,'2002-12-07','2002-01-14'),(69,91,'2001-12-23','2000-06-03'),(69,91,'2005-06-03','2000-08-26'),(23,99,'2001-04-17','2000-04-01'),(34,5,'2001-10-18','2003-05-09'),(34,5,'2003-05-04','2007-11-28'),(34,12,'2002-10-03','2011-09-28'),(92,12,'2002-06-05','2008-12-12'),(92,20,'2001-09-23','2014-09-14'),(92,30,'2005-03-09','2010-05-22'),(16,30,'2001-01-23','2012-01-19'),(82,30,'2003-06-20','2006-07-15'),(5,37,'2001-02-09','2011-09-01'),(5,37,'2005-07-17','2003-10-10'),(5,41,'2000-07-02','2016-04-16'),(101,41,'2003-11-29','2015-04-27'),(9,41,'2004-04-18','2009-02-01'),(9,47,'2001-06-21','2008-02-15'),(86,47,'2001-06-16','2013-03-11'),(86,47,'2004-12-04','2000-09-22'),(72,52,'2005-02-02','2007-08-16'),(97,52,'2002-07-09','2006-06-12'),(97,52,'2005-06-13','2013-12-07'),(97,57,'2004-06-21','2015-12-08'),(33,57,'2004-04-11','2016-05-08'),(10,66,'2003-07-03','2008-02-16'),(53,66,'2005-07-11','2015-03-25'),(39,75,'2005-08-28','2003-09-22'),(39,82,'2000-11-18','2015-05-08'),(41,83,'2000-12-10','2016-11-29'),(57,83,'2001-01-15','2015-11-04'),(57,83,'2003-11-04','2012-08-14'),(57,85,'2003-05-16','2011-07-06'),(25,91,'2003-08-14','2015-08-06'),(27,99,'2004-11-02','2012-11-02'),(27,99,'2003-03-18','2011-02-14'),(27,3,'2005-06-01','2003-08-23'),(42,3,'2004-10-19','2017-02-24'),(42,3,'2000-05-26','2011-08-23'),(3,10,'2005-06-30','2016-04-26'),(3,10,'2001-11-19','2006-10-20'),(3,10,'2005-08-24','2010-12-02'),(100,18,'2002-03-06','2016-11-01'),(100,18,'2001-11-05','2015-05-01'),(100,18,'2002-06-09','2006-03-09'),(28,26,'2004-03-26','2013-12-09'),(76,30,'2001-03-17','2013-11-22'),(76,32,'2002-06-10','2012-12-15'),(76,32,'2003-08-31','2010-01-10'),(72,33,'2001-12-18','2002-02-03'),(72,37,'2000-01-09','2002-05-19'),(95,37,'2000-09-02','2014-01-10'),(95,37,'2000-01-30','2007-06-03'),(95,40,'2004-10-04','2011-08-30'),(88,40,'2000-09-03','2002-09-06'),(88,40,'2000-04-25','2012-11-22'),(60,50,'2001-03-29','2002-10-09'),(60,56,'2001-09-19','2011-04-08'),(90,58,'2004-12-17','2012-03-07'),(90,58,'2003-04-15','2011-12-29'),(90,60,'2002-09-01','2013-08-06'),(50,60,'2000-05-26','2000-05-17'),(50,69,'2005-04-16','2017-04-12'),(14,73,'2003-01-15','2011-05-16'),(14,73,'2002-02-10','2010-01-27');
/*!40000 ALTER TABLE `pracownicy_adresy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stanowiska`
--

DROP TABLE IF EXISTS `stanowiska`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stanowiska` (
  `id_stanowiska` int(11) NOT NULL,
  `nazwa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_stanowiska`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stanowiska`
--

LOCK TABLES `stanowiska` WRITE;
/*!40000 ALTER TABLE `stanowiska` DISABLE KEYS */;
INSERT INTO `stanowiska` VALUES (1,'Doradca Techniczny'),(2,'Ankieter'),(4,'Dyrektor Produkcji'),(5,'Automatyk'),(6,'Ciesla'),(7,'Brygadzista'),(8,'Account Manager'),(9,'Blacharz'),(11,'Inzynier ds. Jakosci'),(13,'Inspektor BHP'),(14,'Asystent Projektanta'),(15,'Drukarz'),(16,'Akwizytor'),(17,'Brukarz'),(19,'Inzynier'),(20,'Account Executive'),(21,'Doradca Techniczny'),(22,'Account Manager'),(23,'Akwizytor'),(24,'Ciesla');
/*!40000 ALTER TABLE `stanowiska` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-20 23:10:26
