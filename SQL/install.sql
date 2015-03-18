-- Script installant le projet sur une base Oracle
spool logs_install_wookie_hebdo.lst
prompt Création de la base de données

-- Création des tables
prompt Création des tables
@create_table.sql

-- Création des procédures
prompt Création des procédures
@procedures/prd_insert_personne.sql
/
@procedures/prd_ajout_article.sql
/
@procedures/prd_ajout_contenu.sql
/

-- Création des vues
prompt Création des vues
@vues/vue_RedacsChef.sql
@vues/vue_Pigistes.sql
@vues/vue_SecrRedac.sql
@vues/vue_Photographes.sql
@vues/vue_Illustrateurs.sql
@vues/vue_Maquettistes.sql
@vues/vue_Experts.sql
@vues/vue_Redacteurs.sql
@vues/personnes_metiers.sql

-- Création des triggers
prompt Création des triggers
@triggers/trg_instead_insert_experts.sql
/
@triggers/trg_instead_insert_redacsChef.sql
/
@triggers/trg_instead_insert_redacs.sql
/
@triggers/trg_instead_insert_pigistes.sql
/
@triggers/trg_instead_insert_secrRedac.sql
/
@triggers/trg_instead_insert_photogr.sql
/
@triggers/trg_instead_insert_illustr.sql
/
@triggers/trg_instead_insert_maquet.sql
/

-- Insertion des données
prompt Insertion des données
@inserts/insert_metiers.sql
@inserts/insert_personnes.sql
@inserts/insert_typejournal.sql
@inserts/insert_seqcontenu.sql

prompt Création de la base de données terminée
spool off
