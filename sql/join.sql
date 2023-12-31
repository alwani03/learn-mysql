SELECT *
FROM wishlist
         JOIN products ON (wishlist.id_product = products.id);

SELECT w.id          as id_wistlist,
       p.id          AS id_product,
       p.name        as product_name,
       w.description AS wishlist_description
FROM wishlist AS w
         JOIN products AS p ON (w.id_product = p.id);

DESC wishlist;

ALTER TABLE wishlist
ADD COLUMN id_customer INT;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY (id_customer) REFERENCES customers(id);

SELECT * FROM customers;

UPDATE wishlist
SET id_customer = 1
WHERE id = 1;

SELECT * FROM wishlist;

SELECT customers.email, products.id, products.name, wishlist.description
FROM wishlist
JOIN products ON (products.id = wishlist.id_product)
JOIN customers ON (customers.id = wishlist.id_customer);