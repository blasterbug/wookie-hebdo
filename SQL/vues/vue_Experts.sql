-- Vue permettant d'obtenir tous les experts

CREATE OR REPLACE VIEW Experts AS
	SELECT nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 8;