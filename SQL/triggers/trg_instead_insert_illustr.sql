-- Trigger gérant l'insertion d'un illustrateur dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_illustr
	INSTEAD OF INSERT ON Illustrateurs
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 6 ( = illustrateur)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 6);

END; /