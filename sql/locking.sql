/* User 1 */
START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah Oleh User 1'
WHERE id = 6;

COMMIT ;


/* User 2 */
START TRANSACTION ;

SELECT * FROM guestbooks;

UPDATE guestbooks
SET title = 'Diubah Oleh User 2'
WHERE id = 6;

COMMIT ;


/* ----------------------------------------------------------- */

/* User 1 */
START TRANSACTION ;

SELECT * FROm products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;

/* User 2 */
START TRANSACTION ;

SELECT * FROm products;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT ;


#  DEADLOCK user 1

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;


#  DEADLOCK user 2

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;
