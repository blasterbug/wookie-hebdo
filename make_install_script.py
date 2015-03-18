# -*- coding: utf-8 -*-
# Script générant le fichier d'installation de la base : install.sql

import os

# chemins vers les différents dossiers
path_to_sql = "SQL/"
size_path_to_sql = len(path_to_sql)
path_to_inserts = path_to_sql + "inserts/"
path_to_procedures = path_to_sql + "procedures/"
path_to_triggers = path_to_sql + "triggers/"
path_to_vues = path_to_sql + "vues/"
path_to_file = path_to_sql + "install.sql"

# Fonction utilitaire
def return_files_import(directory):
	res = ""
	for dirname, dirnames, filenames in os.walk(directory):
		for filename in filenames:
			res += "@" + os.path.join(dirname[size_path_to_sql:], filename) + "\n"

	return res

with open(path_to_file, 'w') as file:

	# entête du fichier
	file.write("-- Script installant le projet sur une base Oracle\n")
	file.write("spool logs_install_wookie_hebdo.lst\n")
	file.write("prompt Création de la base de données\n")

	file.write("\n")

	# création des tables
	file.write("-- Création des tables\n")
	file.write("prompt Création des tables\n")
	file.write("@create_table.sql\n")

	file.write("\n")

	# création des procédures
	file.write("-- Création des procédures\n")
	file.write("prompt Création des procédures\n")
	file.write(return_files_import(path_to_procedures))

	file.write("\n")

	# création des vues
	file.write("-- Création des vues\n")
	file.write("prompt Création des vues\n")
	file.write(return_files_import(path_to_vues))

	file.write("\n")

	# création des triggers
	file.write("-- Création des triggers\n")
	file.write("prompt Création des triggers\n")
	file.write(return_files_import(path_to_triggers))

	file.write("\n")

	# insertion des données
	file.write("-- Insertion des données\n")
	file.write("prompt Insertion des données\n")
	file.write(return_files_import(path_to_inserts))

	file.write("\n")

	# fin du fichier
	file.write("prompt Création de la base de données terminée\n")
	file.write("spool off")
