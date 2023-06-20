ALTER TABLE products
    ADD FULLTEXT product_fulltext (name, description);

ALTER TABLE products
    DROP INDEX product_fulltext;

SELECT
	*
FROM
	PRODUCTS 
WHERE MATCH(NAME,DESCRIPTION) 
	AGAINST('Ayam' IN NATURAL LANGUAGE MODE );