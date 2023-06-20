ALTER TABLE products
    ADD FULLTEXT product_fulltext (name, description);

ALTER TABLE products
    DROP INDEX product_fulltext;

SELECT
	*
FROM
	products 
WHERE MATCH(NAME,DESCRIPTION) 
	AGAINST('Ayam' IN NATURAL LANGUAGE MODE );

S
SELECT
	*
FROM
	products 
WHERE MATCH(NAME,DESCRIPTION) 
	AGAINST('+Ayam -Goreng' IN BOOLEAN MODE );