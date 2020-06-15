
SET QUOTED_IDENTIFIER ON

go


/* Create Empresas database.                                                                  */
use master  

go

create database "Empresas"  

go

use "Empresas"  

go

/* Create new table "Empresa".                                                                */
/* "Empresa" : Table of Empresa                                                               */
/* 	"Rut" : Rut identifies Empresa                                                            */
/* 	"Dv" : Dv is of Empresa                                                                   */
/* 	"RazonSocial" : RazonSocial is of Empresa                                                 */  
create table "Empresa" ( 
	"Rut" int not null,
	"Dv" char(1) not null,
	"RazonSocial" nvarchar(50) not null)  

go

alter table "Empresa"
	add constraint "Empresa_PK" primary key ("Rut")   


go

/* Create new table "Empleado".                                                               */
/* "Empleado" : Table of Empleado                                                             */
/* 	"Rut" : Rut identifies Empleado                                                           */
/* 	"Dv" : Dv is of Empleado                                                                  */
/* 	"Nombres" : Nombres is of Empleado                                                        */
/* 	"Apellidos" : Apellidos is of Empleado                                                    */
/* 	"Empresa" : Empresa is of Empleado                                                        */  
create table "Empleado" ( 
	"Rut" int not null,
	"Dv" char(1) not null,
	"Nombres" nvarchar(20) not null,
	"Apellidos" nvarchar(20) not null,
	"RutEmpresa" int not null)  

go

alter table "Empleado"
	add constraint "Empleado_PK" primary key ("Rut")   


go

/* Add foreign key constraints to table "Empleado".                                           */
alter table "Empleado"
	add constraint "Empresa_Empleado_FK1" foreign key (
		"RutEmpresa")
	 references "Empresa" (
		"Rut") on update no action on delete no action  

go

/* Registros de Empresa */

INSERT INTO [Empresas].[dbo].[Empresa] VALUES (90147888,'6','Thruwerar  ')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (92024905,'2','Rerobicator Direct Group')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (92436124,'7','Trufropegantor International Inc')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (93350895,'1','Qwidimefantor WorldWide ')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (93741395,'3','Grocadexan  ')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (96874487,'8','Varvenicator Holdings Company')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (97923132,'2','Tupdimedentor Holdings Inc')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (97948160,'2','Survenentor WorldWide ')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (98484732,'K','Supwerexentor Direct ')
INSERT INTO [Empresas].[dbo].[Empresa] VALUES (98691599,'3','Trukilan International Corp.')

/* Registro de Empleado */

INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6057969,'6','Elena','Miranda','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6269943,'8','Rachael','Parsons','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6275202,'0','Sheryl','Richards','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6419034,'9','Marci','Frost','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6502066,'1','Timothy','Petty','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6506702,'K','Leonard','Wilcox','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6694138,'K','Leonard','Chambers','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6756480,'2','Marcie','Phelps','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (6946767,'8','Seth','Carney','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7005434,'0','Melissa','Walton','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7034898,'2','Carmen','Friedman','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7150191,'9','Travis','Gamble','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7168526,'9','Lewis','Villanueva','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7284220,'2','Latasha','Gordon','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7380283,'5','Marla','Mc Intyre','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7503210,'4','Alisa','Cruz','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7560327,'1','Dewayne','Rubio','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7744083,'0','Rochelle','Marquez','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7860078,'9','Chris','Pittman','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7873889,'0','Darius','Pineda','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7909083,'2','Teri','Harris','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (7981132,'6','Shauna','Key','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8001282,'9','Lakesha','Osborne','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8052875,'7','Luke','Shepherd','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8172068,'9','Kara','Snow','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8226222,'4','Kris','Marquez','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8252210,'0','Felipe','Rios','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8267282,'9','Armando','Roman','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8278301,'K','Gilbert','Acevedo','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8283331,'3','Trevor','Livingston','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8312668,'6','Jeremy','Chung','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8317567,'0','Courtney','Boyle','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8405509,'5','Margaret','Sawyer','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8424780,'5','Jamie','Callahan','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8430817,'4','Oscar','Clay','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8520615,'1','Rachelle','Ponce','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8562067,'5','Ramon','Mckay','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8627024,'8','Brett','Khan','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8629897,'K','Edward','Dominguez','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8768378,'3','Trevor','Gay','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8827284,'4','Geoffrey','Richardson','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (8894669,'7','Derick','Watts','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9026650,'3','Karen','Tate','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9070412,'8','Nakia','Gibson','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9087132,'1','Jimmie','Lyons','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9267617,'2','Kelly','Vaughan','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9320960,'1','Chadwick','Wilson','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9387207,'3','Anna','Nielsen','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9390658,'1','Benjamin','Gonzales','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9464133,'1','Annie','Trujillo','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9469490,'K','Candy','Haley','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9544164,'4','Roy','Foley','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9577214,'2','Rachel','Bradshaw','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9733287,'6','Abel','Villa','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9807767,'8','Wendi','Mora','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9854603,'0','Gerard','Clarke','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (9857992,'0','Linda','Chandler','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1005133,'8','Cynthia','Barry','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1005811,'3','Bart','Wall','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1013420,'0','Vincent','Garza','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1023286,'8','Monte','Baxter','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1025328,'5','Tabatha','Barnett','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1056475,'4','Stacie','Waller','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1056582,'7','Barbara','Rogers','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1057752,'8','Jamison','Strickland','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1071122,'8','Priscilla','Everett','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1077759,'3','Max','Wheeler','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1081176,'3','Ryan','Riggs','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1096135,'1','Audra','Graves','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1098366,'0','Quentin','Calhoun','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1099913,'8','Jessie','Brandt','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1107688,'6','Marlon','Espinoza','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1119394,'7','Stephen','Andrade','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1127932,'4','James','Bruce','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (1137361,'8','Steven','Huang','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11429841,'0','Francis','Potts','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11459405,'9','Erik','Brennan','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11488488,'7','Evan','Moses','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11501646,'8','Vicky','Wiggins','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11571000,'5','Candice','Spencer','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11652617,'3','Preston','Mc Neil','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11706645,'5','Patrick','Mac Donald','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11744345,'3','Isaac','Boyd','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11754228,'3','Bart','Koch','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11766897,'9','Marvin','Graves','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11823453,'2','Leanne','Patterson','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11856596,'9','Jeannette','Vazquez','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (11965598,'8','Loren','Malone','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12021648,'9','Clayton','Downs','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12256596,'5','Forrest','Blair','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12343331,'9','Donald','Coffey','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12399125,'2','Marcie','Curry','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12413623,'8','Derrick','Butler','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12478477,'4','Jaime','Reynolds','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12483581,'0','Jenifer','Crosby','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12490167,'K','Evelyn','Potts','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12596096,'5','Patrick','Moran','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12675518,'1','Darren','Hardy','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12678640,'3','Roman','Good','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12739376,'0','Samantha','Cooper','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12803030,'7','Jocelyn','Wolf','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12822294,'7','Drew','Washington','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12837828,'0','Alisha','Hart','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12877053,'1','Otis','Williamson','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (12936916,'1','Dewayne','Patterson','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13031308,'K','Harry','O"Neal','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13038430,'2','Shane','Wallace','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13055585,'8','Jessie','Shannon','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13100208,'5','Kristin','Raymond','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13168994,'9','Kellie','Larson','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13194745,'2','Ann','Donaldson','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13310609,'1','Ginger','Guzman','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13378661,'5','Candice','Glenn','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13566392,'7','Rebecca','Butler','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13588065,'3','Andrea','Watts','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13616191,'1','Betsy','Cannon','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13642167,'4','Wanda','Spears','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13659135,'2','Latasha','Henry','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13679297,'3','Holly','Tyler','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13812651,'K','Donnie','Caldwell','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13875565,'2','Kathleen','Poole','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (13960297,'K','Beth','Cunningham','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14009838,'7','Rickey','Garza','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14100530,'6','Terry','Gillespie','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14131935,'7','Guillermo','Buck','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14132653,'0','Gabriel','Benitez','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14197568,'3','Elizabeth','Arellano','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14212863,'5','Tabatha','Santana','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14316128,'6','Tyrone','Hamilton','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14364117,'2','Kathleen','Lara','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14480675,'0','Alejandro','Myers','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14497033,'9','Lakesha','Barnes','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14505029,'8','Sean','Friedman','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14669316,'4','Roy','Huang','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14713617,'8','Brandie','Elliott','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14733648,'8','Marjorie','Brock','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14740596,'1','Claude','Rivers','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14805984,'K','Rhonda','Holder','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14809169,'1','Cristina','Hubbard','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14930546,'7','Herman','Mora','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14957390,'0','Gerard','Armstrong','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (14964616,'1','Gretchen','Moss','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15112311,'3','Marie','Franco','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15126006,'9','Glen','Houston','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15160739,'0','Yvette','Diaz','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15218105,'7','Ana','Hale','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15220334,'5','Sherri','Koch','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15228313,'8','Melody','Nelson','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15318020,'2','Jane','Garcia','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15371480,'8','Daryl','Krueger','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15380367,'5','Forrest','Calderon','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15549123,'K','Ramona','Case','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15641722,'3','Robbie','Singleton','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15771649,'5','Neil','Davis','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15870757,'5','Irene','Mc Intyre','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15922888,'7','Scottie','Patrick','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15959360,'2','Wallace','Simon','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (15980522,'1','Jolene','Flowers','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16073440,'2','Eva','Browning','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16285459,'K','Cameron','Maxwell','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16290553,'4','Lester','Meyers','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16309184,'3','Kristine','Mullins','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16339454,'K','Taryn','Gilbert','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16380579,'2','Jean','Gregory','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16421520,'5','Damon','Young','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16612359,'8','Ronda','Booth','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16641880,'0','Jonathan','Hendricks','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16690718,'3','Billie','Christian','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16723459,'7','Devin','Solis','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16764496,'8','Sylvia','Mccoy','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16809546,'5','Irene','Yoder','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (16874219,'K','Christy','Huang','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17067642,'7','Herman','Shepard','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17186610,'4','Yesenia','Fowler','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17204426,'5','Aaron','Trujillo','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17233467,'7','Josh','Velasquez','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17237023,'3','Jody','Lang','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17248479,'4','Wanda','Hurst','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17264208,'K','Randy','Montgomery','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17393265,'9','Kristen','Hanna','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17467536,'3','Justin','Jordan','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17511566,'6','Trisha','Gross','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17567043,'0','Randall','Schultz','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17598097,'8','Christie','Dean','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17604208,'9','Iris','Herman','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17630361,'7','Felix','Murray','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17682804,'8','Tricia','Howell','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17721084,'8','Lea','Mc Bride','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17723898,'5','Enrique','Wallace','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17814206,'2','Bridget','Mc Gee','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17817690,'7','Felix','Hodges','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17862825,'8','Yvonne','Bowen','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17889317,'3','Alvin','Stafford','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17896457,'9','Bridgett','Mack','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17909864,'1','Penny','Roth','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17934688,'0','Rick','Gaines','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (17950830,'7','Roberto','Keller','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18014045,'K','Rhonda','Alvarado','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18156650,'6','Darlene','Larsen','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18184240,'0','Courtney','Cunningham','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18280709,'7','Mark','Tucker','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18336158,'9','Kendrick','Fletcher','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18352172,'6','Malcolm','Wells','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18390208,'3','Juan','Bowers','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18421225,'7','Martin','Fisher','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18505021,'0','Lynette','Mc Millan','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18550492,'7','Bryon','Cordova','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18659997,'1','Jimmie','Shepherd','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18699786,'7','Cassandra','Grant','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18804511,'9','Jacob','Burke','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18829466,'0','Olivia','Kline','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18835559,'4','Dora','Hardin','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18839556,'1','Karla','Beard','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (18934168,'8','Sylvia','Ruiz','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19100598,'0','Rick','Solomon','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19120175,'K','Helen','Robles','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19303268,'2','Gabrielle','Reeves','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19435555,'8','Wendi','Reyes','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19435837,'5','Kirsten','Moran','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19567994,'2','Rachel','Choi','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19607698,'K','Loretta','Landry','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19633374,'3','Nicolas','Daniels','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19639001,'0','Clarence','Ware','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19664729,'4','Derek','Bolton','93350895')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19743237,'9','Moses','Townsend','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19770211,'9','Autumn','Pugh','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19796164,'2','Bridget','Villegas','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19816444,'4','Oscar','Ballard','90147888')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19833967,'5','Kendra','Trevino','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19921273,'6','Tyler','White','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19952110,'7','Teresa','Meyers','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (19987871,'2','Victoria','Meyer','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20007856,'3','Natalie','Briggs','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20269498,'9','Bonnie','Hines','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20318058,'K','Audrey','Ortiz','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20377241,'9','Roger','Burke','92436124')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20451244,'6','Bret','Khan','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20451888,'6','Erica','Ward','97948160')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20528928,'1','Kelvin','Benitez','96874487')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20559425,'9','Jeannette','Bean','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20608226,'K','Ricardo','Dillon','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20624895,'4','Kisha','Lester','98484732')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20652299,'9','Bradford','Bolton','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20718476,'8','Stephanie','Sweeney','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20823138,'6','Noel','Morrow','97923132')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20823222,'0','Devon','Morris','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20899316,'4','Wanda','Randall','92024905')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (20930084,'4','Hilary','Joyce','93741395')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (21043583,'2','Shane','Thornton','98691599')
INSERT INTO [Empresas].[dbo].[Empleado] VALUES (21047530,'8','Regina','Bates','97948160')

