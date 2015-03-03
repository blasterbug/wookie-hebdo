-- Vue permettant d'obtenir tous les maquettistes

CREATE OR REPLACE VIEW Maquettistes AS
	SELECT idPers, nomPers, prenom, numTel
	FROM Personnes
	WHERE idMetier = 7;