-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: app_naiss_DB
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enfant`
--

DROP TABLE IF EXISTS `enfant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfant` (
  `id_enfant` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(155) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `id_pere` int unsigned NOT NULL,
  `id_mere` int unsigned NOT NULL,
  `id_fonctionnaire` int unsigned NOT NULL,
  PRIMARY KEY (`id_enfant`),
  KEY `id1` (`id_enfant`,`id_pere`),
  KEY `tbl_pere` (`id_pere`),
  KEY `id2` (`id_enfant`,`id_mere`),
  KEY `tbl_mere` (`id_mere`),
  KEY `id3` (`id_enfant`,`id_fonctionnaire`),
  KEY `tbl_fonctionnaire` (`id_fonctionnaire`),
  CONSTRAINT `tbl_fonctionnaire` FOREIGN KEY (`id_fonctionnaire`) REFERENCES `fonctionnaire` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_mere` FOREIGN KEY (`id_mere`) REFERENCES `mere` (`id_mere`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pere` FOREIGN KEY (`id_pere`) REFERENCES `pere` (`id_pere`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfant`
--

LOCK TABLES `enfant` WRITE;
/*!40000 ALTER TABLE `enfant` DISABLE KEYS */;
INSERT INTO `enfant` VALUES (1,'Sheffy','Blunden','M',56,53,10),(2,'Annie','Ruos','F',38,56,9),(3,'Alf','Claypole','M',87,78,4),(4,'Riva','Esley','F',66,58,9),(5,'Patten','Johnsey','M',94,44,4),(6,'Dianemarie','Loghan','F',46,84,3),(7,'Adriane','Matchell','F',56,73,9),(8,'Florrie','Freddi','F',48,45,8),(9,'Eliza','Beels','F',60,24,7),(10,'Chloe','Josham','F',38,86,9),(11,'Rafaela','Whitbread','F',46,11,7),(12,'Roxanna','Patington','F',33,54,9),(13,'Maje','Palley','M',61,7,10),(14,'Care','Doyland','M',59,85,1),(15,'Hermine','Acres','F',42,34,10),(16,'Abbey','Peegrem','M',18,69,5),(17,'Alberto','Ramalhete','M',55,88,4),(18,'Gabbie','Crookes','M',20,57,8),(19,'Zorana','Sarge','F',81,47,5),(20,'Emmie','Laborda','F',49,49,3),(21,'Jocko','Figiovanni','M',37,44,8),(22,'Aliza','Adamo','F',11,36,8),(23,'Erhard','Crook','M',69,35,4),(24,'Aldon','Chadburn','M',72,20,5),(25,'Beniamino','Seifenmacher','M',91,54,3),(26,'Neron','Seale','M',32,46,2),(27,'Blake','McCarrick','F',17,4,5),(28,'Annemarie','Schimaschke','F',41,32,8),(29,'Candida','Carhart','F',62,34,4),(30,'Terra','Gumbrell','F',41,37,6),(31,'Elias','Falkus','M',47,40,1),(32,'Sky','Trevena','M',2,42,6),(33,'Truman','Turmel','M',78,80,5),(34,'Daria','Urey','F',82,92,3),(35,'Vanessa','Poxton','F',48,12,5),(36,'Thibaut','Siggee','M',21,43,3),(37,'Chauncey','Hurler','M',34,50,8),(38,'Nyssa','Coal','F',76,27,9),(39,'Claus','Ciobutaro','M',35,47,6),(40,'Karlotte','Askem','F',14,95,9),(41,'Rollin','Malin','M',62,9,6),(42,'Gayler','Connold','M',65,66,1),(43,'Dal','Belfield','M',73,45,5),(44,'Stormy','Rodolfi','F',49,13,1),(45,'Eddy','Vannucci','F',34,47,6),(46,'Frank','Laidel','M',7,13,10),(47,'Buddy','Robben','M',26,3,9),(48,'Staford','Weightman','M',100,97,8),(49,'Mozelle','Skerrett','F',56,23,10),(50,'Kippie','Gartin','M',26,8,5),(51,'Rafe','Dreschler','M',37,88,1),(52,'Ikey','Clelle','M',35,58,1),(53,'Ginger','Blouet','F',47,45,5),(54,'Melvyn','Struthers','M',8,99,2),(55,'Barrett','Arstingall','M',45,23,7),(56,'Zackariah','Pullman','M',42,11,1),(57,'Kahaleel','Addison','M',71,78,1),(58,'Arne','MacEveley','M',48,29,2),(59,'Isaak','Dancey','M',38,78,1),(60,'Malissia','Giacoboni','F',84,96,8),(61,'Mandel','Benthall','M',60,92,3),(62,'Korney','Ovitts','F',76,63,1),(63,'Corena','Kettell','F',12,4,4),(64,'Gaspar','Cubuzzi','M',21,71,6),(65,'Ameline','Le Clercq','F',89,37,2),(66,'Bekki','Barlthrop','F',4,22,7),(67,'Elizabet','Petzold','F',62,100,1),(68,'Valentina','Tasseler','F',56,15,2),(69,'Berkeley','Kleen','M',21,11,8),(70,'Creight','Curro','M',62,36,3),(71,'Janith','Khristyukhin','F',55,61,5),(72,'Durward','Attarge','M',9,40,10),(73,'Clim','McCay','M',81,35,8),(74,'Amerigo','Longworthy','M',36,16,3),(75,'Tomasina','McDunlevy','F',74,96,2),(76,'Giacinta','Willers','F',95,86,3),(77,'Margeaux','MacCorkell','F',2,50,6),(78,'Arly','Conklin','F',15,19,1),(79,'Kial','Foxcroft','F',83,6,1),(80,'Adair','Kohrt','M',60,64,8),(81,'Dolorita','Hadgraft','F',25,91,7),(82,'Matilda','Breeder','F',19,10,7),(83,'Benjamin','Atthowe','M',34,83,2),(84,'Hyatt','Gawthrop','M',32,16,9),(85,'Joycelin','Breakspear','F',85,1,10),(86,'Tito','Crowd','M',8,54,10),(87,'Goran','Huke','M',98,53,4),(88,'Dominik','Menezes','M',7,41,9),(89,'Lannie','Welfare','M',82,5,10),(90,'Neille','Kintish','F',85,50,4),(91,'Mersey','Capper','F',90,79,10),(92,'Frasier','Goward','M',75,92,8),(93,'Tracie','Ortes','F',7,35,8),(94,'Claretta','Kaesmakers','F',26,47,8),(95,'Julian','Peddel','M',55,30,4),(96,'Dominic','Robun','M',78,28,1),(97,'Melody','Seefeldt','F',35,40,10),(98,'Emilee','Smallman','F',28,80,7),(99,'Clemmie','Sambrok','F',69,21,9),(100,'Westley','Blacksell','M',59,89,1),(101,'Rebe','Piesold','F',85,50,4),(102,'Wat','Oglesbee','M',66,26,9),(103,'Valentijn','Lanbertoni','M',10,40,1),(104,'Bird','Wyldish','F',31,18,7),(105,'Rebecka','Pelfer','F',71,37,9),(106,'Filbert','Gethyn','M',22,11,4),(107,'Sharla','Landor','F',41,64,5),(108,'Lyon','Earl','M',35,8,5),(109,'Anne-marie','Syrie','F',54,86,5),(110,'Sally','Ianinotti','F',3,89,4),(111,'Erl','Brogi','M',61,55,1),(112,'Tyrus','Mandeville','M',93,7,1),(113,'Wendy','Standfield','F',6,8,6),(114,'Wenona','Unsworth','F',51,59,5),(115,'Winny','Lincke','F',54,32,8),(116,'Hastings','Greatreax','M',15,80,4),(117,'Inger','Ayre','F',13,77,2),(118,'Addi','Priestman','F',24,40,8),(119,'Clyve','Kleinplatz','M',26,56,2),(120,'Merrill','Thorowgood','F',92,55,3),(121,'Petey','Gill','M',56,5,8),(122,'Reena','Lapere','F',75,32,6),(123,'Pierrette','Bulled','F',96,35,8),(124,'Abbe','Tomsen','F',27,9,6),(125,'Van','Kohrsen','F',3,97,10),(126,'Marabel','Boncore','F',55,40,10),(127,'Jason','Flood','M',23,47,3),(128,'Bili','Deluze','F',24,58,6),(129,'Vance','Mazin','M',77,52,5),(130,'Izaak','Schaffler','M',3,85,1),(131,'Field','Marini','M',47,17,5),(132,'Alfreda','Enderwick','F',2,87,8),(133,'Adoree','McGibbon','F',76,11,1),(134,'Harbert','Musker','M',96,68,4),(135,'Valle','Grzeszczyk','M',37,35,10),(136,'Brandtr','Gibbard','M',10,11,9),(137,'Hilary','Balmadier','F',20,98,4),(138,'Curtis','Filliskirk','M',9,77,3),(139,'Putnem','Leve','M',9,77,8),(140,'Shelley','Ashness','M',86,46,5),(141,'Alleen','Carriage','F',18,78,5),(142,'Rubie','Snelgrove','F',53,21,2),(143,'Rachel','McCorkell','F',35,20,2),(144,'Jackie','Venables','F',95,94,7),(145,'Neall','Reed','M',57,65,9),(146,'Laughton','Dumpleton','M',29,21,6),(147,'Estell','Shewon','F',94,4,8),(148,'Dorisa','Smaling','F',43,71,8),(149,'Goldie','Strattan','F',83,52,4),(150,'Giffie','Clarridge','M',49,91,5),(151,'Nealy','Nicolls','M',18,28,2),(152,'Gerrie','Grunder','M',33,58,5),(153,'Shae','Earney','F',97,6,2),(154,'Man','Beck','M',99,66,9),(155,'Kristos','Bein','M',58,54,5),(156,'Arvin','O\'Luby','M',95,92,5),(157,'Rafe','Tenman','M',43,53,9),(158,'Clywd','Sargison','M',1,65,9),(159,'Norry','Schwieso','M',1,90,8),(160,'Norah','Lindfors','F',43,75,7),(161,'Avivah','Kobera','F',65,2,6),(162,'Beulah','Kunkler','F',81,22,9),(163,'Perceval','Laviss','M',92,25,10),(164,'Peder','Klimaszewski','M',27,15,2),(165,'Dennie','Tapsell','F',25,52,6),(166,'Jerrie','Burnell','F',96,66,5),(167,'Cazzie','Butterick','M',82,61,4),(168,'Agace','Morrid','F',51,11,1),(169,'Harmonie','Doveston','F',78,57,7),(170,'Vikki','Hiskey','F',78,86,6),(171,'Stevie','Smallthwaite','M',83,23,7),(172,'Rupert','Lidgett','M',38,17,7),(173,'Cheslie','Corbitt','F',97,30,9),(174,'Penelope','Mackneis','F',73,5,5),(175,'Cletis','Cutchey','M',80,92,4),(176,'Bronny','Bolter','M',51,42,10),(177,'Laurent','Piwell','M',69,33,4),(178,'Jessee','Peracco','M',96,6,10),(179,'Bentley','Annandale','M',74,96,1),(180,'Avictor','Freeburn','M',85,58,4),(181,'Kristien','Reston','F',67,81,1),(182,'Merrili','Sweetzer','F',99,42,10),(183,'Udell','Burnyate','M',50,53,6),(184,'Sheff','Youle','M',46,26,4),(185,'Brandy','Camin','M',100,76,9),(186,'Sindee','Brunel','F',3,39,4),(187,'Ferrel','Ferraro','M',3,2,2),(188,'Inger','Mulrenan','F',66,65,1),(189,'Ky','Hutcheon','M',68,57,2),(190,'Zane','Wenden','M',44,76,1),(191,'Ignatius','Northedge','M',83,62,7),(192,'Shelley','Bisgrove','M',39,41,3),(193,'Huntington','Landsborough','M',35,84,3),(194,'Mavra','Filipson','F',79,98,2),(195,'Sena','Ert','F',62,61,3),(196,'Bryna','Talby','F',73,77,7),(197,'Lucias','Woodyear','M',73,11,2),(198,'Paulie','Freer','F',23,49,10),(199,'Cori','Voller','F',79,36,7),(200,'Emmalynne','Braam','F',36,2,4);
/*!40000 ALTER TABLE `enfant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fonctionnaire`
--

DROP TABLE IF EXISTS `fonctionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonctionnaire` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(150) NOT NULL,
  `login` varchar(150) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fonctionnaire`
--

LOCK TABLES `fonctionnaire` WRITE;
/*!40000 ALTER TABLE `fonctionnaire` DISABLE KEYS */;
INSERT INTO `fonctionnaire` VALUES (1,'abakar','mahamat','login','1234'),(2,'Fritz','Alpes','Daryl',''),(3,'Rudiger','Bowra','Jammal',''),(4,'Roze','Jacob','Martin',''),(5,'Owen','Roz','Rodge',''),(6,'Rivalee','Letrange','Lorant',''),(7,'Elden','Durnan','Douglas',''),(8,'Loydie','Sends','Neal',''),(9,'Glen','Gratrex','Terencio',''),(10,'Oby','Decourcy','Palm',''),(11,'Athena','Girton','Emmit',''),(12,'Marja','Cudbird','Meyer',''),(13,'Carolan','Lakeland','Vincenz',''),(14,'Jodie','Roarty','Kylie',''),(15,'Carmel','Stubbs','Delmor',''),(16,'Netty','Alflat','Gareth',''),(17,'Carmela','Matteucci','Dewain',''),(18,'Caprice','Pammenter','Stavros',''),(19,'Fannie','Dunbar','Orrin',''),(20,'Gypsy','Antoniewski','Sandro',''),(21,'Thom','McAleese','Jamison',''),(22,'Jeana','Grishanin','Granny',''),(23,'Flynn','Pawlaczyk','Matthiew',''),(24,'Gabi','Pendergast','Mandel',''),(25,'Wallas','McElrea','Francklin',''),(26,'Bebe','Balmann','Herculie',''),(27,'Colver','Stead','Pepe',''),(28,'Rina','Binnell','Cullin',''),(29,'Danny','Joselevitz','Arlen',''),(30,'Kurt','Fawdry','Otes',''),(31,'Tybie','Pavel','Dante',''),(32,'Kellby','Galpin','Sutherland',''),(33,'Andeee','Colbrun','Robb',''),(34,'Farrand','Goldsworthy','Wit',''),(35,'Isa','Drepp','Nicholas',''),(36,'Garry','Yell','Clywd',''),(37,'Barby','Hellmore','Ram',''),(38,'Rowe','Joburn','Blair',''),(39,'Perkin','Memory','Franklyn',''),(40,'Pate','Conyers','Karney',''),(41,'Anetta','Barwick','Jedd',''),(42,'Jami','Leith-Harvey','Brent',''),(43,'Nickolas','Mochar','Shannan',''),(44,'Ian','Bexon','Reese',''),(45,'Shanta','Hanrahan','Neddy',''),(46,'Ester','Satteford','Francesco',''),(47,'Lemmy','Paulmann','Hobie',''),(48,'Muffin','Huntley','Dietrich',''),(49,'Daryl','Grinham','Lennie',''),(50,'Tye','Bernhardt','Hillyer','');
/*!40000 ALTER TABLE `fonctionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mere`
--

DROP TABLE IF EXISTS `mere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mere` (
  `id_mere` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `fonction` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `situation_mat` varchar(45) NOT NULL,
  PRIMARY KEY (`id_mere`),
  UNIQUE KEY `mere_UNIQUE` (`id_mere`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mere`
--

LOCK TABLES `mere` WRITE;
/*!40000 ALTER TABLE `mere` DISABLE KEYS */;
INSERT INTO `mere` VALUES (1,'Corenda','Environmental Specialist','180-162-6038','rhoncus'),(2,'Cheryl','Statistician IV','649-625-2162','etiam'),(3,'Marlena','Payment Adjustment Coordinator','379-192-9100','fusce'),(4,'Leah','Director of Sales','986-582-7772','primis'),(5,'Lynnette','Web Designer IV','316-158-6493','nulla'),(6,'Winny','Product Engineer','185-761-1736','purus'),(7,'Francoise','Web Designer IV','765-447-6523','id'),(8,'Keriann','Biostatistician III','964-547-7566','vel'),(9,'Adriana','VP Quality Control','537-992-4553','varius'),(10,'Nicola','Data Coordiator','692-603-9969','nunc'),(11,'Maiga','Senior Financial Analyst','951-693-0447','mauris'),(12,'Tiffanie','Information Systems Manager','107-696-7449','nunc'),(13,'Nicolette','Speech Pathologist','408-254-5551','semper'),(14,'Inga','Physical Therapy Assistant','581-437-2496','ultricies'),(15,'Calypso','Associate Professor','209-453-4029','nulla'),(16,'Risa','Legal Assistant','661-778-6307','venenatis'),(17,'Christalle','Graphic Designer','510-776-4875','purus'),(18,'Celie','Sales Associate','410-348-0074','varius'),(19,'Chryste','Media Manager IV','652-455-2569','rutrum'),(20,'Laurene','Developer III','240-304-4829','ipsum'),(21,'Danya','Internal Auditor','829-260-5062','est'),(22,'Debora','Operator','469-921-0895','sed'),(23,'Amandi','Marketing Assistant','355-369-7907','aenean'),(24,'Theresita','Food Chemist','469-992-4503','aliquet'),(25,'Atalanta','Marketing Assistant','899-698-2007','aliquam'),(26,'Odelle','Electrical Engineer','169-528-3656','ultrices'),(27,'Leshia','Dental Hygienist','762-380-2312','neque'),(28,'Tessy','Quality Engineer','175-299-4113','donec'),(29,'Trenna','Biostatistician II','806-237-9170','accumsan'),(30,'Terese','Accounting Assistant IV','569-177-2036','nec'),(31,'Rayna','Financial Advisor','645-402-5010','penatibus'),(32,'Lida','Operator','460-122-6598','volutpat'),(33,'Atlante','Human Resources Manager','328-958-0115','curae'),(34,'Allie','Design Engineer','145-255-3622','suscipit'),(35,'Lorilee','Clinical Specialist','767-482-1258','ipsum'),(36,'Kimberlee','Senior Sales Associate','934-646-0768','curabitur'),(37,'Kiley','Senior Quality Engineer','738-901-2389','ridiculus'),(38,'Sophey','Assistant Professor','250-525-8205','vestibulum'),(39,'Fallon','Environmental Specialist','722-137-2120','pellentesque'),(40,'Deny','GIS Technical Architect','580-860-3252','nam'),(41,'Lexis','Director of Sales','308-474-2234','pede'),(42,'Etta','Web Designer I','684-152-6805','eu'),(43,'Tootsie','Food Chemist','487-830-7959','mollis'),(44,'Cecile','Recruiting Manager','192-112-4377','integer'),(45,'Arda','Human Resources Assistant III','424-655-7540','rutrum'),(46,'Steffane','Clinical Specialist','625-784-3537','praesent'),(47,'Alberta','Project Manager','892-430-5846','ante'),(48,'Frieda','Office Assistant I','267-849-4777','augue'),(49,'Gilly','Information Systems Manager','963-456-2479','vel'),(50,'Maddy','Actuary','306-981-9583','in'),(51,'Ashlie','Electrical Engineer','941-946-4670','tellus'),(52,'Rita','Design Engineer','464-910-1514','ut'),(53,'Nancey','Speech Pathologist','134-189-1762','rhoncus'),(54,'Leila','Database Administrator II','595-905-9626','dolor'),(55,'Nan','Engineer III','524-719-6220','in'),(56,'Zoe','Financial Analyst','435-413-9708','vel'),(57,'Shanda','Biostatistician II','902-927-8500','etiam'),(58,'Edita','Occupational Therapist','323-102-6900','interdum'),(59,'Greer','Senior Editor','105-576-2890','amet'),(60,'Fredi','Web Designer I','262-904-3108','mauris'),(61,'Queenie','Librarian','952-386-6786','luctus'),(62,'Dorree','Information Systems Manager','496-158-2155','ligula'),(63,'Diandra','Office Assistant II','357-127-9089','hac'),(64,'Tish','Biostatistician III','898-441-1072','posuere'),(65,'Cayla','Senior Quality Engineer','346-721-1633','elit'),(66,'Orly','Dental Hygienist','848-862-9879','placerat'),(67,'Jo-ann','Quality Engineer','613-974-7105','in'),(68,'Dinnie','Nuclear Power Engineer','414-769-7928','nisi'),(69,'Kerri','Marketing Manager','844-631-3989','pellentesque'),(70,'Clarice','Civil Engineer','139-415-0928','ut'),(71,'Layney','Web Designer I','158-817-1666','ultrices'),(72,'Wilmette','Engineer I','302-253-0907','vivamus'),(73,'Justinn','Financial Advisor','487-558-8266','nulla'),(74,'Madelaine','Accountant I','122-439-6652','augue'),(75,'Rosemarie','Project Manager','556-863-2135','fusce'),(76,'Rozella','Administrative Officer','934-235-7668','primis'),(77,'Rory','Quality Control Specialist','963-572-8438','ultrices'),(78,'Gloriane','Associate Professor','790-862-2884','turpis'),(79,'Clementia','Executive Secretary','375-886-6670','felis'),(80,'Moreen','Senior Sales Associate','677-904-2982','odio'),(81,'Flss','Associate Professor','705-392-1399','ac'),(82,'Jinny','Clinical Specialist','183-203-8473','vestibulum'),(83,'Maude','Nurse Practicioner','139-862-2672','diam'),(84,'Edeline','Senior Cost Accountant','978-975-0510','posuere'),(85,'Gerrilee','Structural Engineer','826-784-0161','vel'),(86,'Fernanda','Database Administrator II','182-669-0011','sit'),(87,'Matilde','Technical Writer','617-494-9981','ultrices'),(88,'Dulce','Administrative Assistant I','786-375-5212','tincidunt'),(89,'Carrie','Systems Administrator II','357-106-9849','sit'),(90,'Sherilyn','VP Sales','119-453-9638','massa'),(91,'Irene','Human Resources Manager','707-258-2355','posuere'),(92,'Averil','Administrative Assistant II','893-639-8400','nulla'),(93,'Odetta','Analog Circuit Design manager','930-311-2515','in'),(94,'Renate','Computer Systems Analyst IV','611-130-0840','dapibus'),(95,'Lisetta','Environmental Specialist','418-311-0718','tellus'),(96,'Gael','Account Representative I','285-967-9883','odio'),(97,'Brandais','Desktop Support Technician','947-278-4595','odio'),(98,'Minda','Nuclear Power Engineer','104-168-3608','vestibulum'),(99,'Nikoletta','Mechanical Systems Engineer','651-699-1514','venenatis'),(100,'Missy','Programmer Analyst IV','122-359-0888','quisque');
/*!40000 ALTER TABLE `mere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pere`
--

DROP TABLE IF EXISTS `pere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pere` (
  `id_pere` int unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `fonction` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `situation_mat` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pere`),
  UNIQUE KEY `id_pere_UNIQUE` (`id_pere`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pere`
--

LOCK TABLES `pere` WRITE;
/*!40000 ALTER TABLE `pere` DISABLE KEYS */;
INSERT INTO `pere` VALUES (1,'Friedrich','Product Engineer','513-485-2774','pellentesque'),(2,'Shane','Programmer III','385-559-8944','magna'),(3,'Carlyle','Graphic Designer','244-896-8289','ut'),(4,'Gerrie','Engineer II','552-371-4624','justo'),(5,'Justinian','Health Coach II','602-573-6226','id'),(6,'Marlon','Sales Associate','752-587-3308','vel'),(7,'Faulkner','Legal Assistant','205-439-1977','accumsan'),(8,'Kleon','Chemical Engineer','406-286-4722','mattis'),(9,'Jarrad','Senior Quality Engineer','770-508-9889','tristique'),(10,'Luce','Administrative Officer','896-276-1643','nullam'),(11,'Joshuah','Tax Accountant','396-723-7382','hac'),(12,'Petey','Account Coordinator','951-246-1821','lobortis'),(13,'Alexandro','Budget/Accounting Analyst II','334-660-3994','in'),(14,'Tome','Legal Assistant','745-706-0459','tincidunt'),(15,'Franz','Analog Circuit Design manager','899-833-0692','odio'),(16,'Rorke','Biostatistician II','697-873-8169','dignissim'),(17,'Basile','VP Accounting','829-184-4566','vestibulum'),(18,'Guntar','Human Resources Assistant III','152-998-9780','a'),(19,'Cristian','Biostatistician IV','418-462-0179','accumsan'),(20,'Lothario','Product Engineer','554-729-2910','vestibulum'),(21,'Reggy','Human Resources Assistant IV','460-300-7662','ut'),(22,'Krisha','Nurse','796-586-4092','lacinia'),(23,'Ikey','Payment Adjustment Coordinator','324-706-3414','imperdiet'),(24,'Samuel','Staff Accountant II','137-671-5427','ultrices'),(25,'Brady','VP Accounting','243-960-9290','ac'),(26,'Ogdan','Internal Auditor','361-980-8218','ridiculus'),(27,'Bartram','Help Desk Operator','847-440-6953','ac'),(28,'Monte','Structural Analysis Engineer','709-996-3593','nibh'),(29,'Mordy','Help Desk Operator','943-610-9461','odio'),(30,'Kory','Budget/Accounting Analyst II','295-715-7713','dolor'),(31,'Dewitt','Accountant III','679-780-1861','in'),(32,'Ephrayim','Data Coordiator','244-780-2501','vestibulum'),(33,'Leonard','Senior Developer','298-301-6890','cubilia'),(34,'Farley','Food Chemist','155-674-2238','non'),(35,'Knox','Internal Auditor','740-640-6906','vitae'),(36,'Neal','Dental Hygienist','366-941-9754','et'),(37,'Nigel','Human Resources Manager','112-244-4865','vivamus'),(38,'Page','Cost Accountant','233-923-8461','mauris'),(39,'Bernie','Civil Engineer','908-230-4940','sagittis'),(40,'Frasquito','Administrative Assistant II','622-374-4135','nulla'),(41,'Granny','Quality Engineer','121-503-4761','congue'),(42,'Wolfy','Programmer I','204-778-6918','sit'),(43,'Franz','VP Accounting','404-689-2213','quam'),(44,'Robinson','Director of Sales','248-479-0811','porttitor'),(45,'Willard','Internal Auditor','360-127-0670','amet'),(46,'Tan','Account Representative III','900-418-0909','lacinia'),(47,'Hilly','Business Systems Development Analyst','240-950-4847','rutrum'),(48,'Van','Marketing Assistant','843-635-8051','elementum'),(49,'Booth','Health Coach III','491-343-8099','aliquam'),(50,'Colby','Mechanical Systems Engineer','107-885-5090','condimentum'),(51,'Marco','Senior Cost Accountant','709-913-9397','dui'),(52,'Jasper','Assistant Media Planner','735-737-2719','primis'),(53,'Cord','VP Marketing','900-707-2941','est'),(54,'Carling','Web Designer II','702-377-8624','lectus'),(55,'Justin','Physical Therapy Assistant','510-772-4782','nullam'),(56,'Winslow','Environmental Tech','119-289-6711','eget'),(57,'Lowell','Operator','168-900-5949','in'),(58,'Trever','Geologist III','822-191-5224','a'),(59,'Wyatt','Information Systems Manager','844-631-1560','ante'),(60,'Faber','Human Resources Manager','547-984-0712','in'),(61,'Scarface','Software Test Engineer II','328-804-6516','hac'),(62,'Adolf','Assistant Professor','835-803-6369','nibh'),(63,'Ash','Physical Therapy Assistant','175-285-5620','integer'),(64,'Douglass','Programmer I','253-443-5057','mauris'),(65,'Devlin','Web Developer IV','761-130-8258','volutpat'),(66,'Bendicty','Technical Writer','609-794-5633','curabitur'),(67,'Thomas','Software Consultant','819-997-9395','mauris'),(68,'Ragnar','Project Manager','464-313-5639','vitae'),(69,'Ferdinand','Registered Nurse','777-530-9532','sit'),(70,'Currey','Developer I','171-958-0492','odio'),(71,'Vernen','VP Product Management','228-215-7991','aliquam'),(72,'Hugh','Database Administrator IV','152-111-8607','blandit'),(73,'Che','Account Executive','358-763-7220','justo'),(74,'Inger','Research Nurse','867-539-3344','justo'),(75,'Guntar','Assistant Media Planner','744-626-6656','vestibulum'),(76,'Penny','Research Nurse','297-814-2174','condimentum'),(77,'Haleigh','Project Manager','423-451-7884','est'),(78,'Dion','Analog Circuit Design manager','739-918-6144','sit'),(79,'Harman','Nuclear Power Engineer','193-780-0373','amet'),(80,'Reinald','Sales Representative','463-277-0914','diam'),(81,'Cull','Media Manager IV','568-849-0153','vulputate'),(82,'Cully','Administrative Officer','492-823-5030','ut'),(83,'Milty','Assistant Media Planner','809-558-7737','at'),(84,'Denver','Research Assistant IV','354-545-0437','pede'),(85,'Cassius','Editor','993-779-0386','eget'),(86,'Urban','Project Manager','346-984-8913','id'),(87,'Iorgo','Cost Accountant','503-379-3127','condimentum'),(88,'Lynn','VP Accounting','299-804-3352','suscipit'),(89,'Prinz','Environmental Specialist','106-910-6555','non'),(90,'Read','Quality Control Specialist','693-898-4297','amet'),(91,'Markos','Marketing Assistant','697-597-1519','lacinia'),(92,'Milton','Research Associate','680-333-7865','ipsum'),(93,'Dall','Community Outreach Specialist','516-486-3767','turpis'),(94,'Morey','Research Associate','793-567-1153','in'),(95,'Cchaddie','Account Coordinator','530-694-5887','varius'),(96,'Miltie','Sales Associate','122-606-1798','non'),(97,'Shalom','Geological Engineer','957-873-8917','porta'),(98,'Ned','Financial Advisor','285-139-3752','aliquam'),(99,'Buiron','Accounting Assistant III','779-402-4798','nec'),(100,'Trueman','Marketing Manager','835-592-6145','ultrices');
/*!40000 ALTER TABLE `pere` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-23  6:26:47
