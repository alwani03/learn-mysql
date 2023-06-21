SELECT *
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT MAX(price)
FROM products;

SELECT *
FROM products;


SELECT MAX(cp.price)
FROM (SELECT products.price
      FROM categories
               JOIN products ON (products.id_category = categories.id)) as cp;

UPDATE products
SET price=1000000
WHERE id = 'X0003';