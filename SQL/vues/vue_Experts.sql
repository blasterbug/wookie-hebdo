-- Vue permettant d'obtenir tous les experts

CREATE OR REPLACE VIEW Experts AS
	SELECT idPers, nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 8;