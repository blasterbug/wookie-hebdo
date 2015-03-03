-- Trigger gérant l'insertion d'un rédacteur dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_redacs
	INSTEAD OF INSERT ON Redacteurs
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 2 ( = redac)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 2);

END; /