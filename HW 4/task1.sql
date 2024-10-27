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
