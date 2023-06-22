START TRANSACTION;

INSERT INTO guestbooks (email, title, content)
VALUES ('contoh@gmail.com', 'Contoh', 'Contoh'),
       ('contoh2@gmail.com', 'Contoh', 'Contoh'),
       ('contoh3@gmail.com', 'Contoh', 'Contoh');

SELECT *
FROM guestbooks;

COMMIT;

START TRANSACTION;

DELETE
FROM guestbooks;

SELECT *
FROM guestbooks;

ROLLBACK;


/* User 1 */

START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah Oleh User 1'
WHERE id = 9;

COMMIT;

START TRANSACTION ;

SELECT * FROm products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;

/* User 2*/

START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah Oleh User 2'
WHERE id = 9;

COMMIT ;

START TRANSACTION ;

SELECT * FROm products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;