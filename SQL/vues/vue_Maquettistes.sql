-- Vue permettant d'obtenir tous les maquettistes

CREATE OR REPLACE VIEW Maquettistes AS
	SELECT nomPers, prenom, numTel
	FROM Personnes NATURAL JOIN Metiers
	WHERE idMetier = 7;