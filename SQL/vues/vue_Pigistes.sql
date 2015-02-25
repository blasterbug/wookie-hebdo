-- Vue permettant d'obtenir tous les pigistes

CREATE OR REPLACE VIEW Pigistes AS
	SELECT nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 3;