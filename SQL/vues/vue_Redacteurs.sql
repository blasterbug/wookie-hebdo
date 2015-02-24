-- Vue permettant d'obtenir tous les rédacteurs

CREATE OR REPLACE VIEW Redacteurs AS
	SELECT nomPers, prenom, numTel
	FROM Personnes NATURAL JOIN Metiers
	WHERE idMetier = 2;