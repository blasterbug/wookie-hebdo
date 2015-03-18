create or replace
PROCEDURE AJOUT_CONTENU
(
  larticle IN articles.idarticle%type,
  lnompers IN personnes.nompers%type,
  lprenomperso IN personnes.prenom%type,
  ltitre IN contenus.titrecont%type,
  lurl IN contenus.url%type,
  ltype IN contenus.typecontenu%type
) IS 
lidpers personnes.idpers%type;
BEGIN
  select idpers into lidpers from personnes where nompers=lnompers and prenom=lprenomperso;
  insert into personnes values (seqcontenu.nextval, lurl, ltitre, ltype, lidpers);
  insert into compoarticles values (larticle, seqcontenu.currval);
END AJOUT_CONTENU; /
