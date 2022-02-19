use bw_db53;


DROP TABLE IF EXISTS Music; 
#create table Music 
create table Music(
albumID 	 INTEGER 	  not null, 
albumName 	 VARCHAR(50)  not null, 
artist 		 VARCHAR(100) not null,
dateReleased DATE		  not null, 
dateAdded 	 DATETIME	  not null, 
genre 		 VARCHAR(100) not null, 
primary key(albumID)
);

DESC Music; 

INSERT INTO Music VALUES(1, 'Sour', 'Olivia Rodrigo', '2021-05-21', '2022-02-19', 'Pop'); 
INSERT INTO Music VALUES(2, 'Call me if you get lost', 'Tyler the Creator', '2021-07-25', '2022-02-19', 'Rap'); 

SELECT *
FROM Music; 

#create table form 
DROP TABLE IF EXISTS Form; 
create table Form(
formID 		INTEGER		 not null, 
type 		VARCHAR(30)	 not null, 
primary key(formID)
);
DESC Form; 
INSERT INTO Form VALUES(1, 'Vinyl'); 
INSERT INTO Form VALUES(2, 'Cassette'); 

SELECT *
FROM Form; 

#create table vinyl 
DROP TABLE IF EXISTS Vinyl; 
create table Vinyl (
vinylID 	INTEGER 	not null, 
pressingNum	INTEGER 	not null, 
color 		VARCHAR(30) not null, 
batchNum	INTEGER, 
size 		INTEGER		not null, 
formID		INTEGER		not null, 
primary key(vinylID), 
FOREIGN KEY (formID) REFERENCES Form(formID)
);
DESC Vinyl; 
INSERT INTO Vinyl VALUES(1, 3, 'Purple', 4, 7, 1);
INSERT INTO Vinyl VALUES(2, 5, 'Black', 3, 7, 2);
SELECT *
FROM Vinyl;

#create table CD
DROP TABLE IF EXISTS CD; 
create table CD(
cdID		INTEGER		 not null, 
formID		INTEGER		 not null, 
edition 	VARCHAR(100) not null, 
primary key(cdID), 
FOREIGN KEY (formID) REFERENCES Form(formID)
); 
DESC CD; 
INSERT INTO CD VALUES(1, 1, 'Third Edition');
INSERT INTO CD VALUES(2, 2, 'Second Edition');
SELECT*
FROM CD; 

#create table cassette 
DROP TABLE IF EXISTS Cassette; 
create table Cassette(
cassetteID	INTEGER 	 not null, 
formID		INTEGER		not null, 
casEdition	VARCHAR(100) not null, 
primary key(cassetteID),
FOREIGN KEY (formID) REFERENCES Form(formID)
); 
DESC Cassette; 
INSERT INTO Cassette VALUES(1, 1, 'First Edition');
INSERT INTO Cassette VALUES(2, 2, 'Third Edition');
SELECT*
FROM Cassette; 

