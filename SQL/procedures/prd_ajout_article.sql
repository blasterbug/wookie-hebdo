create or replace
PROCEDURE AJOUT_ARTICLE
(
  ltitre IN articles.titrearticle%type,
  lresume IN articles.resumearticle%type
) IS 
BEGIN
  insert into articles values (seqarticle.nextval, SYSDATE, ltitre, lresume);
END AJOUT_ARTICLE;
