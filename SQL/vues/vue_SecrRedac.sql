-- Vue permettant d'obtenir tous les secrétaires de rédaction

CREATE OR REPLACE VIEW SecrRedac AS
	SELECT nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 4;