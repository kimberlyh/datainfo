CREATE TABLE Boek {
	isbn varchar(255),
	titel varchar(255),
	auteur varchar(255),
	PRIMARY KEY (isbn)
}

CREATE TABLE Exemplaar {
	isbn varchar(255),
	volgnummer varchar(255),
	gewicht FLOAT,
	kast INTEGER,
	PRIMARY KEY (isbn, volgnummer),
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE
}

CREATE TRIGGER verwijdering 
	AFTER DELETE ON Boek
	FOR EACH ROW
	BEGIN
		DELETE FROM Exemplaar
			LEFT OUTER JOIN Boek ON Exemplaar.isbn = Boek.isbn
			WHERE Boek.isbn IS NULL;
	END;
