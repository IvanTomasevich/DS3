CREATE TABLE IF NOT EXISTS vuelos (
    id INT PRIMARY KEY  AUTO_INCREMENT  NOT NULL , 
    id_aeropuerto_origen INT, 
    id_aeropuerto_destino INT, 
    duracion INT, 
    numero_de_vuelo VARCHAR(10)
);
INSERT INTO vuelos VALUES(1,1,2,70,'AR1234');
INSERT INTO vuelos VALUES(2,6,17,23732,'AR4794');
INSERT INTO vuelos VALUES(3,6,18,29225,'AR6690');
INSERT INTO vuelos VALUES(4,6,15,35540,'AR1504');
INSERT INTO vuelos VALUES(5,6,4,22795,'AR2079');
INSERT INTO vuelos VALUES(6,6,7,24087,'AR4251');
INSERT INTO vuelos VALUES(7,6,7,10290,'AR2770');
INSERT INTO vuelos VALUES(8,6,13,22237,'AR4489');
INSERT INTO vuelos VALUES(9,6,3,5607,'AR9061');
INSERT INTO vuelos VALUES(10,6,4,15881,'AR1989');
INSERT INTO vuelos VALUES(11,6,11,7060,'AR6788');
INSERT INTO vuelos VALUES(12,6,11,31698,'AR8585');
INSERT INTO vuelos VALUES(13,6,18,28333,'BR2910');
INSERT INTO vuelos VALUES(14,10,9,11465,'AR9914');
INSERT INTO vuelos VALUES(15,10,15,27545,'AR9843');
INSERT INTO vuelos VALUES(16,10,5,22589,'AR8409');
INSERT INTO vuelos VALUES(17,10,7,23610,'AR9493');
INSERT INTO vuelos VALUES(18,10,6,160,'AR5898');
INSERT INTO vuelos VALUES(19,10,13,4044,'AR7925');
INSERT INTO vuelos VALUES(20,10,12,9279,'AR6498');
INSERT INTO vuelos VALUES(21,10,4,17193,'AR1247');
INSERT INTO vuelos VALUES(22,10,16,16758,'AR1247');
INSERT INTO vuelos VALUES(23,10,16,20472,'AR1247');
INSERT INTO vuelos VALUES(24,10,12,7426,'AR1247');
INSERT INTO vuelos VALUES(25,10,6,160,'AR1247');
INSERT INTO vuelos VALUES(26,10,8,16443,'AR1247');
INSERT INTO vuelos VALUES(27,10,15,22593,'AR1247');
INSERT INTO vuelos VALUES(28,10,7,31955,'AR1247');
INSERT INTO vuelos VALUES(29,10,1,17871,'AR2216');
INSERT INTO vuelos VALUES(30,10,7,2981,'AR5984');
INSERT INTO vuelos VALUES(31,10,12,35322,'AR6875');
INSERT INTO vuelos VALUES(32,10,6,160,'AR9101');
INSERT INTO vuelos VALUES(33,10,3,32526,'AR4911');
INSERT INTO vuelos VALUES(34,10,18,10260,'AR1686');
INSERT INTO vuelos VALUES(35,10,8,14959,'AR9961');
INSERT INTO vuelos VALUES(36,10,11,2928,'AR2356');
INSERT INTO vuelos VALUES(37,10,1,18510,'AR7260');
INSERT INTO vuelos VALUES(38,10,12,34877,'AR9865');
INSERT INTO vuelos VALUES(39,10,12,7876,'AR1392');
INSERT INTO vuelos VALUES(40,10,5,7464,'AR5628');
INSERT INTO vuelos VALUES(41,10,2,32841,'AR2112');
INSERT INTO vuelos VALUES(42,10,14,20205,'AR2112');
INSERT INTO vuelos VALUES(43,10,6,160,'AR2112');
INSERT INTO vuelos VALUES(44,10,17,2896,'AR2112');
INSERT INTO vuelos VALUES(45,10,18,847,'AR2112');
INSERT INTO vuelos VALUES(46,10,5,16598,'AR2112');
INSERT INTO vuelos VALUES(47,10,5,17681,'AR2112');
INSERT INTO vuelos VALUES(48,10,12,22604,'AR2112');
INSERT INTO vuelos VALUES(49,17,19,3600,'AR4794');
INSERT INTO vuelos VALUES(50,18,19,2000,'AR6690');
INSERT INTO vuelos VALUES(51,15,19,35540,'AR1504');
INSERT INTO vuelos VALUES(52,4,19,22795,'AR2079');
INSERT INTO vuelos VALUES(53,7,19,18000,'AR4251');
INSERT INTO vuelos VALUES(54,7,19,10290,'AR2770');
INSERT INTO vuelos VALUES(55,13,19,2000,'AR4489');
INSERT INTO vuelos VALUES(56,3,19,5607,'AR9061');
INSERT INTO vuelos VALUES(57,4,19,1500,'AR1989');
INSERT INTO vuelos VALUES(58,11,19,7060,'AR6788');

CREATE TABLE IF NOT EXISTS aeropuertos (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50), 
    codigo VARCHAR(3),
    pais VARCHAR(20)

);
INSERT INTO aeropuertos VALUES(1,'Madrid','MAD','España');
INSERT INTO aeropuertos VALUES(2,'Barcelona','BCN','España');
INSERT INTO aeropuertos VALUES(3,'Frankfurt','FRA','Alemania');
INSERT INTO aeropuertos VALUES(4,'Estambul','IST','Turquía');
INSERT INTO aeropuertos VALUES(5,'Santiago de Compostela','SCQ','España');
INSERT INTO aeropuertos VALUES(6,'Rosario','ROS','Argentina');
INSERT INTO aeropuertos VALUES(7,'Paris','CDG','Francia');
INSERT INTO aeropuertos VALUES(8,'Bilbao','BIO','España');
INSERT INTO aeropuertos VALUES(9,'Ibiza','IBZ','España');
INSERT INTO aeropuertos VALUES(10,'Buenos Aires','EZE','Argentina');
INSERT INTO aeropuertos VALUES(11,'Buenos Aires','AEP','Argentina');
INSERT INTO aeropuertos VALUES(12,'Santiago de Chile','SCL', 'Chile');
INSERT INTO aeropuertos VALUES(13,'Córdoba','COR','Argentina');
INSERT INTO aeropuertos VALUES(14,'Lima','LIM','Perú');
INSERT INTO aeropuertos VALUES(15,'Bogotá','BOG','Colombia');
INSERT INTO aeropuertos VALUES(16,'Caracas','CCS','Venezuela');
INSERT INTO aeropuertos VALUES(17,'Sao Paulo','GRU','Brasil');
INSERT INTO aeropuertos VALUES(18,'Asuncion','ASU','Paraguay');
INSERT INTO aeropuertos VALUES(19,'Cancun','CAN','México');

CREATE TABLE IF NOT EXISTS pasaje (
    id_vuelo INT NOT NULL , 
    id_pasajero INT NOT NULL , 
    asiento VARCHAR(5), 
    PRIMARY KEY (id_vuelo, id_pasajero)
);
INSERT INTO pasaje VALUES(21,1,'A19');
INSERT INTO pasaje VALUES(7,2,'B18');
INSERT INTO pasaje VALUES(9,3,'C5');
INSERT INTO pasaje VALUES(14,4,'D31');
INSERT INTO pasaje VALUES(32,5,'A20');
INSERT INTO pasaje VALUES(22,6,'B33');
INSERT INTO pasaje VALUES(21,7,'C15');
INSERT INTO pasaje VALUES(21,8,'D3');
INSERT INTO pasaje VALUES(38,9,'A8');
INSERT INTO pasaje VALUES(4,10,'B22');
INSERT INTO pasaje VALUES(19,11,'C4');
INSERT INTO pasaje VALUES(19,12,'D14');
INSERT INTO pasaje VALUES(37,13,'A11');
INSERT INTO pasaje VALUES(33,14,'B14');
INSERT INTO pasaje VALUES(19,15,'C31');
INSERT INTO pasaje VALUES(21,16,'A11');
INSERT INTO pasaje VALUES(30,17,'B15');
INSERT INTO pasaje VALUES(2,18,'C8');
INSERT INTO pasaje VALUES(36,19,'D14');
INSERT INTO pasaje VALUES(27,20,'A19');
INSERT INTO pasaje VALUES(1,21,'B6');
INSERT INTO pasaje VALUES(41,22,'C29');
INSERT INTO pasaje VALUES(37,23,'D24');
INSERT INTO pasaje VALUES(7,24,'A6');
INSERT INTO pasaje VALUES(45,25,'B29');
INSERT INTO pasaje VALUES(21,26,'C24');
INSERT INTO pasaje VALUES(16,27,'D20');
INSERT INTO pasaje VALUES(6,28,'A17');
INSERT INTO pasaje VALUES(30,29,'B6');
INSERT INTO pasaje VALUES(8,30,'C33');
INSERT INTO pasaje VALUES(31,31,'D17');
INSERT INTO pasaje VALUES(46,32,'A2');
INSERT INTO pasaje VALUES(26,33,'B35');
INSERT INTO pasaje VALUES(1,34,'C18');
INSERT INTO pasaje VALUES(29,35,'D18');
INSERT INTO pasaje VALUES(11,36,'A33');
INSERT INTO pasaje VALUES(1,37,'B23');
INSERT INTO pasaje VALUES(13,38,'C30');
INSERT INTO pasaje VALUES(7,39,'A1');
INSERT INTO pasaje VALUES(10,40,'B8');
INSERT INTO pasaje VALUES(24,41,'C29');
INSERT INTO pasaje VALUES(40,42,'A20');
INSERT INTO pasaje VALUES(20,43,'A34');
INSERT INTO pasaje VALUES(3,44,'B31');
INSERT INTO pasaje VALUES(21,45,'A10');
INSERT INTO pasaje VALUES(14,46,'B14');
INSERT INTO pasaje VALUES(47,47,'C15');
INSERT INTO pasaje VALUES(46,48,'A19');
INSERT INTO pasaje VALUES(44,49,'B18');
INSERT INTO pasaje VALUES(5,50,'C5');
INSERT INTO pasaje VALUES(5,51,'D31');
INSERT INTO pasaje VALUES(4,52,'A20');
INSERT INTO pasaje VALUES(22,53,'B33');
INSERT INTO pasaje VALUES(30,54,'C15');
INSERT INTO pasaje VALUES(31,55,'D3');
INSERT INTO pasaje VALUES(37,56,'A8');
INSERT INTO pasaje VALUES(13,57,'B22');
INSERT INTO pasaje VALUES(7,58,'C4');
INSERT INTO pasaje VALUES(32,59,'D14');
INSERT INTO pasaje VALUES(37,60,'A11');
INSERT INTO pasaje VALUES(36,61,'B14');
INSERT INTO pasaje VALUES(18,62,'C31');
INSERT INTO pasaje VALUES(45,63,'A11');
INSERT INTO pasaje VALUES(18,64,'B15');
INSERT INTO pasaje VALUES(5,65,'C8');
INSERT INTO pasaje VALUES(39,66,'D14');
INSERT INTO pasaje VALUES(40,67,'A19');
INSERT INTO pasaje VALUES(27,68,'B6');
INSERT INTO pasaje VALUES(38,69,'C29');
INSERT INTO pasaje VALUES(35,70,'D24');
INSERT INTO pasaje VALUES(21,71,'A6');
INSERT INTO pasaje VALUES(6,72,'B29');
INSERT INTO pasaje VALUES(2,73,'C24');
INSERT INTO pasaje VALUES(35,74,'D20');
INSERT INTO pasaje VALUES(17,75,'A17');
INSERT INTO pasaje VALUES(30,76,'B6');
INSERT INTO pasaje VALUES(38,77,'C33');
INSERT INTO pasaje VALUES(41,78,'D17');
INSERT INTO pasaje VALUES(21,79,'A2');
INSERT INTO pasaje VALUES(16,80,'B35');
INSERT INTO pasaje VALUES(45,81,'C18');
INSERT INTO pasaje VALUES(45,82,'D18');
INSERT INTO pasaje VALUES(43,1,'A19');
INSERT INTO pasaje VALUES(10,2,'B18');
INSERT INTO pasaje VALUES(2,3,'C5');
INSERT INTO pasaje VALUES(35,4,'D31');
INSERT INTO pasaje VALUES(33,5,'A20');
INSERT INTO pasaje VALUES(2,6,'B33');
INSERT INTO pasaje VALUES(40,7,'C15');
INSERT INTO pasaje VALUES(20,8,'D3');
INSERT INTO pasaje VALUES(32,9,'A8');
INSERT INTO pasaje VALUES(13,10,'B22');
INSERT INTO pasaje VALUES(38,11,'C4');
INSERT INTO pasaje VALUES(39,12,'D14');
INSERT INTO pasaje VALUES(23,13,'A11');
INSERT INTO pasaje VALUES(44,14,'B14');
INSERT INTO pasaje VALUES(29,15,'C31');
INSERT INTO pasaje VALUES(7,16,'A11');
INSERT INTO pasaje VALUES(10,17,'B15');
INSERT INTO pasaje VALUES(44,18,'C8');
INSERT INTO pasaje VALUES(19,19,'D14');
INSERT INTO pasaje VALUES(47,20,'A19');
INSERT INTO pasaje VALUES(17,21,'B6');
INSERT INTO pasaje VALUES(29,22,'C29');
INSERT INTO pasaje VALUES(22,23,'D24');
INSERT INTO pasaje VALUES(47,24,'A6');
INSERT INTO pasaje VALUES(2,25,'B29');
INSERT INTO pasaje VALUES(22,26,'C24');
INSERT INTO pasaje VALUES(39,27,'D20');
INSERT INTO pasaje VALUES(22,28,'A17');
INSERT INTO pasaje VALUES(10,29,'B6');
INSERT INTO pasaje VALUES(42,30,'C33');
INSERT INTO pasaje VALUES(35,31,'D17');
INSERT INTO pasaje VALUES(47,32,'A2');
INSERT INTO pasaje VALUES(41,33,'B35');
INSERT INTO pasaje VALUES(35,34,'C18');
INSERT INTO pasaje VALUES(16,35,'D18');
INSERT INTO pasaje VALUES(14,36,'A33');
INSERT INTO pasaje VALUES(41,37,'B23');
INSERT INTO pasaje VALUES(26,38,'C30');
INSERT INTO pasaje VALUES(41,39,'A1');
INSERT INTO pasaje VALUES(8,40,'B8');
INSERT INTO pasaje VALUES(45,41,'C29');
INSERT INTO pasaje VALUES(46,42,'A20');
INSERT INTO pasaje VALUES(19,43,'A34');
INSERT INTO pasaje VALUES(46,44,'B31');
INSERT INTO pasaje VALUES(18,45,'A10');
INSERT INTO pasaje VALUES(16,46,'B14');
INSERT INTO pasaje VALUES(3,47,'C15');
INSERT INTO pasaje VALUES(43,48,'A19');
INSERT INTO pasaje VALUES(20,49,'B18');
INSERT INTO pasaje VALUES(38,50,'C5');
INSERT INTO pasaje VALUES(13,51,'D31');
INSERT INTO pasaje VALUES(47,52,'A20');
INSERT INTO pasaje VALUES(11,53,'B33');
INSERT INTO pasaje VALUES(4,54,'C15');
INSERT INTO pasaje VALUES(27,55,'D3');
INSERT INTO pasaje VALUES(15,56,'A8');
INSERT INTO pasaje VALUES(16,57,'B22');
INSERT INTO pasaje VALUES(46,58,'C4');
INSERT INTO pasaje VALUES(26,59,'D14');

CREATE TABLE IF NOT EXISTS pasajeros (
    id INT PRIMARY KEY  AUTO_INCREMENT  NOT NULL , 
    pasaporte VARCHAR(20), 
    apellido VARCHAR(60), 
    nombre VARCHAR(60), 
    nacionalidad VARCHAR(50)
);
INSERT INTO pasajeros VALUES(1,'AR546772','Gaudio','Irina','Argentina');
INSERT INTO pasajeros VALUES(2,'AR193807','Baez','Eliana','Argentina');
INSERT INTO pasajeros VALUES(3,'AR965877','Enriquez','Julia','Argentina');
INSERT INTO pasajeros VALUES(4,'AR633632','Tifano','Inés','Argentina');
INSERT INTO pasajeros VALUES(5,'AR715845','Dinarte','Vanina','Argentina');
INSERT INTO pasajeros VALUES(6,'AR602250','Benitez','Nadia','Argentina');
INSERT INTO pasajeros VALUES(7,'AR714773','Carrizo','Teresa','Argentina');
INSERT INTO pasajeros VALUES(8,'AR324982','Estevez','Tamara','Argentina');
INSERT INTO pasajeros VALUES(9,'AR582340','Velasquez','Mirian','Argentina');
INSERT INTO pasajeros VALUES(10,'AR470922','Acosta','Luis','Argentina');
INSERT INTO pasajeros VALUES(11,'AR369737','Mendez','Sandra','Argentina');
INSERT INTO pasajeros VALUES(12,'AR398072','Humbri','Ornela','Argentina');
INSERT INTO pasajeros VALUES(13,'AR138658','Uveda','Patricia','Argentina');
INSERT INTO pasajeros VALUES(14,'AR312158','Quintero','Victoria','Argentina');
INSERT INTO pasajeros VALUES(15,'AR395958','Nicola','Daniela','Argentina');
INSERT INTO pasajeros VALUES(16,'AR263237','Laure','Ruth','Argentina');
INSERT INTO pasajeros VALUES(17,'AR998182','Ortigoza','Olga','Argentina');
INSERT INTO pasajeros VALUES(18,'AR849221','Leiva','Luisa','Argentina');
INSERT INTO pasajeros VALUES(19,'AR510970','Sanchez','Marta','Argentina');
INSERT INTO pasajeros VALUES(20,'AR953583','Zoilo','Estefania','Argentina');
INSERT INTO pasajeros VALUES(21,'AR523995','Dinofrio','Ursula','Argentina');
INSERT INTO pasajeros VALUES(22,'AR999694','Romulo','Gisela','Argentina');
INSERT INTO pasajeros VALUES(23,'AR988110','Acevedo','Laura','Argentina');
INSERT INTO pasajeros VALUES(24,'AR523516','Hilario','Sofia','Argentina');
INSERT INTO pasajeros VALUES(25,'AR634162','Rosini','Belén','Argentina');
INSERT INTO pasajeros VALUES(26,'AR672968','Ibarra','Noela','Argentina');
INSERT INTO pasajeros VALUES(27,'AR79675','Maissonave','Rocío','Argentina');
INSERT INTO pasajeros VALUES(28,'AR892455','Villar','Florencia','Argentina');
INSERT INTO pasajeros VALUES(29,'AR576617','Osparra','Hilda','Argentina');
INSERT INTO pasajeros VALUES(30,'AR497001','Fernandez','Cintia','Argentina');
INSERT INTO pasajeros VALUES(31,'AR204389','Fantini','Pia','Argentina');
INSERT INTO pasajeros VALUES(32,'AR788829','Parrili','Fátima','Argentina');
INSERT INTO pasajeros VALUES(33,'AR982031','Acosta','Ana','Argentina');
INSERT INTO pasajeros VALUES(34,'AR120730','Juarez','Delfina','Argentina');
INSERT INTO pasajeros VALUES(35,'AR237935','Parole','Alejandra','Argentina');
INSERT INTO pasajeros VALUES(36,'AR655850','Casas','Gabriela','Argentina');
INSERT INTO pasajeros VALUES(37,'AR674970','Jaime','Juana','Argentina');
INSERT INTO pasajeros VALUES(38,'AR648429','Taurasi','Betania','Argentina');
INSERT INTO pasajeros VALUES(39,'AR528171','Icarbo','Carla','Argentina');
INSERT INTO pasajeros VALUES(40,'AR345251','Uriarte','Elias','Argentina');
INSERT INTO pasajeros VALUES(41,'AR249023','Queseda','Nicolás','Argentina');
INSERT INTO pasajeros VALUES(42,'AR397138','Santoro','Ignacio','Argentina');
INSERT INTO pasajeros VALUES(43,'AR159809','Giorolami','Miguel','Argentina');
INSERT INTO pasajeros VALUES(44,'AR566579','Estevez','Luciano','Argentina');
INSERT INTO pasajeros VALUES(45,'AR77174','Velasquez','Luis','Argentina');
INSERT INTO pasajeros VALUES(46,'AR390980','Natalio','Lionel','Argentina');
INSERT INTO pasajeros VALUES(47,'AR883902','Mendez','Daniel','Argentina');
INSERT INTO pasajeros VALUES(48,'AR81971','Humbri','Lautaro','Argentina');
INSERT INTO pasajeros VALUES(49,'AR959185','Uveda','Ricardo','Argentina');
INSERT INTO pasajeros VALUES(50,'AR407011','Quintero','Esteban','Argentina');
INSERT INTO pasajeros VALUES(51,'AR255966','Nicola','Ulises','Argentina');
INSERT INTO pasajeros VALUES(52,'AR119455','Laure','Francisco','Argentina');
INSERT INTO pasajeros VALUES(53,'AR893501','Ortigoza','Facundo','Argentina');
INSERT INTO pasajeros VALUES(54,'AR822051','Leiva','Victor','Argentina');
INSERT INTO pasajeros VALUES(55,'AR731650','Sanchez','Ernersto','Argentina');
INSERT INTO pasajeros VALUES(56,'AR447468','Zoilo','Andrés','Argentina');
INSERT INTO pasajeros VALUES(57,'AR278486','Dinofrio','Rodrigo','Argentina');
INSERT INTO pasajeros VALUES(58,'AR796591','Romulo','Antonio','Argentina');
INSERT INTO pasajeros VALUES(59,'AR824219','Acevedo','Marcos','Argentina');
INSERT INTO pasajeros VALUES(60,'AR232665','Hilario','Alejo','Argentina');
INSERT INTO pasajeros VALUES(61,'AR671537','Rosini','Pablo','Argentina');
INSERT INTO pasajeros VALUES(62,'AR362590','Ibarra','Enrique','Argentina');
INSERT INTO pasajeros VALUES(63,'AR854628','Maissonave','Alejandro','Argentina');
INSERT INTO pasajeros VALUES(64,'AR110196','Villar','Facundo','Argentina');
INSERT INTO pasajeros VALUES(65,'AR764914','Osparra','Julián','Argentina');
INSERT INTO pasajeros VALUES(66,'AR985296','Fernandez','Mario','Argentina');
INSERT INTO pasajeros VALUES(67,'AR813417','Fantini','Lisandro','Argentina');
INSERT INTO pasajeros VALUES(68,'AR881964','Parrili','Alejandro','Argentina');
INSERT INTO pasajeros VALUES(69,'AR941042','Acosta','Lucas','Argentina');
INSERT INTO pasajeros VALUES(70,'AR289868','Juarez','Lucio','Argentina');
INSERT INTO pasajeros VALUES(71,'AR46383','Parole','Pedro','Argentina');
INSERT INTO pasajeros VALUES(72,'AR200129','Casas','Leandro','Argentina');
INSERT INTO pasajeros VALUES(73,'AR185437','Jaime','Javier','Argentina');
INSERT INTO pasajeros VALUES(74,'AR136142','Taurasi','Manuel','Argentina');
INSERT INTO pasajeros VALUES(75,'AR992787','Icarbo','Gabriel','Argentina');
INSERT INTO pasajeros VALUES(76,'AR951370','Zoilo','Santiago','Argentina');
INSERT INTO pasajeros VALUES(77,'AR553304','Dinofrio','Gabriel','Argentina');
INSERT INTO pasajeros VALUES(78,'AR242818','Romulo','José','Argentina');
INSERT INTO pasajeros VALUES(79,'AR137768','Acevedo','Martín','Argentina');
INSERT INTO pasajeros VALUES(80,'AR235804','Hilario','Marcelo','Argentina');
INSERT INTO pasajeros VALUES(81,'AR312279','Rosini','Cesar','Argentina');
INSERT INTO pasajeros VALUES(82,'AR138600','Ibarra','Patricio','Argentina');