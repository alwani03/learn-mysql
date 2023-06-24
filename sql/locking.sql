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

SELECT * FROM products WHERE id = 'P001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P001';

COMMIT ;

/* User 2 */
START TRANSACTION ;

SELECT * FROm products;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P001';

COMMIT ;


#  DEADLOCK user 1

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;


#  DEADLOCK user 2

START TRANSACTION ;

SELECT * FROM products WHERE id = 'P002' FOR UPDATE ;

SELECT * FROM products WHERE id = 'P001' FOR UPDATE ;

/* Lock Table Read user 1 masih bisa*/
LOCK TABLE products READ;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P001';

UNLOCK TABLE;


/* Lock Table Write  hanya bisa write user 1 dan user 2 tidak bisa ngapa" in*/

LOCK TABLE products WRITE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P001';

UNLOCK TABLE;


# LOCK INSTANCE

LOCK INSTANCE FOR BACKUP;

UNLOCK INSTANCE;

# LOCK INSTANCE

ALTER TABLE products
ADD column sample VARCHAR(100);



