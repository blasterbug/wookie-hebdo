-- Trigger gérant l'insertion de dateParu dans Numeros

CREATE OR REPLACE TRIGGER trg_aft_ins_upd_dateParu
	AFTER INSERT OR UPDATE ON Numeros
	FOR EACH ROW
DECLARE
	sql_stmt VARCHAR2(400);
	dateParu Numeros.dateParu%type;
BEGIN

	-- Création de la date
	dateParu := sysdate;

	-- Mise à jour du tuple concerné
	sql_stmt := 'UPDATE Numeros
				SET dateParu = :dateParu
				WHERE idJournal = :id';
	EXECUTE IMMEDIATE sql_stmt USING dateParu, :old.idJournal;

END; /