-- Vue permettant d'obtenir tous les rédacteurs

CREATE OR REPLACE VIEW Redacteurs AS
	SELECT idPers, nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 2;