CREATE TABLE Membre_BDE(
   id_membre INT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   email VARCHAR(50),
   role VARCHAR(50),
   date_adhesion VARCHAR(50),
   PRIMARY KEY(id_membre)
);

CREATE TABLE Événement(
   id_evenement INT,
   nom VARCHAR(50),
   description VARCHAR(50),
   date_heure VARCHAR(50),
   lieu VARCHAR(50),
   budget VARCHAR(50),
   PRIMARY KEY(id_evenement)
);

CREATE TABLE Participant_(
   id_participant INT,
   nom VARCHAR(50),
   prenom VARCHAR(50),
   email VARCHAR(50),
   statut VARCHAR(50),
   PRIMARY KEY(id_participant)
);

CREATE TABLE Sponsor(
   id_sponsor VARCHAR(50),
   nom_entreprise VARCHAR(50),
   email_contact VARCHAR(50),
   contact_principal VARCHAR(50),
   telephone_contact VARCHAR(50),
   PRIMARY KEY(id_sponsor)
);

CREATE TABLE ORGANISE(
   id_membre INT,
   id_evenement INT,
   PRIMARY KEY(id_membre, id_evenement),
   FOREIGN KEY(id_membre) REFERENCES Membre_BDE(id_membre),
   FOREIGN KEY(id_evenement) REFERENCES Événement(id_evenement)
);

CREATE TABLE PARTICIPE(
   id_evenement INT,
   id_participant INT,
   PRIMARY KEY(id_evenement, id_participant),
   FOREIGN KEY(id_evenement) REFERENCES Événement(id_evenement),
   FOREIGN KEY(id_participant) REFERENCES Participant_(id_participant)
);

CREATE TABLE FINANCE(
   id_evenement INT,
   id_sponsor VARCHAR(50),
   PRIMARY KEY(id_evenement, id_sponsor),
   FOREIGN KEY(id_evenement) REFERENCES Événement(id_evenement),
   FOREIGN KEY(id_sponsor) REFERENCES Sponsor(id_sponsor)
);
select table 