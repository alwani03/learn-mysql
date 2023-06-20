/* Cara sendiri  */
CREATE TABLE Jenis_pembayaran
(
    id INT NOT NULL AUTO_INCREMENT,
    name_wallet  VARCHAR(100) NOT NULL,
    descriptions  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY name_wallet_unique (name_wallet)
) ENGINE = InnoDB;

ALTER TABLE Jenis_pembayaran ADD CONSTRAINT name_wallet UNIQUE (name_wallet);


CREATE TABLE akuns
(
    id    INT          NOT NULL AUTO_INCREMENT,
    name_akuns  VARCHAR(100) NOT NULL,
    id_pembayaran int NOT NULL,
    descriptions  VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY name_akun_unique (name_akuns),
    CONSTRAINT fk_name_akun
    FOREIGN KEY (id_pembayaran) REFERENCES Jenis_pembayaran (id)
) ENGINE = InnoDB;

/* / */


CREATE TABLE wallet
(
    id          INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance     INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY id_customer_unique (id_customer),
    FOREIGN KEY fk_wallet_customer (id_customer) REFERENCES customers (id)
) ENGINE = InnoDB;

DESCRIBE wallet;

SELECT *
FROM customers;

INSERT INTO wallet(id_customer)
VALUES (1),
       (3);

SELECT *
FROM wallet;


