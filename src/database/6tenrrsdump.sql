-- MySQL dump 10.13  Distrib 5.7.18, for macos10.12 (x86_64)
--
-- Host: localhost    Database: 6tenrrs
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `BRANCH`
--
use 6tenrrs;
DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BRANCH` (
  `BranchID` int(11) NOT NULL AUTO_INCREMENT,
  `BranchLocation` varchar(255) NOT NULL,
  `BranchManager` varchar(255) NOT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES (1,'3404 Mckayla Way','Hettie Feil'),(2,'238 Schuster Ports Apt. 808','Janae Gleichner III'),(3,'6489 Dibbert Mission Apt. 667','Monica O\'Kon'),(4,'37130 Cheyenne Valley','Retta Wisozk'),(5,'6030 Weber Glens Suite 211','Brett Kreiger DVM'),(6,'892 Harris Springs','Maggie Kuphal'),(7,'06888 Blick Center Suite 042','Hulda Pagac'),(8,'8847 Clint Court','Mose Pfannerstill'),(9,'071 Alexanne Glen','Justen Cole'),(10,'4100 Luettgen Run','Prof. Roosevelt Huels'),(11,'530 Ferry Haven Suite 205','Carson Greenfelder'),(12,'637 Pagac Cove','Cathryn Berge'),(13,'84695 Hansen Isle','Stephan Mann'),(14,'3551 Schuster Circle Suite 778','Keira Gulgowski'),(15,'48860 Larissa Harbor','Cordia Marks'),(16,'805 Matteo Junction Apt. 098','Christophe Cummerata MD'),(17,'63472 Weissnat Row Apt. 105','Edyth Cole'),(18,'247 Austyn Spring Apt. 790','Jaquan Trantow'),(19,'575 Vivianne Village Suite 262','Sean Feil'),(20,'098 Reymundo Flats Apt. 935','Lew Keeling'),(21,'87284 Samir Mount Apt. 625','Oceane Wolff DDS'),(22,'265 Schultz Mill Apt. 625','Palma Donnelly'),(23,'69021 Kiley Parkways','Arnoldo Rutherford II'),(24,'6132 Schuppe Station Apt. 041','Damaris O\'Conner'),(25,'85210 Bernhard Way','Vicenta Schumm DDS'),(26,'2025 Hayden Divide','Pattie Bode'),(27,'6696 Simonis Village','Alford Beer'),(28,'181 Burnice Rapid','Dr. Daren Hackett'),(29,'88041 Jena Wells','Iva Baumbach PhD'),(30,'21764 Kara Loaf Suite 046','Ottis Sporer'),(31,'567 Cassin Views Apt. 329','Martina Crist'),(32,'63628 Iliana Points Suite 340','Prof. Rickey Nikolaus'),(33,'400 Franecki Forest Apt. 376','Moses Schaden'),(34,'88703 Ryan Rue Suite 450','Esteban Marquardt'),(35,'05126 Bridget Lakes Apt. 212','Santina Bernier'),(36,'260 Carroll Dale','Sonny Stamm Sr.'),(37,'30028 Vicenta Gardens Apt. 144','Kavon Miller'),(38,'0414 Trent Station Suite 335','Brando Lueilwitz'),(39,'952 Graham Forge','Kavon Mayer'),(40,'1662 Taya Hill Apt. 316','Mr. Duncan Cormier'),(41,'66344 Baumbach Ville','Zane Kemmer'),(42,'95456 Hickle Ridge Suite 944','Macey O\'Conner'),(43,'423 Dakota Drives','Virginia Mante I'),(44,'73589 Renner Ferry Suite 468','Mrs. Elsie Weimann'),(45,'83646 Bruce Forge','Trent Ruecker'),(46,'7467 Nitzsche Park Apt. 565','Alfonso Marvin'),(47,'90066 Lilla Lights','Nicolas Kuhn V'),(48,'131 Nienow Place','Dr. Hilma Schmeler PhD'),(49,'4459 Nikolaus Crest','Richmond Rodriguez'),(50,'08116 O\'Keefe Skyway Apt. 399','Casper Harber MD'),(51,'78866 Kristin Branch Suite 526','Damian O\'Connell'),(52,'034 Donnell Bridge','Dr. Jerel Swift'),(53,'2298 Schimmel Row','Daniella Shanahan'),(54,'20338 Barton Road','Vaughn Bayer I'),(55,'888 Strosin Corners','Hayden Mayert'),(56,'5627 Ada Turnpike','Jace Haag'),(57,'74432 Arlo Dale Suite 559','Theresa Zieme'),(58,'17704 Runolfsson Falls Apt. 743','Hipolito Koepp'),(59,'369 Ortiz Mountain','Dr. Lula Schowalter Sr.'),(60,'3163 Laverna Hills','Prof. Alisa Senger'),(61,'49104 Runte Valley','Evangeline Pacocha'),(62,'972 Anne Stream','Prof. Tyrese Hilpert Sr.'),(63,'08489 Schulist Village','Gail Jones I'),(64,'0088 Mario Village Suite 048','Jammie Conroy'),(65,'1849 Schiller Parks','Mr. Jaydon Deckow'),(66,'7162 Feest Ranch Suite 933','Prof. Mohamed Walker'),(67,'7948 Bailey Stream','Lawson Medhurst II'),(68,'86411 Ahmed Cliff Apt. 772','Dr. Ariel Boyer DDS'),(69,'5678 Gleason Estate','Annabelle Cronin'),(70,'2715 Spencer Ways','Jessie Jerde'),(71,'7561 Rutherford Lakes','Grant Bradtke IV'),(72,'33542 Schultz Well Apt. 688','Ashley Brekke Jr.'),(73,'701 Stokes Loaf','Dr. Tyrese Yundt'),(74,'16135 Fadel Course','Durward Jakubowski'),(75,'32717 Conn Throughway Apt. 088','Ed Lind'),(76,'1445 Lori Throughway Apt. 824','Mrs. Misty Emard DDS'),(77,'0274 Armani Drive Apt. 292','Kimberly Kshlerin Jr.'),(78,'628 Konopelski Plains Suite 792','Dr. Milford Ryan V'),(79,'68013 Rowena Mews','Jean Fritsch'),(80,'113 Schneider Dam Suite 723','Miss Avis Murray'),(81,'18204 Laila Field Apt. 140','Kole Keeling'),(82,'40658 Zulauf Heights','Nico Dare'),(83,'383 Huel Gateway Apt. 678','Krystal Cole PhD'),(84,'699 Reyna Springs','Melvina Mitchell MD'),(85,'4815 Lockman Vista','Dr. Jennifer Gorczany'),(86,'3044 Gottlieb Circles Suite 980','Prudence Kilback'),(87,'884 Kenya Way','Mr. Wilmer Waters'),(88,'21974 Michael Circle Apt. 811','Elian Aufderhar'),(89,'176 Leffler Greens Apt. 609','Godfrey Rodriguez'),(90,'468 Wiza Prairie','Fleta Jacobs'),(91,'9530 Juliana Circles','Jovani Conroy'),(92,'30150 Amparo Bypass','Miss Keira Von V'),(93,'42809 Brando Lakes Suite 901','Russel Altenwerth III'),(94,'808 Dayton Meadow Apt. 250','Dulce Jacobi'),(95,'315 Jaskolski Wells','Bonnie Aufderhar'),(96,'718 Zboncak Glens Apt. 058','Maxine Hansen'),(97,'30045 Ryan Inlet Suite 811','Prof. Emory Hilpert I'),(98,'974 Gerlach Place Apt. 130','Prof. Fatima Considine'),(99,'0940 Kuhic Village','Peter Friesen'),(100,'456 Taya Flats Apt. 876','Breanna Hackett');
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `ContactNum` varchar(11) NOT NULL,
  `Birthday` date NOT NULL,
  `Age` int(11) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'Erlen Mae Evangelista','Westbrook Residences','09215688200','1999-05-22',18),(2,'Robert Luis Ferreras','86959 Fuller Park','09215688209','1999-12-05',17),(3,'Louie Vilar','5030 Vernon Hill','09205688200','1998-05-23',19),(4,'Lorenz Matthew Afable','70 Colorado Parkway','09235688209','1997-09-23',20),(5,'Harold James Roxas','16 Comanche Avenue','09366577888','1999-08-01',18),(6,'John  Castillo','0 Johnson Way','09216677890','1997-09-09',20),(7,'Mark De Guzman','73985 6th Street','09214588300','1996-03-03',21),(8,'Kiana Feria','27 Westend Alley','09234577891','2000-09-07',17),(9,'Kia Somabes','49 Muir Plaza','09214533200','1999-11-22',18),(10,'Zayn Malik','Suite 1092','09348900100','2001-06-22',16),(11,'Naomi Crist','305 Martine Locks\nWest Haroldfurt, IA 42880','819.800.487','1981-06-29',67),(12,'Lauretta McLaughlin','190 Hane Flats Apt. 979\nMurphymouth, OR 86784-0427','830-545-188','1988-11-28',12),(13,'Miss Cheyenne Cronin','9091 Devin Pass\nSouth Rhiannon, VT 81968','1-599-805-2','2001-09-14',74),(14,'Rafael Wisozk','11338 Pfannerstill Plains\nPort Annabell, FL 07224','845-839-379','1984-03-24',14),(15,'Jeffry Konopelski PhD','896 Bartoletti Manors Apt. 835\nOrnmouth, IA 16639-4649','(969)145-68','2007-05-30',18),(16,'Dr. Angela Ruecker','23146 Eveline Place\nNorth Angie, CO 45435','1-447-410-7','1987-04-12',65),(17,'Jaden Little','62033 Hermiston Creek Apt. 957\nRobertsside, MS 75507-7669','1-133-340-6','2003-06-27',19),(18,'Emmalee Schaefer','693 Hoppe Garden Suite 835\nLake Cora, NE 15000-0913','(351)042-76','2007-08-01',64),(19,'Prof. Brock Schmidt DVM','9828 Hyatt Roads\nSedrickshire, MS 87978-2740','449-933-028','1988-08-26',61),(20,'Betty Roob','680 Jaycee Wall\nRogahnview, VA 42088','01433538389','2015-07-14',14),(21,'Marlon Little','072 McGlynn Trail Suite 619\nSouth Ceciliafurt, VA 26031-9161','03505299228','1970-03-10',59),(22,'Daron Spencer','5313 Hillary Alley Apt. 961\nNorth Dean, OR 60467-0305','1-992-890-7','1970-02-09',52),(23,'Nestor Lebsack IV','827 Treutel Isle\nAuerville, DC 16148-1639','00619934686','2003-01-03',24),(24,'Abraham McClure Sr.','7634 Era Court\nNorth Napoleonville, MN 61642-3982','503.313.276','1994-09-13',27),(25,'Daron Reilly','91294 Chris Grove\nPort Lilly, NJ 02357','(000)177-86','1977-06-29',13),(26,'Dr. Maryjane Pfannerstill Jr.','3243 Marie Station\nLake Celestino, GA 90156','(065)499-39','2001-07-12',41),(27,'Alison Schultz','9272 Towne Fall\nPort Buddybury, RI 65017-8073','+81(2)50199','2010-08-19',85),(28,'Prof. Willard Robel DVM','7293 Casper Ports\nSkileshaven, ND 63696-9271','(026)536-87','1981-12-30',29),(29,'Myrtis Prosacco','5675 Cody Forges Suite 844\nLilyanchester, UT 59634-7145','190.739.587','1996-07-29',14),(30,'Reyna Bailey','84098 Joseph Rapid Apt. 941\nLake Blancaview, KS 83018-6744','1-936-747-2','2012-06-15',47),(31,'Brandi Hahn','595 Serenity Curve Suite 379\nPort Kevenmouth, KS 64020-7216','+40(4)86828','1980-06-01',19),(32,'Pansy Bayer','8591 Armstrong Ranch Apt. 277\nWest Nova, ID 59844','+68(0)82030','2012-12-01',42),(33,'Patrick Pacocha','7156 Breanne Fork Suite 791\nD\'Amoretown, NC 36982-9829','(045)813-95','1974-10-12',79),(34,'Renee Trantow','6462 Robin Pine Apt. 023\nPort Taniaberg, UT 01606','189.070.778','2006-02-16',99),(35,'Santiago Denesik III','4509 Weimann Locks\nWatershaven, NM 23835-8782','1-213-385-1','1985-04-19',80),(36,'Elza Sauer','93994 Lelah Prairie\nNorth Princess, GA 71218','03297207242','2013-03-27',28),(37,'Prof. Scottie Runolfsdottir','0467 Lakin Estate\nHackettside, MD 83614-5053','1-782-003-7','1974-06-12',93),(38,'Prof. Melany Smith I','906 Prohaska Freeway Suite 422\nJulieside, NH 58182','(752)645-95','2015-01-21',17),(39,'Pamela Cronin IV','8403 Jalyn Ridges Apt. 261\nNew Kelly, MD 55604','1-843-650-9','1982-01-19',51),(40,'Prof. Stone Stark','80297 Schulist Oval Suite 062\nEast Reyes, MO 30685-9464','(555)289-60','1973-05-19',38),(41,'Juana Bode','677 Kris Flat\nWest George, VA 23166','(951)868-02','1985-07-12',13),(42,'Lazaro Smith','31906 Mervin Ramp Apt. 021\nPfannerstillstad, AZ 64719','506-805-527','1981-06-01',37),(43,'Patrick D\'Amore PhD','66285 Franecki Valley\nParisianberg, ND 43775-2602','1-854-076-3','2009-09-17',22),(44,'Payton Hermiston','57822 Goodwin Shore\nTonyfort, NY 86475-0782','1-544-998-5','2002-11-28',57),(45,'Dallas Homenick','3277 Hollie Canyon Suite 154\nJaysonfort, NV 22139','(921)221-32','2011-05-04',49),(46,'Ms. Lois Tillman','5594 Schoen Freeway Suite 653\nSabinamouth, AZ 04258','270-655-902','1987-09-05',80),(47,'Irwin Volkman','141 Trinity Hills Apt. 966\nEast Elmo, VA 19580','1-857-013-3','2012-06-19',46),(48,'Leonie Nicolas','8678 Rodrick Valley Apt. 694\nSouth Aracelyville, NC 68630','(464)834-86','1982-11-19',82),(49,'Nya Trantow','36589 Darien Locks\nBashirianmouth, NC 35789-9853','958.767.409','2012-12-21',93),(50,'Wilbert Swaniawski','7235 Metz Alley Suite 298\nRatkeshire, NJ 59506','894.363.389','2000-02-15',45),(51,'Tamia Goyette','9292 Dereck Junctions Suite 475\nEast Carleymouth, MO 04972-6956','755.243.940','1994-05-26',24),(52,'Prof. Mozelle Harber III','908 Raoul Crescent\nPort Nils, SD 07443','(463)451-37','2015-10-06',61),(53,'Johnathan Hodkiewicz V','65915 Libby Spring\nLoriton, AZ 15918-3737','(285)894-55','1981-08-26',100),(54,'Prof. Sam Steuber','08698 Reilly Groves Apt. 288\nRathberg, VT 54610','650-641-336','1995-03-12',50),(55,'Morris Kihn','2631 Runolfsdottir Divide Apt. 628\nNorth Halie, OH 50734-3973','438.107.912','1979-03-17',48),(56,'Fritz Thompson Sr.','530 Kessler Grove Suite 568\nBernicechester, WA 02700','08440180300','1970-12-21',25),(57,'Hester Corwin','539 Oma Mission\nSheridanberg, CT 47999-9786','+50(5)15288','2011-11-12',98),(58,'Della Howe','844 Salma Ways\nEast Twilaton, IN 54851','(678)696-34','2015-05-07',19),(59,'Rasheed Howe I','5076 Delpha Ports\nHoweport, VA 12889','1-587-033-6','1973-05-07',74),(60,'Mr. Alden Rutherford V','41380 Kuhic Rest\nRichmondstad, WA 53061-6556','(488)523-58','1998-02-15',68),(61,'Carole Bernier','650 Bernhard Pines Suite 581\nEast Theodoraside, IL 37763','1-496-727-1','2016-05-23',77),(62,'Leo Durgan','297 Floyd Ford\nNorth Robbtown, NM 26268-6488','493.838.469','2013-06-06',99),(63,'Immanuel Baumbach','41828 Gislason Trail\nKubland, AL 36323-2083','1-432-901-6','1985-06-22',94),(64,'Orin Wilderman','3858 Kimberly Trace\nAnyaborough, MI 40969-1022','994-414-725','1991-12-21',39),(65,'Geo D\'Amore','4056 Verda Highway Suite 678\nLeathaburgh, DE 37091','01629895443','1983-02-02',24),(66,'Elbert Lynch','5535 Doyle Green Suite 053\nWest Aliza, IA 05901','611.383.540','1992-03-13',90),(67,'Dr. Lenny Welch IV','712 Princess Stravenue\nEloybury, NY 95094-3489','07164909097','2001-06-13',27),(68,'Aurelio Turner','42269 Elna Crescent Suite 664\nPort Brianneland, CO 53219-7688','457-152-662','1975-11-09',66),(69,'Hilma Mohr','681 Boyd Route Apt. 226\nEast Mona, NC 91114-9316','538-291-090','2015-07-29',52),(70,'Nash Braun','0881 Isidro Square\nSouth Curt, IL 78750','(615)804-16','1975-03-05',35),(71,'Korey Jacobi','978 Elbert Station Apt. 516\nSchambergermouth, TN 40171-3653','1-908-023-1','2010-12-12',89),(72,'Montana Pfeffer','48600 Cyril Bridge Apt. 928\nPort Lawsonside, OR 11768','(152)303-06','1980-02-05',86),(73,'Dr. Durward Hand Jr.','3137 Kayli Shores Suite 687\nFarrellstad, MS 08449','419-325-397','2007-01-01',22),(74,'Filomena Langosh','368 Bauch Villages\nSteubershire, NY 25957-9549','1-319-660-1','1970-12-15',56),(75,'Dr. Ryder Turcotte','3294 Sheila Pass Apt. 429\nEast Geovanytown, ND 67570-1359','1-990-387-9','2009-05-20',61),(76,'Modesta O\'Conner','9665 Sophia Greens Suite 949\nArnoldoland, ND 17575-0642','512-138-664','1971-06-10',30),(77,'Meredith Sawayn','147 Garrett Fort\nMilesstad, NM 20832-1480','(569)363-26','1999-06-21',51),(78,'Reginald Will','8259 Krystina Courts\nConnellymouth, MI 80209','177.277.896','1974-10-25',30),(79,'Vincenzo Schamberger','083 Theron Throughway\nEast Nayelishire, MT 86733','1-465-156-2','2005-01-12',71),(80,'Bradford Klein','6759 Freddie Vista Suite 286\nWest Nobleberg, MN 68035-3755','00513004317','2012-04-07',58),(81,'Sandrine Orn MD','1255 Teagan Circles Suite 247\nRaqueltown, GA 66457','377.887.018','2010-07-02',98),(82,'Prof. Ebba Braun DDS','26681 Rempel Key Suite 756\nEast Alifort, NC 08413-1157','071.813.753','1992-04-23',11),(83,'Norval Nienow','120 Gislason Groves Apt. 187\nPort Sabina, MA 48764','1-300-130-9','2004-12-30',80),(84,'Mrs. Stephany Wolff PhD','322 Stokes Passage\nEast Mayeside, MD 57151-5398','560-216-021','2004-10-16',19),(85,'Dr. Jameson Funk','0547 Jalyn Flats Apt. 824\nNew Rosemarie, UT 30763-2437','417-251-639','2005-06-23',56),(86,'Roslyn Simonis','182 Barton Expressway Suite 376\nRolfsonmouth, DE 06597','(111)585-02','1977-03-25',76),(87,'Ms. Alycia Bayer IV','925 Sigrid Trace Apt. 755\nMrazstad, HI 32792-0840','683.238.555','2017-06-24',91),(88,'Dr. Raphael Waelchi','0467 Anahi Parkway Suite 080\nNew Autumn, MS 66238-8913','+35(7)60497','2009-11-10',33),(89,'Dr. Jonathan Bode III','19511 Keon Lights Apt. 623\nErabury, RI 11238','(552)274-38','2016-06-29',32),(90,'Cayla Trantow','7329 Becker Estate Suite 176\nBahringerport, NE 69988-9005','(504)466-21','2007-09-07',77),(91,'Armand Sipes','199 Wyman Parkway\nHodkiewiczview, WV 04523-3959','1-085-691-4','1987-04-15',73),(92,'Yessenia Wintheiser','79698 Tina River Apt. 262\nProhaskaport, VA 87381','(381)981-18','1997-03-22',85),(93,'Laney Prohaska','384 Barton Crossroad\nEast Robb, IN 93306-9594','06227365842','1976-02-02',38),(94,'Isac Price','2426 Jaleel Point\nEast Jasen, NJ 10428-7530','303-600-055','2016-02-26',71),(95,'Estefania Deckow','764 Ismael Mountains Suite 505\nWest Aldenville, NV 37204','(561)226-50','2004-12-24',42),(96,'Terrill Monahan Sr.','7476 Sterling Glen\nWest Vitaburgh, IL 11132-9808','165.436.676','2008-12-11',90),(97,'Ms. Kallie Hickle I','9881 Mueller Circle\nNew Lesleymouth, GA 20766-5525','1-220-176-7','2017-04-03',100),(98,'Elisabeth Green','2435 Huels Falls\nSauermouth, CO 80107','05746647132','1976-11-01',25),(99,'Miss Ana Mraz IV','2938 Kilback Springs Suite 847\nPort Aliceside, CO 25768','1-166-481-8','1985-08-24',50),(100,'Laura Botsford','9688 Ara Station\nPort Lenny, HI 14389-8179','307.368.334','1980-11-03',100);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `ProdID` int(11) NOT NULL AUTO_INCREMENT,
  `ProdName` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  PRIMARY KEY (`ProdID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
INSERT INTO `PRODUCT` VALUES (1,'Lemonade - Natural, 591 Ml',172),(2,'Pasta - Canelloni, Single Serve',48),(3,'Beef - Chuck, Boneless',147),(4,'Longos - Chicken Cordon Bleu',280),(5,'Wine - Sogrape Mateus Rose',268),(6,'Pepper - Julienne, Frozen',260),(7,'Tea - Herbal I Love Lemon',73),(8,'Energy Drink - Franks Pineapple',67),(9,'Flounder - Fresh',24),(10,'Plasticspoonblack',79),(11,'Lemonade - Mandarin, 591 Ml',162),(12,'Wine - Red Oakridge Merlot',51),(13,'Wine - Chateau Bonnet',42),(14,'Chocolate Bar - Reese Pieces',71),(15,'Veal - Tenderloin, Untrimmed',262),(16,'Banana - Leaves',300),(17,'Pork - Bacon,back Peameal',49),(18,'Pork - Butt, Boneless',30),(19,'Towel - Roll White',227),(20,'Pork - Sausage, Medium',285),(21,'Beer - Guiness',81),(22,'Crackers - Trio',247),(23,'Wine - White, French Cross',236),(24,'Cinnamon Rolls',217),(25,'Wine - Sake',77),(26,'Glycerine',253),(27,'Versatainer Nc - 888',37),(28,'Cheese - Wine',195),(29,'Beef Dry Aged Tenderloin Aaa',95),(30,'Nutmeg - Ground',164),(31,'Wine - Beaujolais Villages',139),(32,'Beef - Tenderlion, Center Cut',74),(33,'Soap - Pine Sol Floor Cleaner',123),(34,'Bacardi Breezer - Strawberry',240),(35,'Jam - Raspberry',161),(36,'Seedlings - Buckwheat, Organic',192),(37,'Ecolab - Orange Frc, Cleaner',61),(38,'Cup Translucent 9 Oz',214),(39,'Cheese - Swiss Sliced',187),(40,'Snapple Lemon Tea',98),(41,'Nougat - Paste / Cream',177),(42,'Hersey Shakes',287),(43,'Pepsi - 600ml',114),(44,'Wine - Zinfandel Rosenblum',270),(45,'Irish Cream - Baileys',158),(46,'Ginger - Ground',105),(47,'Bread - Crumbs, Bulk',169),(48,'Veal - Slab Bacon',275),(49,'Veal - Bones',250),(50,'Lemon Pepper',65),(51,'Wine - Red, Wolf Blass, Yellow',278),(52,'Pepper - Paprika, Spanish',129),(53,'Seedlings - Mix, Organic',153),(54,'Pail For Lid 1537',120),(55,'Turkey - Ground. Lean',192),(56,'Puree - Blackcurrant',139),(57,'Cookie Double Choco',136),(58,'Foil Wrap',167),(59,'Longos - Chicken Wings',39),(60,'Milk - 1%',93),(61,'Beer - Rickards Red',170),(62,'Pepper - Gypsy Pepper',110),(63,'Vermacelli - Sprinkles, Assorted',184),(64,'Cup - 6oz, Foam',67),(65,'Sauce - Thousand Island',107),(66,'Mustard - Dry, Powder',120),(67,'Potatoes - Mini White 3 Oz',23),(68,'Creme De Cacao Mcguines',152),(69,'Pasta - Angel Hair',259),(70,'Cabbage - Green',61),(71,'Lamb Rack - Ontario',22),(72,'Wine - Baron De Rothschild',131),(73,'Veal - Eye Of Round',170),(74,'Pastry - French Mini Assorted',83),(75,'Cheese - Goat',159),(76,'Juice - Ocean Spray Cranberry',230),(77,'Nori Sea Weed',129),(78,'Truffle Paste',25),(79,'Wine - Red, Gamay Noir',54),(80,'Sugar - Splenda Sweetener',275),(81,'Muffin - Mix - Strawberry Rhubarb',295),(82,'Lamb - Leg, Diced',84),(83,'Wine - Dubouef Macon - Villages',177),(84,'Stainless Steel Cleaner Vision',244),(85,'Pork - Chop, Frenched',285),(86,'Cheese - Victor Et Berthold',103),(87,'Chicken Thigh - Bone Out',50),(88,'Sprouts - China Rose',182),(89,'Turkey - Ground. Lean',25),(90,'Water - Tonic',127),(91,'Oil - Macadamia',202),(92,'Water - Spring 1.5lit',77),(93,'Nescafe - Frothy French Vanilla',28),(94,'Bread - White, Unsliced',293),(95,'Leeks - Baby, White',151),(96,'Lamb - Whole, Fresh',178),(97,'Bread - Sour Sticks With Onion',63),(98,'Oregano - Fresh',98),(99,'Cheese - Mascarpone',204),(100,'Chicken - Leg / Back Attach',241);
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROMO`
--

DROP TABLE IF EXISTS `PROMO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROMO` (
  `PromoID` int(11) NOT NULL AUTO_INCREMENT,
  `StarsEarnable` int(11) NOT NULL,
  `StarsNeeded` int(11) NOT NULL,
  `ExprDate` date NOT NULL,
  `ProductID` int(11) NOT NULL,
  PRIMARY KEY (`PromoID`),
  KEY `prod_id_fk` (`ProductID`),
  CONSTRAINT `prod_id_fk` FOREIGN KEY (`ProductID`) REFERENCES `PRODUCT` (`ProdID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROMO`
--

LOCK TABLES `PROMO` WRITE;
/*!40000 ALTER TABLE `PROMO` DISABLE KEYS */;
INSERT INTO `PROMO` VALUES (1,20,50,'2017-12-15',1),(2,7,10,'2018-03-12',2),(3,25,80,'2018-10-10',3),(4,40,140,'2017-12-24',4),(5,50,120,'2017-12-12',5),(6,39,140,'2018-01-01',6),(7,20,70,'2018-02-02',7),(8,15,70,'2018-02-03',8),(9,10,40,'2017-12-12',9),(10,5,20,'2017-12-12',10),(11,30,250,'2018-02-02',100),(12,30,230,'2017-12-29',99),(13,20,50,'2017-12-09',98),(14,34,55,'2018-09-09',14),(15,10,80,'2018-03-03',19),(16,10,30,'2018-03-02',30),(17,10,10,'2018-01-01',29),(18,30,200,'2018-01-30',23),(19,10,50,'2018-01-01',24),(20,78,200,'2017-12-12',25),(21,10,100,'2018-01-01',28),(22,20,40,'2018-02-02',57),(23,90,200,'2018-09-09',44),(24,10,15,'2017-12-12',46),(25,10,20,'2017-12-20',76),(26,10,90,'2017-12-16',97),(27,12,24,'2017-12-27',58),(28,20,190,'2017-12-09',60),(29,12,67,'2017-12-22',66),(30,12,56,'2017-12-23',94),(31,33,56,'2017-12-23',88),(32,55,78,'2018-01-10',81),(33,11,66,'2017-12-21',26),(34,67,56,'2017-12-19',40),(35,45,89,'2017-12-28',48),(36,33,88,'2017-12-14',61),(37,12,55,'2017-12-21',80),(38,11,99,'2017-12-22',50),(39,5,45,'2017-12-19',63),(40,33,77,'2017-12-18',68),(41,15,77,'2017-12-21',93),(42,22,55,'2017-12-22',54),(43,11,44,'2017-12-15',64),(44,34,65,'2017-12-17',73),(45,33,88,'2017-12-27',56),(46,33,87,'2018-02-13',78),(47,4,35,'2017-12-19',52),(48,24,65,'2017-12-12',53),(49,12,23,'2017-12-20',43),(50,12,45,'2018-03-06',65),(51,12,34,'2017-12-07',92),(52,22,55,'2017-12-08',91),(53,21,32,'2017-12-19',68),(54,23,32,'2017-12-29',70);
/*!40000 ALTER TABLE `PROMO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROMOSTAR`
--

DROP TABLE IF EXISTS `PROMOSTAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROMOSTAR` (
  `PromoStarID` int(11) NOT NULL AUTO_INCREMENT,
  `Starsval` int(11) NOT NULL,
  `DateUsed` datetime DEFAULT NULL,
  `DateEarned` datetime NOT NULL,
  `ExprDate` date NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `PromoId` int(11) NOT NULL,
  PRIMARY KEY (`PromoStarID`),
  KEY `promo_id_fk` (`PromoId`),
  KEY `customer_id_fk` (`CustomerId`),
  CONSTRAINT `customer_id_fk` FOREIGN KEY (`CustomerId`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE,
  CONSTRAINT `promo_id_fk` FOREIGN KEY (`PromoId`) REFERENCES `PROMO` (`PromoID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROMOSTAR`
--

LOCK TABLES `PROMOSTAR` WRITE;
/*!40000 ALTER TABLE `PROMOSTAR` DISABLE KEYS */;
INSERT INTO `PROMOSTAR` VALUES (1,15,NULL,'2017-12-04 22:58:53','2018-02-03',1,8),(2,39,NULL,'2017-12-04 22:59:12','2018-01-01',2,6),(3,20,NULL,'2017-12-04 22:59:12','2018-02-02',2,7),(4,7,NULL,'2017-12-04 22:59:25','2018-03-12',3,2),(5,25,NULL,'2017-12-04 22:59:25','2018-10-10',3,3),(6,25,NULL,'2017-12-04 23:00:46','2018-10-10',10,3),(7,7,NULL,'2017-12-04 23:01:04','2018-03-12',21,2),(8,50,NULL,'2017-12-04 23:01:04','2017-12-12',21,5),(9,20,NULL,'2017-12-04 23:01:04','2018-02-02',21,7),(10,30,NULL,'2017-12-04 23:01:40','2017-12-29',95,12),(11,15,NULL,'2017-12-04 23:02:40','2018-02-03',29,8),(12,50,NULL,'2017-12-04 23:02:51','2017-12-12',1,5),(13,39,NULL,'2017-12-04 23:02:51','2018-01-01',1,6),(14,50,NULL,'2017-12-04 23:02:53','2017-12-12',1,5),(15,39,NULL,'2017-12-04 23:02:53','2018-01-01',1,6),(16,25,NULL,'2017-12-04 23:03:20','2018-10-10',3,3),(17,40,NULL,'2017-12-04 23:03:20','2017-12-24',3,4),(18,20,NULL,'2017-12-04 23:04:09','2018-02-02',60,7),(19,40,NULL,'2017-12-04 23:17:46','2017-12-24',3,4),(20,39,NULL,'2017-12-04 23:17:46','2018-01-01',3,6),(21,20,NULL,'2017-12-04 23:18:03','2017-12-15',44,1),(22,7,NULL,'2017-12-04 23:18:03','2018-03-12',44,2),(23,45,NULL,'2017-12-04 23:18:20','2017-12-28',4,35),(24,20,NULL,'2017-12-04 23:19:04','2017-12-15',1,1),(25,12,NULL,'2017-12-04 23:24:19','2017-12-27',1,27),(26,20,NULL,'2017-12-04 23:24:28','2018-02-02',3,7),(27,25,NULL,'2017-12-04 23:24:57','2018-10-10',58,3),(28,40,NULL,'2017-12-04 23:24:57','2017-12-24',58,4),(29,50,NULL,'2017-12-04 23:24:57','2017-12-12',58,5),(30,20,NULL,'2017-12-04 23:24:57','2018-02-02',58,7),(31,5,NULL,'2017-12-04 23:24:57','2017-12-12',58,10),(32,12,NULL,'2017-12-04 23:25:08','2017-12-22',62,29),(33,33,NULL,'2017-12-04 23:25:08','2017-12-18',62,40),(34,11,NULL,'2017-12-04 23:25:08','2017-12-15',62,43),(35,21,NULL,'2017-12-04 23:25:08','2017-12-19',62,53),(36,33,NULL,'2017-12-04 23:25:20','2018-02-13',95,46),(37,12,NULL,'2017-12-04 23:25:34','2018-03-06',62,50),(38,34,NULL,'2017-12-04 23:25:46','2017-12-17',81,44),(39,30,NULL,'2017-12-04 23:26:38','2017-12-29',70,12),(40,20,NULL,'2017-12-04 23:26:38','2017-12-09',70,13),(41,34,NULL,'2017-12-04 23:26:38','2017-12-17',70,44),(42,11,NULL,'2017-12-04 23:26:47','2017-12-15',60,43),(43,50,NULL,'2017-12-04 23:26:59','2017-12-12',94,5),(44,33,NULL,'2017-12-04 23:27:11','2017-12-14',68,36),(45,15,NULL,'2017-12-04 23:27:21','2017-12-21',90,41),(46,5,NULL,'2017-12-04 23:27:36','2017-12-19',72,39),(47,12,NULL,'2017-12-04 23:28:15','2017-12-21',96,37),(48,25,NULL,'2017-12-04 23:28:38','2018-10-10',72,3),(49,20,NULL,'2017-12-04 23:29:32','2017-12-09',55,28),(50,33,NULL,'2017-12-04 23:29:45','2018-02-13',96,46),(51,20,NULL,'2017-12-04 23:30:00','2017-12-09',68,28),(52,33,NULL,'2017-12-04 23:30:00','2017-12-14',68,36);
/*!40000 ALTER TABLE `PROMOSTAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REWARD`
--

DROP TABLE IF EXISTS `REWARD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REWARD` (
  `RewardID` int(11) NOT NULL AUTO_INCREMENT,
  `Points` int(11) NOT NULL,
  `DateUsed` datetime DEFAULT NULL,
  `DateEarned` datetime NOT NULL,
  `CustomerId` int(11) NOT NULL,
  PRIMARY KEY (`RewardID`),
  KEY `rewards_customer_id_fk` (`CustomerId`),
  CONSTRAINT `rewards_customer_id_fk` FOREIGN KEY (`CustomerId`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REWARD`
--

LOCK TABLES `REWARD` WRITE;
/*!40000 ALTER TABLE `REWARD` DISABLE KEYS */;
INSERT INTO `REWARD` VALUES (1,1,NULL,'2017-12-04 22:58:53',1),(2,6,NULL,'2017-12-04 22:59:12',2),(3,3,NULL,'2017-12-04 22:59:25',3),(4,6,NULL,'2017-12-04 22:59:47',6),(5,4,NULL,'2017-12-04 23:00:03',6),(6,14,NULL,'2017-12-04 23:00:46',10),(7,7,NULL,'2017-12-04 23:01:04',21),(8,2,NULL,'2017-12-04 23:01:21',15),(9,6,NULL,'2017-12-04 23:01:40',95),(10,4,NULL,'2017-12-04 23:01:57',94),(11,3,NULL,'2017-12-04 23:02:07',47),(12,3,NULL,'2017-12-04 23:02:11',47),(13,10,NULL,'2017-12-04 23:02:25',40),(14,1,NULL,'2017-12-04 23:02:40',29),(15,10,NULL,'2017-12-04 23:02:51',1),(16,10,NULL,'2017-12-04 23:02:53',1),(17,8,NULL,'2017-12-04 23:03:20',3),(18,2,NULL,'2017-12-04 23:03:30',59),(19,2,NULL,'2017-12-04 23:03:44',48),(20,5,NULL,'2017-12-04 23:03:57',65),(21,1,NULL,'2017-12-04 23:04:09',60),(22,10,NULL,'2017-12-04 23:17:46',3),(23,4,NULL,'2017-12-04 23:18:03',44),(24,5,NULL,'2017-12-04 23:18:20',4),(25,3,NULL,'2017-12-04 23:19:04',1),(26,3,NULL,'2017-12-04 23:24:19',1),(27,1,NULL,'2017-12-04 23:24:28',3),(28,2,NULL,'2017-12-04 23:24:40',1),(29,16,NULL,'2017-12-04 23:24:57',58),(30,6,NULL,'2017-12-04 23:25:08',62),(31,5,NULL,'2017-12-04 23:25:20',95),(32,2,NULL,'2017-12-04 23:25:34',62),(33,3,NULL,'2017-12-04 23:25:46',81),(34,3,NULL,'2017-12-04 23:25:57',76),(35,2,NULL,'2017-12-04 23:26:11',89),(36,9,NULL,'2017-12-04 23:26:38',70),(37,1,NULL,'2017-12-04 23:26:47',60),(38,5,NULL,'2017-12-04 23:26:59',94),(39,3,NULL,'2017-12-04 23:27:11',68),(40,0,NULL,'2017-12-04 23:27:21',90),(41,3,NULL,'2017-12-04 23:27:36',72),(42,3,NULL,'2017-12-04 23:27:48',83),(43,3,NULL,'2017-12-04 23:28:02',88),(44,5,NULL,'2017-12-04 23:28:15',96),(45,0,NULL,'2017-12-04 23:28:26',86),(46,2,NULL,'2017-12-04 23:28:38',72),(47,8,NULL,'2017-12-04 23:28:51',1),(48,5,NULL,'2017-12-04 23:29:04',78),(49,0,NULL,'2017-12-04 23:29:21',54),(50,1,NULL,'2017-12-04 23:29:32',55),(51,3,NULL,'2017-12-04 23:29:45',96),(52,6,NULL,'2017-12-04 23:30:00',68);
/*!40000 ALTER TABLE `REWARD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STOCK`
--

DROP TABLE IF EXISTS `STOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STOCK` (
  `StockID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_id` int(11) NOT NULL,
  `Branch_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`StockID`),
  KEY `product_id_fk` (`Product_id`),
  KEY `branch_id_fk` (`Branch_id`),
  CONSTRAINT `branch_id_fk` FOREIGN KEY (`Branch_id`) REFERENCES `BRANCH` (`BranchID`) ON DELETE CASCADE,
  CONSTRAINT `product_id_fk` FOREIGN KEY (`Product_id`) REFERENCES `PRODUCT` (`ProdID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STOCK`
--

LOCK TABLES `STOCK` WRITE;
/*!40000 ALTER TABLE `STOCK` DISABLE KEYS */;
INSERT INTO `STOCK` VALUES (1,8,1,120),(2,6,1,120),(3,3,2,40),(4,12,10,100),(5,19,4,40),(6,10,16,100),(7,21,2,100),(8,41,14,190),(9,30,40,90),(10,50,33,70),(11,7,3,40),(12,94,2,22),(13,27,38,10),(14,33,23,10),(15,39,34,30),(16,54,38,10),(17,55,6,20),(18,58,3,30),(19,8,66,178),(20,47,57,30),(21,5,2,122),(22,38,4,234),(23,43,42,432),(24,5,4,432),(25,58,56,111),(26,38,46,122),(27,4,4,43),(28,70,13,33),(29,48,58,43),(30,57,43,43),(31,67,96,33),(32,47,45,33),(33,7,50,12),(34,60,70,55),(35,80,77,12),(36,8,82,12),(37,75,54,23),(38,65,65,44),(39,52,49,44),(40,52,50,55),(41,50,83,23),(42,54,57,12),(43,7,3,44),(44,68,80,34),(45,41,44,33),(46,86,61,43),(47,44,41,23),(48,60,2,44),(49,96,3,43),(50,3,52,12);
/*!40000 ALTER TABLE `STOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANSACTION`
--

DROP TABLE IF EXISTS `TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRANSACTION` (
  `TransID` int(11) NOT NULL AUTO_INCREMENT,
  `Payment_amt` int(11) NOT NULL,
  `Payment_type` enum('PESO','POINTS') NOT NULL,
  `TransDesc` varchar(255) NOT NULL,
  `DateCreated` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `BranchId` int(11) NOT NULL,
  PRIMARY KEY (`TransID`),
  KEY `branchid_fk` (`BranchId`),
  KEY `customerid_fk` (`CustomerId`),
  CONSTRAINT `branchid_fk` FOREIGN KEY (`BranchId`) REFERENCES `BRANCH` (`BranchID`) ON DELETE CASCADE,
  CONSTRAINT `customerid_fk` FOREIGN KEY (`CustomerId`) REFERENCES `CUSTOMER` (`CustomerID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTION`
--

LOCK TABLES `TRANSACTION` WRITE;
/*!40000 ALTER TABLE `TRANSACTION` DISABLE KEYS */;
INSERT INTO `TRANSACTION` VALUES (1,67,'PESO','Bought 1 product/s','2017-12-04 22:58:53','2017-12-04 22:58:53',1,1),(2,333,'PESO','Bought 2 product/s','2017-12-04 22:59:12','2017-12-04 22:59:12',2,2),(3,195,'PESO','Bought 2 product/s','2017-12-04 22:59:25','2017-12-04 22:59:25',3,3),(4,327,'PESO','Bought 2 product/s','2017-12-04 22:59:47','2017-12-04 22:59:47',6,7),(5,222,'PESO','Bought 3 product/s','2017-12-04 23:00:03','2017-12-04 23:00:03',6,5),(6,704,'PESO','Bought 3 product/s','2017-12-04 23:00:46','2017-12-04 23:00:46',10,4),(7,389,'PESO','Bought 3 product/s','2017-12-04 23:01:04','2017-12-04 23:01:04',21,43),(8,139,'PESO','Bought 1 product/s','2017-12-04 23:01:21','2017-12-04 23:01:21',15,29),(9,335,'PESO','Bought 2 product/s','2017-12-04 23:01:40','2017-12-04 23:01:40',95,96),(10,247,'PESO','Bought 1 product/s','2017-12-04 23:01:57','2017-12-04 23:01:57',94,95),(11,177,'PESO','Bought 1 product/s','2017-12-04 23:02:11','2017-12-04 23:02:11',47,65),(12,529,'PESO','Bought 2 product/s','2017-12-04 23:02:25','2017-12-04 23:02:25',40,33),(13,67,'PESO','Bought 1 product/s','2017-12-04 23:02:40','2017-12-04 23:02:40',29,56),(14,528,'PESO','Bought 2 product/s','2017-12-04 23:02:53','2017-12-04 23:02:53',1,45),(15,427,'PESO','Bought 2 product/s','2017-12-04 23:03:20','2017-12-04 23:03:20',3,4),(16,120,'PESO','Bought 1 product/s','2017-12-04 23:03:30','2017-12-04 23:03:30',59,60),(17,139,'PESO','Bought 1 product/s','2017-12-04 23:03:44','2017-12-04 23:03:44',48,56),(18,275,'PESO','Bought 2 product/s','2017-12-04 23:03:57','2017-12-04 23:03:57',65,45),(19,73,'PESO','Bought 1 product/s','2017-12-04 23:04:09','2017-12-04 23:04:09',60,56),(20,540,'PESO','Bought 2 product/s','2017-12-04 23:17:46','2017-12-04 23:17:46',3,3),(21,220,'PESO','Bought 2 product/s','2017-12-04 23:18:03','2017-12-04 23:18:03',44,5),(22,275,'PESO','Bought 1 product/s','2017-12-04 23:18:20','2017-12-04 23:18:20',4,41),(23,172,'PESO','Bought 1 product/s','2017-12-04 23:19:04','2017-12-04 23:19:04',1,3),(24,167,'PESO','Bought 1 product/s','2017-12-04 23:24:19','2017-12-04 23:24:19',1,2),(25,73,'PESO','Bought 1 product/s','2017-12-04 23:24:28','2017-12-04 23:24:28',3,6),(26,129,'PESO','Bought 1 product/s','2017-12-04 23:24:40','2017-12-04 23:24:40',1,51),(27,847,'PESO','Bought 5 product/s','2017-12-04 23:24:57','2017-12-04 23:24:57',58,66),(28,339,'PESO','Bought 3 product/s','2017-12-04 23:25:08','2017-12-04 23:25:08',62,70),(29,256,'PESO','Bought 3 product/s','2017-12-04 23:25:20','2017-12-04 23:25:20',95,96),(30,107,'PESO','Bought 1 product/s','2017-12-04 23:25:34','2017-12-04 23:25:34',62,71),(31,170,'PESO','Bought 1 product/s','2017-12-04 23:25:46','2017-12-04 23:25:46',81,77),(32,151,'PESO','Bought 1 product/s','2017-12-04 23:25:57','2017-12-04 23:25:57',76,98),(33,103,'PESO','Bought 1 product/s','2017-12-04 23:26:11','2017-12-04 23:26:11',89,82),(34,472,'PESO','Bought 3 product/s','2017-12-04 23:26:38','2017-12-04 23:26:38',70,51),(35,67,'PESO','Bought 1 product/s','2017-12-04 23:26:47','2017-12-04 23:26:47',60,61),(36,268,'PESO','Bought 1 product/s','2017-12-04 23:26:59','2017-12-04 23:26:59',94,97),(37,170,'PESO','Bought 1 product/s','2017-12-04 23:27:11','2017-12-04 23:27:11',68,75),(38,28,'PESO','Bought 1 product/s','2017-12-04 23:27:21','2017-12-04 23:27:21',90,98),(39,184,'PESO','Bought 1 product/s','2017-12-04 23:27:37','2017-12-04 23:27:37',72,88),(40,177,'PESO','Bought 1 product/s','2017-12-04 23:27:48','2017-12-04 23:27:48',83,97),(41,159,'PESO','Bought 1 product/s','2017-12-04 23:28:02','2017-12-04 23:28:02',88,64),(42,275,'PESO','Bought 1 product/s','2017-12-04 23:28:15','2017-12-04 23:28:15',96,98),(43,22,'PESO','Bought 1 product/s','2017-12-04 23:28:26','2017-12-04 23:28:26',86,95),(44,147,'PESO','Bought 1 product/s','2017-12-04 23:28:38','2017-12-04 23:28:38',72,67),(45,421,'PESO','Bought 2 product/s','2017-12-04 23:28:51','2017-12-04 23:28:51',1,63),(46,285,'PESO','Bought 1 product/s','2017-12-04 23:29:04','2017-12-04 23:29:04',78,97),(47,39,'PESO','Bought 1 product/s','2017-12-04 23:29:21','2017-12-04 23:29:21',54,50),(48,93,'PESO','Bought 1 product/s','2017-12-04 23:29:32','2017-12-04 23:29:32',55,92),(49,154,'PESO','Bought 2 product/s','2017-12-04 23:29:45','2017-12-04 23:29:45',96,91),(50,302,'PESO','Bought 3 product/s','2017-12-04 23:30:00','2017-12-04 23:30:00',68,80);
/*!40000 ALTER TABLE `TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-04 23:45:20
