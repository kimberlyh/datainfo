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
	FOREIGN KEY (isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE
}