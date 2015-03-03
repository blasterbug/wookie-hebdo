 CREATE OR REPLACE VIEW personnes_metiers AS
  SELECT idpers, nompers, prenom, metier FROM personnes, metiers 
  WHERE personnes.idmetier = metiers.idmetier;
