DROP DATABASE IF EXISTS tools_db;
CREATE DATABASE tools_db;

USE tools_db;

CREATE TABLE tools (
  item_id INT AUTO_INCREMENT NOT NULL,
  tool_name VARCHAR(45) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  deposit_amount DECIMAL(10,2) NOT NULL,
  price_perhour DECIMAL(10,2) NOT NULL,
  price_perday DECIMAL(10,2) NOT NULL,
  tool_availability VARCHAR(45) NOT NULL,
  primary key(item_id)
);
SELECT * FROM tools;


-- use uniquie id index for thinks we would like to hide
-- UNIQUE INDEX 'id_UNIQUE' ('id' ASC) VISIBLE 