-- Vue permettant d'obtenir tous les pigistes

CREATE OR REPLACE VIEW Pigistes AS
	SELECT nomPers, prenom, numTel
	FROM Personnes NATURAL JOIN Metiers
	WHERE idMetier = 3;