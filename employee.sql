CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

CREATE TABLE IF NOT EXISTS employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  phone VARCHAR(30),
  department VARCHAR(80),
  salary DECIMAL(12,2) DEFAULT 0,
  address VARCHAR(255),
  photo VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO employees (name,email,phone,department,salary,address,photo) VALUES
('Saiful Islam','saiful@example.com','01700000000','IT',35000,'Dhaka',''),
('Mosabbirul Islam','mosabbir@example.com','01800000000','HR',30000,'Dhaka','');