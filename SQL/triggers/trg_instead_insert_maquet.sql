-- Trigger gérant l'insertion d'un maquettiste dans Personnes

CREATE OR REPLACE TRIGGER trg_instead_ins_maquet
	INSTEAD OF INSERT ON Maquettistes
	FOR EACH ROW
BEGIN

	-- Insertion de la personne avec l'id metier 7 ( = maquettiste)
	insert_personne(:new.idPers, :new.nomPers, :new.prenom, :new.numTel, 7);

END; /