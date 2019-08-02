CREATE DATABASE masterdb;

USE masterdb;

CREATE TABLE master_tenant (
  id		INT PRIMARY KEY AUTO_INCREMENT,
  tenant_id	VARCHAR (30) NOT NULL,
  url		VARCHAR (256) NOT NULL,
  username	VARCHAR (30) NOT NULL,
  username	VARCHAR (30) NOT NULL,
  password	VARCHAR (30) NOT NULL,
  version	INT NOT NULL
);

INSERT INTO `masterdb`.`master_tenant` (`tenant_id`, `url`, `username`, `password`, `version`) VALUES ('tenant1', 'jdbc:mysql://localhost:3306/dbtenant1', 'root', 'root', '0');
INSERT INTO `masterdb`.`master_tenant` (`tenant_id`, `url`, `username`, `password`, `version`) VALUES ('tenant2', 'jdbc:mysql://localhost:3306/dbtenant2', 'root', 'root', '0');
