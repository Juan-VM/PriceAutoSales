CREATE DATABASE PriceAutoSales;

USE PriceAutoSales;

CREATE TABLE users (
	id int not null,
    user_name varchar(50),
    email varchar(50),
    pwd varchar(100),
    creation_date datetime,
    user_status char,
    PRIMARY KEY (id)
);

INSERT INTO users VALUES (1, "Braulio Sandi", "brav88@hotmail.com", "Admin$1234", CURDATE(), 1);
INSERT INTO users VALUES (2, "Jason Taylor", "jtaylor@gmail.com", "Admin$1234", CURDATE(), 1);

SELECT * FROM users WHERE email = "brav88@hotmail.com" AND pwd = "Admin$1234" AND user_status = 1;

CREATE TABLE cars (
	id int NOT NULL AUTO_INCREMENT,
    brand varchar(50),
    model varchar(50),
    man_year int,
    color varchar(50),
    cc_engine varchar(50),
    fuelType varchar(50),
    mileage int,
    photo varchar(500),
    PRIMARY KEY (id)
);

INSERT INTO cars (brand, model, man_year, color, cc_engine, fuelType, mileage, photo) VALUES ("Hyundai", "Tucson", 2022, "White", "1600 Turbo", "Gasoline", 80000, "Images/1.jpg");

INSERT INTO cars (brand, model, man_year, color, cc_engine, fuelType, mileage, photo) 
	VALUES("Mitsubishi", "Montero", 2024, "Black", "2500 Turbo", "Diesel", 32000, "Images/2.jpg");

SELECT * FROM cars;

DELETE FROM cars where id in (3,4,5,6,7);	

CREATE TABLE brands (
	brand varchar(50) NOT NULL,
    PRIMARY KEY (brand)
 );	
 
 CREATE TABLE models (
	brand varchar(50),
	model varchar(50)
 );	
 
 CREATE TABLE fuelTypes (
	fuel varchar(50) 
 );	
 
 INSERT INTO brands (brand) VALUES
('Toyota'),
('Ford'),
('Honda'),
('Chevrolet'),
('BMW'),
('Audi'),
('Mercedes-Benz'),
('Volkswagen'),
('Nissan'),
('Hyundai'),
('Kia'),
('Porsche'),
('Mazda'),
('Jeep'),
('Subaru');

SELECT * FROM brands;

INSERT INTO models (brand, model) VALUES
('Toyota', 'Corolla'),
('Toyota', 'Camry'),
('Toyota', 'Hilux'),

('Ford', 'Mustang'),
('Ford', 'F-150'),
('Ford', 'Explorer'),

('Honda', 'Civic'),
('Honda', 'Accord'),
('Honda', 'CR-V'),

('Chevrolet', 'Malibu'),
('Chevrolet', 'Silverado'),
('Chevrolet', 'Equinox'),

('BMW', 'X5'),
('BMW', '320i'),
('BMW', 'M3'),

('Audi', 'A3'),
('Audi', 'Q7'),
('Audi', 'A8'),

('Mercedes-Benz', 'C-Class'),
('Mercedes-Benz', 'E-Class'),
('Mercedes-Benz', 'GLC'),

('Volkswagen', 'Golf'),
('Volkswagen', 'Tiguan'),
('Volkswagen', 'Passat'),

('Nissan', 'Altima'),
('Nissan', 'Sentra'),
('Nissan', 'Rogue'),

('Hyundai', 'Elantra'),
('Hyundai', 'Santa Fe'),
('Hyundai', 'Tucson'),

('Kia', 'Optima'),
('Kia', 'Sorento'),
('Kia', 'Sportage'),

('Porsche', '911'),
('Porsche', 'Cayenne'),
('Porsche', 'Macan'),

('Mazda', 'CX-5'),
('Mazda', 'Mazda3'),
('Mazda', 'MX-5 Miata'),

('Jeep', 'Wrangler'),
('Jeep', 'Cherokee'),
('Jeep', 'Grand Cherokee'),

('Subaru', 'Outback'),
('Subaru', 'Forester'),
('Subaru', 'Impreza');

SELECT * FROM models;

INSERT INTO fuelTypes (fuel) VALUES
('Gasolina'),
('Diesel'),
('Eléctrico'),
('Híbrido'),
('GNC'),
('GLP');

DESCRIBE cars;
ALTER TABLE cars MODIFY id INT NOT NULL AUTO_INCREMENT;
SELECT * FROM cars;