-- ------------------------
-- ------ tenant1 ---------
-- ------------------------

CREATE DATABASE dbtenant1;

USE dbtenant1;

CREATE TABLE `product` (
 `id` INT PRIMARY KEY AUTO_INCREMENT,
 `name` VARCHAR (255) NOT NULL,
 `price` DOUBLE NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `user` (
 `user_id` INT PRIMARY KEY AUTO_INCREMENT,
 `password` VARCHAR(255) NOT NULL,
 `username` VARCHAR(255) NOT NULL,
 `active` BIT(1) NULL DEFAULT NULL,
 `tenant` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;

CREATE TABLE `role` (
 `role_id` INT PRIMARY KEY AUTO_INCREMENT,
 `role` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;

CREATE TABLE `user_role` (
 `user_id` INT(11) NOT NULL,
 `role_id` INT(11) NOT NULL,
 PRIMARY KEY (`user_id`, `role_id`),
 INDEX `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM;

ALTER TABLE user_role ADD CONSTRAINT FK_role_id FOREIGN KEY (role_id) REFERENCES role (role_id);
ALTER TABLE user_role ADD CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES user (user_id);


INSERT INTO `product` (`name`, `price`) VALUES ('Nintendo Switch', '299.99');
INSERT INTO `product` (`name`, `price`) VALUES ('PlayStation 4', '349.99');
INSERT INTO `product` (`name`, `price`) VALUES ('Xbox One S', '299.99');

INSERT INTO `role` (`role`) VALUES ('ADMIN');
INSERT INTO `role` (`role`) VALUES ('NORMAL_USER');

INSERT INTO `user` (`password`, `username`, `active`, `tenant`) VALUES ('$2a$10$lDVomQ8bv/Unmo6oHb3wGOM2OvqbbHISdGGHRzB2ayt1PfQj3wQp.', 'admin', true, 'tenant1');
INSERT INTO `user` (`password`, `username`, `active`, `tenant`) VALUES ('$2a$10$/ZopWrZWh9U/MCX0Bybpxua.rrvJlL1D0qAFo2jycsQeSkC/H7Oxm', 'renan', true, 'tenant1');

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('2', '2');

-- ------------------------
-- ------ tenant2 ---------
-- ------------------------

CREATE DATABASE dbtenant2;

USE dbtenant2;

CREATE TABLE `product` (
 `id` INT PRIMARY KEY AUTO_INCREMENT,
 `name` VARCHAR (255) NOT NULL,
 `price` DOUBLE NOT NULL
) ENGINE=MyISAM;

CREATE TABLE `user` (
 `user_id` INT PRIMARY KEY AUTO_INCREMENT,
 `password` VARCHAR(255) NOT NULL,
 `username` VARCHAR(255) NOT NULL,
 `active` BIT(1) NULL DEFAULT NULL,
 `tenant` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;

CREATE TABLE `role` (
 `role_id` INT PRIMARY KEY AUTO_INCREMENT,
 `role` VARCHAR(255) NULL DEFAULT NULL
) ENGINE=MyISAM;

CREATE TABLE `user_role` (
 `user_id` INT(11) NOT NULL,
 `role_id` INT(11) NOT NULL,
 PRIMARY KEY (`user_id`, `role_id`),
 INDEX `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM;

ALTER TABLE user_role ADD CONSTRAINT FK_role_id FOREIGN KEY (role_id) REFERENCES role (role_id);
ALTER TABLE user_role ADD CONSTRAINT FK_user_id FOREIGN KEY (user_id) REFERENCES user (user_id);


INSERT INTO `product` (`name`, `price`) VALUES ('Spider-man', '39.99');
INSERT INTO `product` (`name`, `price`) VALUES ('Zelda Breath of the Wild', '59.99');

INSERT INTO `role` (`role`) VALUES ('ADMIN');
INSERT INTO `role` (`role`) VALUES ('NORMAL_USER');

INSERT INTO `user` (`password`, `username`, `active`, `tenant`) VALUES ('$2a$10$lDVomQ8bv/Unmo6oHb3wGOM2OvqbbHISdGGHRzB2ayt1PfQj3wQp.', 'admin', true, 'tenant2');
INSERT INTO `user` (`password`, `username`, `active`, `tenant`) VALUES ('$2a$10$/ZopWrZWh9U/MCX0Bybpxua.rrvJlL1D0qAFo2jycsQeSkC/H7Oxm', 'renan', true, 'tenant2');

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('2', '2');
