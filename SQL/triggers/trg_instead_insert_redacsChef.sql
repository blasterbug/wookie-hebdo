-- Trigger gérant l'insertion d'un redac chef dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_redacsChef
	INSTEAD OF INSERT ON RedacsChef
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 1 ( = redac chef)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 1);

END; /