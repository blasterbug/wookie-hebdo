
CREATE TABLE metiers
(
  idMetier NUMBER(4,0) NOT NULL PRIMARY KEY,
  metier VARCHAR2(32) NOT NULL,
  salaire NUMBER(6,2) NOT NULL
);

CREATE TABLE typeJournal
(
  idType NUMBER(4,0) NOT NULL PRIMARY KEY,
  nomType VARCHAR2(32) NOT NULL
);

CREATE TABLE personnes
(
  idPers VARCHAR2(8) NOT NULL PRIMARY KEY,
  nomPers VARCHAR2(80) NOT NULL,
  prenom VARCHAR2(80) NOT NULL,
  numTel NUMBER(12,0) NOT NULL,
  idMetier NUMBER(4) NOT NULL,
  CONSTRAINT CSTR_ID_METIER_PERSONNE
  FOREIGN KEY ( idMetier ) REFERENCES metiers(idMetier)
);

CREATE TABLE articles
(
  idArticle NUMBER(8,0) NOT NULL PRIMARY KEY,
  dateRedac DATE NOT NULL,
  titreArticle VARCHAR2(100) NOT NULL,
  resumeArticle VARCHAR2(2000)
);

CREATE TABLE contenus
(
  idContenu NUMBER(10,0) NOT NULL PRIMARY KEY,
  /* Taille max des URLs sur internet */
  URL VARCHAR2(2083) NOT NULL,
  titreCont VARCHAR2(100) NOT NULL,
  typeContenu VARCHAR2(50) NOT NULL,
  auteur VARCHAR2(8) NOT NULL,
  dateContenu date,
  CONSTRAINT CSTR_AUTEUR_IDPERS
    FOREIGN KEY (auteur) REFERENCES Personnes(idPers)
);

CREATE TABLE Numeros
(
  idJournal NUMBER(8,0) NOT NULL PRIMARY KEY,
  idUne NUMBER(8,0) NOT NULL,
  nbTirage NUMBER(10,0),
  prix NUMBER(6,2),
  redacChef VARCHAR2(8) NOT NULL,
  idType NUMBER(4,0) NOT NULL,
  dateParu DATE,
  CONSTRAINTS CSTR_REDAC_TYPE
    FOREIGN KEY (redacChef) REFERENCES personnes(idPers),
    FOREIGN KEY (idType) REFERENCES typeJournal(idType)
);

