-- Trigger gérant l'insertion d'un secrétaire de rédaction dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_secrRedac
	INSTEAD OF INSERT ON SecrRedac
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 4 ( = secrétaire)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 4);

END; /