-- Vue permettant d'obtenir tous les illustrateurs

CREATE OR REPLACE VIEW Illustrateurs AS
	SELECT nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 6;