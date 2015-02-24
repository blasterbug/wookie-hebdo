-- Trigger gérant l'insertion d'un expert dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_experts
	INSTEAD OF INSERT ON Experts
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 8 ( = expert)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 8);

END; /