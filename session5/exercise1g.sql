CREATE TABLE Bestelling {
	isbn varchar(255),
	aantal INTEGER
}

CREATE TRIGGER toevoeging
	AFTER INSERT ON Boek
	FOR EACH ROW
	BEGIN
		IF (SELECT COUNT(*) FROM Boek WHERE auteur = NEW.auteur) = 0 THEN
			INSERT INTO Bestelling(isbn, aantal) VALUES (NEW.isbn, 99);
		END IF;
	END;