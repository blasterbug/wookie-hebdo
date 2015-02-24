-- Procédure permettant d'insérer une personne dans Personnes

CREATE OR REPLACE PROCEDURE insert_personne
	( 	id_pers IN Personnes.idPers%type,
		nom_pers IN Personnes.nomPers%type,
		prenom IN Personnes.prenom%type,
		num_tel IN Personnes.numTel%type,
		id_metier IN Personnes.idMetier%type		
	) IS

	sql_stmt VARCHAR2(400);
	cpt int;
	id_metier_inexistant_exception EXCEPTION;
BEGIN

	-- Vérification que l'id metier existe
	SELECT COUNT(*) into cpt
	FROM Metiers
	WHERE idMetier = id_metier;

	IF (cpt = 0) THEN
		RAISE id_metier_inexistant_exception;
	END IF;

	-- Insertion de la personne dans Personnes
	sql_stmt := 'INSERT INTO Personnes
				VALUES (:id_pers , :nom_pers , :prenom , :num_tel , :id_metier)';
	EXECUTE IMMEDIATE sql_stmt USING id_pers, nom_pers, num_tel, id_metier;

EXCEPTION
	WHEN id_metier_inexistant_exception THEN
		RAISE_APPLICATION_ERROR(-20002, 'id_metier inexistant');

END insert_personne; /
