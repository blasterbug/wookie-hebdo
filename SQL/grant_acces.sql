/**
 ** Requêtes pour donner accès au tables créés
**/
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON articles TO L3_3, L3_13;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON contenus TO L3_3, L3_13;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON metiers TO L3_3, L3_13;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON numeros TO L3_3, L3_13;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON personnes TO L3_3, L3_13;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON typejournal TO L3_3, L3_13;