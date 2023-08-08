CREATE TABLE Duck (
	ID SERIAL PRIMARY KEY,
	Name TEXT NOT NULL,
	Show TEXT NOT NULL,
	Studio TEXT NOT NULL,
	Notes TEXT NOT NULL
);

CREATE TABLE DuckAudits (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    notes TEXT NOT NULL,
    show TEXT NOT NULL,
    studio TEXT NOT NULL,
    changedOn TIMESTAMP(6) NOT NULL
);

CREATE OR REPLACE FUNCTION DuckCopy()
    RETURNS trigger AS
$$
BEGIN
    INSERT INTO duckaudits (name, notes, show, studio, changedOn)
    VALUES (old.name, old.notes, old.show, old.studio, now()::timestamp);
    return NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE TRIGGER DuckUpdateTrigger
    BEFORE UPDATE
    ON duck
    FOR EACH ROW
    EXECUTE PROCEDURE DuckCopy();