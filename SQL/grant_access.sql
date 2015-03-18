/**
 ** Requêtes pour donner accès au tables créés, et d'autres droits avec
 ** des rôles
 **/

CREATE ROLE resp;
CREATE ROLE reader;

GRANT ALL ON articles TO resp;
GRANT ALL ON contenus TO resp;
GRANT ALL ON metiers TO resp;
GRANT ALL ON numeros TO resp;
GRANT ALL ON personnes TO resp;
GRANT ALL ON typejournal TO resp;
GRANT ALL ON compoArticles TO resp;

GRANT SELECT ON articles TO reader;
GRANT SELECT ON contenus TO reader;
GRANT SELECT ON metiers TO reader;
GRANT SELECT ON numeros TO reader;
GRANT SELECT ON personnes TO reader;
GRANT SELECT ON typejournal TO reader;
GRANT SELECT ON compoArticles TO reader;

GRANT resp TO L3_3, L3_13;
GRANT reader TO L3_4;
