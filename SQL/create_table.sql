CREATE TABLE METIERS
(
  IDMETIER NUMBER(4,0) NOT NULL PRIMARY KEY;
  METIER VARCHAR(32) NOT NULL;
  SALAIRE NUMBER(8,2) NOT NULL;
);

CREATE TABLE TYPESJOURNAL
(
  IDTYPE NUMBER(4,0) NOT NULL PRIMARY KEY;
  NOMTYPE VARCHAR(32) NOT NULL;
);

CREATE TABLE PERSONNES
(
  IDPERS VARCHAR(8) NOT NULL PRIMARY KEY;
  NOMPERS VARCHAR(80) NOT NULL;
  PRENOM VARCHAR(80) NOT NULL;
  NUMTEL NUMBER(12,0) NOT NULL;
  IDMETIER NUMBER(4) NOT NULL;
  CONSTRAINT IDMETIER_PERS
  FOREIGN KEY (IDMETIER) REFERENCES METIERS;
);

CREATE TABLE ARTICLES
(
  IDARTICLES NUMBER(8,0) NOT NULL PRIMARY KEY;
  DATEREDAC DATE NOT NULL;
  TITREARTICLE VARCHAR(100) NOT NULL;
  RESUMEARICLE VARCHAR(2000);
);

CREATE TABLE CONTENUS
(
  IDCONTENU NUMBER(10,0) NOT NULL PRIMARY KEY;
  /* Taille max des URLs sur internet */
  URL VARCHAR(2083) NOT NULL;
  TITRECONT VARCHAR(100) NOT NULL;
  TYPECONTENU VARCHAR(50) NOT NULL;
  AUTHEUR VARCHAR(8) NOT NULL;
  CONSTRAINT AUTHEUR_CONTENUS
  FOREIGN KEY (AUTHEUR) REFRENCES PERSONNES.IDPERS;
);

CREATE TABLE NUMEROS
(
  IDJOURNAL NUMBER(8,0) NOT NULL PRIMARY KEY;
  IDUNE NUMBER(8,0) NOT NULL;
  NBTIRAGE NUMBER(10,0);
  PRIX NUMBER(6,2);
  REDACCHEF VARCHAR(8) NOT NULL;
  IDTYPE NUMBER(4,0) NOT NULL;
  DATEPARU DATE;
  CONSTRAINTS FK_NUMEROS
  FOREIGN KEY (REDACHEF) REFERENCES PERSONNES.IDPERS,
  FOREIGN KEY
  
