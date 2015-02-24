-- Trigger vérifiant l'intégrité de dateRedac dans Articles

CREATE OR REPLACE TRIGGER trg_check_ins_upd_articles
	BEFORE INSERT OR UPDATE ON Articles
	FOR EACH ROW
DECLARE
	dateMax Articles.dateRedac%type;

	date_above_max_exception EXCEPTION;
BEGIN

	-- Création de la date max
	dateMax := sysdate + 1;

	-- Levée d'une exception si date > dateMax
	IF (:new.dateRedac > dateMax) THEN
		RAISE date_above_max_exception;
	END IF;

EXCEPTION
	WHEN date_above_max_exception THEN
		RAISE_APPLICATION_ERROR(-20001, 'dateRedac > date de demain');

END; /