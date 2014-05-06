INSERT INTO F (x, y, violation, motivation)
VALUES 	('ABC', 'EF', false, 'je kunt alle waardes uit deze statement afleiden'),
		('E', 'D', true, 'je kunt alleen A, D en E afleiden uit deze statement'),
		('D', 'A', true, 'je kunt alleen A en D afleiden uit deze statement');
		
INSERT INTO F1 (x, y, violation, motivation)
VALUES 	('E', 'D', false, 'de eerste decompositie van R met betrekking op E > D');
		
INSERT INTO F2 (x, y, violation, motivation)
VALUES 	('ABC', 'EF', true, 'D kun je niet meer berekenen'),
		('E', 'A', true, 'Wordt E> A, want D zit niet in deze R. B, C, D en F kun je niet meer berekenen');
		
INSERT INTO F2A (x, y, violation, motivation)
VALUES ('ABC', 'EF', false, 'de eerste decompositie van R2 met betrekking op ABC > EF');

INSERT INTO F2B (x, y, violation, motivation)
VALUES ('E', 'A', false, 'de decompositie van R2 met betrekking op E > A'); 