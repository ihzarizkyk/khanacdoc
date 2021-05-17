/*
Author : Mochammad Ihza Rizky Karim
*/

/* Karaoke song selector */
SELECT title FROM songs;
SELECT title FROM songs WHERE mood == 'epic' OR released > 1990;
SELECT title FROM songs WHERE mood == 'epic' AND released > 1990 AND duration < 240;

/* Make Playlist Challenge */
SELECT title FROM songs WHERE artist == "Queen"; --1   
SELECT name FROM artists WHERE genre == "Pop"; --2
SELECT title FROM songs WHERE artist IN ( SELECT name FROM artists WHERE genre = "Pop");

/* The Wordiest Author Challenge */
SELECT author,SUM(words) AS total_words FROM books GROUP BY author HAVING total_words > 1000000;
SELECT author,AVG(words) AS avg_words FROM books GROUP BY author HAVING avg_words > 150000;

/* GradeBook Challenge */
SELECT name, number_grade, ROUND(100 * fraction_completed) AS percent_completed FROM student_grades;
SELECT COUNT(*), 
    CASE
        WHEN number_grade > 90 THEN 'A'
        WHEN number_grade > 80 THEN 'B'
        WHEN number_grade > 70 THEN 'C'
        ELSE 'F'
    END as  'letter_grade' FROM student_grades 
    GROUP BY letter_grade;

/* Bobby's Hobbies Challenge */
SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON hobbies.person_id = persons.id;
SELECT persons.name, hobbies.name FROM persons JOIN hobbies ON hobbies.person_id = persons.id WHERE persons.name == "Bobby McBobbyFace";

/* Customer's order's Challenge */
SELECT customers.name, customers.email, orders.item, orders.price FROM customers LEFT OUTER JOIN orders ON customers.id = orders.customer_id;
SELECT  customers.name, customers.email, SUM(orders.price) as "total_price"
FROM customers
LEFT OUTER JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.name
ORDER BY orders.price DESC;

/* Sequels in SQL Challenge */
SELECT movies.title, sequel.title FROM movies LEFT OUTER JOIN movies sequel ON movies.sequel_id = sequel.id;

/* FriendBook Challenge */
SELECT persons.fullname, hobbies.name FROM persons JOIN hobbies ON persons.id = hobbies.person_id;     
SELECT a.fullname, b.fullname FROM friends
JOIN persons a
ON a.id = friends.person1_id
JOIN persons b
ON b.id = friends.person2_id;

/* Dynamic Documents Challenge */
UPDATE documents SET author="Jackie Daper" WHERE author="Jackie Paper";
SELECT * FROM documents;
DELETE FROM documents WHERE title="Things I'm Afraid Of";
SELECT * FROM documents;

/* Clothing alterations Challenge */
ALTER TABLE clothes ADD price INTEGER;
SELECT * FROM clothes;
UPDATE clothes SET price = 10 WHERE id=1;
UPDATE clothes SET price = 20 WHERE id=2;
UPDATE clothes SET price = 30 WHERE id=3;
SELECT * FROM clothes;
INSERT INTO clothes(type,design,price) VALUES("dress","bluesky",40);
SELECT * FROM clothes;

