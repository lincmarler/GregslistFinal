CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

CREATE TABLE
    houses(
        id INT AUTO_INCREMENT PRIMARY KEY,
        model ENUM(
            'victorian',
            'farm',
            'modern',
            'shack'
        ) NOT NULL COMMENT "These are house models",
        imgUrl VARCHAR(500) DEFAULT 'https: / / images.unsplash.com / photo -1570129477492 -45 c003edd2be ? ixlib = rb -4.0.3 & ixid = M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA % 3 D % 3 D & auto = format & fit = crop & w = 2070 & q = 80',
        price INT NNOT NULL,
        year INT NOT NULL,
        description VARCHAR(1000),
    ) default charset utf8mb4 COMMENT 'supports emojis',

INSERT INTO
    houses (model, year, price)
VALUES ('victorian', 1995, 50000);

INSERT INTO
    houses (model, year, price)
VALUES ('farm', 1990, 5000);

INSERT INTO
    houses (model, year, price)
VALUES ('modern', 2005, 40000);

INSERT INTO
    houses (model, year, price)
VALUES ('shack', 1950, 500);

SELECT * FROM houses;

SELECT * FROM houses WHERE id = LAST_INSERT_ID();

SELECT LAST_INSERT_ID 