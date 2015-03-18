-- Trigger gérant l'insertion d'un pigiste dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_pigistes
	INSTEAD OF INSERT ON Pigistes
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 3 ( = pigiste)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 3);

END;
