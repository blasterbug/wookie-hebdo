-- Vue permettant d'obtenir tous les rédacteurs en chef

CREATE OR REPLACE VIEW RedacsChef AS
	SELECT idPers, nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 1;