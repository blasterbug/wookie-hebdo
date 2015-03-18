-- Trigger gérant l'insertion d'un photographe dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_photogr
	INSTEAD OF INSERT ON Photographes
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 5 ( = photographe)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 5);

END;
