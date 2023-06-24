CREATE USER 'alwani';
CREATE USER 'achmad'@'%';

DROP USER 'alwani';
DROP USER 'achmad'@'%';

GRANT SELECT ON mysql_learn.* TO 'alwani';

GRANT SELECT ON mysql_learn.* TO 'achmad'@'%';
GRANT INSERT, UPDATE, DELETE ON mysql_learn.* TO 'achmad'@'%';

SHOW GRANTS FOR 'alwani';
SHOW GRANTS FOR 'achmad'@'%';

SET PASSWORD FOR 'alwani' = PASSWORD('rahasia');
SET PASSWORD FOR 'achmad'@'%' = PASSWORD('rahasia');

INSERT INTO guestbooks(email, title, content)
VALUES ('contoh@gmail.com', 'Hello', 'Hello');

CREATE TABLE contoh
(
    id INT NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

select password('test345');