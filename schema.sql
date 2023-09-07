CREATE DATABASE IF NOT EXISTS  `lamp`;

USE lamp;
CREATE TABLE `lamp`.`contacts` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `age` INT(3) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY  (`id`)
);

INSERT INTO `lamp`.`contacts` (`name`, `age`, `email`)
VALUES
    ('John Doe', 25, 'john@example.com'),
    ('Jane Smith', 30, 'jane@example.com'),
    ('Bob Johnson', 40, 'bob@example.com'),
    ('Alice Brown', 28, 'alice@example.com'),
    ('Charlie Davis', 22, 'charlie@example.com');