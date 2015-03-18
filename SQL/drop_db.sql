-- Script supprimant le projet de la base de données
spool logs_drop_wookie_hebdo.lst
prompt Suppression de la base de données

-- Suppression des tables & des triggers
DROP TABLE compoArticles;
DROP TABLE compoJournal;
DROP TABLE articles;
DROP TABLE contenus;
DROP TABLE numeros;
DROP TABLE typeJournal;
DROP TABLE personnes;
DROP TABLE metiers;

-- Suppression des vues
DROP VIEW personnes_metiers;
DROP VIEW Experts;
DROP VIEW Illustrateurs;
DROP VIEW Maquettistes;
DROP VIEW Photographes;
DROP VIEW Pigistes;
DROP VIEW RedacsChef;
DROP VIEW Redacteurs;
DROP VIEW SecrRedac;

-- Suppression des procédures
DROP PROCEDURE ajout_article;
DROP PROCEDURE ajout_contenu;
DROP PROCEDURE insert_personne;

-- Suppression des séquences
DROP SEQUENCE seqarticle;
DROP SEQUENCE seqcontenu;
DROP SEQUENCE seqtypejournal;

spool off