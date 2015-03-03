-- Script installant le projet sur une base Oracle

spool logs_install_wookie_hebdo.lst

-- Création des tables
@create_table.sql

-- Création des procédures
@procedures/prd_insert_personne.sql

-- Création des vues
@vues/personnes_metiers.sql
@vues/vue_Experts.sql
@vues/vue_Illustrateurs.sql
@vues/vue_Maquettistes.sql
@vues/vue_Photographes.sql
@vues/vue_Pigistes.sql
@vues/vue_RedacsChef.sql
@vues/vue_Redacteurs.sql
@vues/vue_SecrRedac.sql

-- Création des triggers
@triggers/trg_check_insert_update_dateRedac.sql
@triggers/trg_insert_update_dateParu.sql
@triggers/trg_instead_insert_experts.sql
@triggers/trg_instead_insert_illustr.sql
@triggers/trg_instead_insert_maquet.sql
@triggers/trg_instead_insert_photogr.sql
@triggers/trg_instead_insert_pigistes.sql
@triggers/trg_instead_insert_redacsChef.sql
@triggers/trg_instead_insert_redacs.sql
@triggers/trg_instead_insert_secrRedac.sql

-- Insertion des données
@inserts/insert_metiers.sql
@inserts/insert_personnes.sql
@inserts/insert_seqcontenu.sql
@inserts/insert_typejournal.sql

spool off