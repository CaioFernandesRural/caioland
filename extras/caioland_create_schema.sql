DROP SCHEMA caioland;
CREATE SCHEMA caioland;
USE caioland;
CREATE USER IF NOT EXISTS 'user_caioland'@'localhost' IDENTIFIED BY '220199';
GRANT ALL PRIVILEGES ON caioland . * TO 'user_caioland'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE `EU`(
	`eu_id` int NOT NULL AUTO_INCREMENT,
	`email` varchar(255) NOT NULL,
	`senha` varchar(255) NOT NULL,
    `data_criacao` DATETIME NOT NULL,
	PRIMARY KEY (`eu_id`)
);
CREATE TABLE `Post`(
	`post_id` int NOT NULL AUTO_INCREMENT,
	`cat_id`int NOT NULL,
	`titulo` varchar(100) NOT NULL,
	`corpo` varchar(500) NOT NULL,
    `nota` float,
    `privado` bool,
    `ulrima_alteracao` DATETIME NOT NULL,
    `data_criacao` DATETIME NOT NULL,
	PRIMARY KEY (`post_id`)
);
CREATE TABLE `categoria`(
	`cat_id` int NOT NULL AUTO_INCREMENT,
	`nome`int NOT NULL,
	PRIMARY KEY (`cat_id`)
);

ALTER TABLE `Post` ADD CONSTRAINT `Post_fk0` FOREIGN KEY (`cat_id`) REFERENCES `Categoria`(`cat_id`);