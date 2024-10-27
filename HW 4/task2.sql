DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45),
    species VARCHAR(45),
    gender VARCHAR(15) CHECK (gender IN ('M', 'F')), --> this is a constraint that it can be either M or F, nothing else
    birth DATE,
    death DATE
);
CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    PRIMARY KEY (petname, eventdate, eventtype),
    FOREIGN KEY (petname) REFERENCES petPet(petname)
);


INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

INSERT INTO petPet (petname, owner, species, gender, birth) --> not putting death since still alive
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');


INSERT INTO petPet (petname, species, gender, birth)
VALUES ('FluffyKitten1', 'cat', 'M', '2020-10-15'); --> male 1

INSERT INTO petPet (petname, species, gender, birth)
VALUES ('FluffyKitten2', 'cat', 'M', '2020-10-15'); --> male 2

INSERT INTO petPet (petname, species, gender, birth) --> the rest are females
VALUES ('FluffyKitten3', 'cat', 'F', '2020-10-15');

INSERT INTO petPet (petname, species, gender, birth) --> no owner since not specified
VALUES ('FluffyKitten4', 'cat', 'F', '2020-10-15');

INSERT INTO petPet (petname, species, gender, birth)
VALUES ('FluffyKitten5', 'cat', 'F', '2020-10-15');

INSERT INTO petEvent (petname, eventdate, eventtype, remark) --> exercise 4
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib');


UPDATE petPet SET death = '2020-09-01' WHERE petname = 'Puffball'; --> exercise 5

DELETE FROM petPet WHERE owner = 'Harold' AND species = 'dog'; --> exercise 6


