/* Inner Join */
SELECT *
FROM categories
         INNER JOIN products ON (products.id_category = categories.id);

SELECT *
FROM categories
         JOIN products ON (products.id_category = categories.id);

/* Left Join */
SELECT *
FROM categories
         LEFT JOIN products ON (products.id_category = categories.id);

/* Right Join */
SELECT *
FROM categories
         RIGHT JOIN products ON (products.id_category = categories.id);

/*Cross Join*/
SELECT *
FROM categories
         CROSS JOIN products;

CREATE TABLE numbers
(
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

SELECT * FROM numbers N
CROSS JOIN numbers N2 
ORDER BY N.ID, N2.ID 


SELECT numbers1.id, numbers2.id, ' X ' as kali, (numbers1.id * numbers2.id) as hasil_perkalian
FROM numbers as numbers1
         CROSS JOIN numbers as numbers2
ORDER BY numbers1.id, numbers2.id;
