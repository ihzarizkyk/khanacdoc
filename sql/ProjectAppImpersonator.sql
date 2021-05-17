/* What does the app's SQL look like? */
/* Mochammad Ihza Rizky Karim */

CREATE TABLE book_store(id INTEGER PRIMARY KEY AUTOINCREMENT,item TEXT, quantity INTEGER, price INTEGER);

INSERT INTO book_store(item,quantity,price) VALUES("Lean Startup",10,125000);
INSERT INTO book_store(item,quantity,price) VALUES("Hooked",5,125000);
INSERT INTO book_store(item,quantity,price) VALUES("Marketing",1,105000);

SELECT * FROM book_store;

UPDATE book_store SET quantity=21 WHERE id=1;
UPDATE book_store SET price=120000 WHERE id=2;
UPDATE book_store SET item="Market Hack" WHERE id=3;
SELECT * FROM book_store;

ALTER TABLE book_store ADD country TEXT default "USA";
SELECT * FROM book_store;

DELETE FROM book_store WHERE quantity=5;
SELECT * FROM book_store;