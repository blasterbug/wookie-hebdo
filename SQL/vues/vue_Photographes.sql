-- Vue permettant d'obtenir tous les photographes

CREATE OR REPLACE VIEW Photographes AS
	SELECT nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 5;