CREATE TABLE salesperson(
	name VARCHAR(100) NOT NULL, 
	commission INTEGER NOT NULL, 
	num_sales INTEGER,
	PRIMARY KEY (name),
);

CREATE TABLE invoice(
	purchasor VARCHAR(100), 
	total INTEGER NOT NULL, 
	MSRP INTEGER NOT NULL, 
	breakdown VARCHAR(100), 
	PRIMARY KEY (purchasor)
);

CREATE TABLE CAR(
	serial_num VARCHAR(100),
	model VARCHAR(40),
	year INTEGER, 
	price INTEGER,
	PRIMARY KEY (serial_num),
	UNIQUE (serial_num)
);

ALTER TABLE CAR
ADD prev_service VARCHAR(100);

CREATE TABLE customer(
	name VARCHAR(100),
	DOB VARCHAR(100), 
	email VARCHAR(100), 
	service BOOLEAN,
	PRIMARY KEY (name)
);

CREATE TABLE service(
	location VARCHAR(100), 
	phone VARCHAR(100), 
	type_of_service VARCHAR(100), 
	prev_service VARCHAR(100),
	need_parts BOOLEAN, 
	PRIMARY KEY (type_of_service), 
	FOREIGN KEY (prev_service) REFERENCES CAR(serial_num)
);

CREATE TABLE mechanic(
	repairer_name VARCHAR(100), 
	salary INTEGER, 
	speciality VARCHAR(100), 
	PRIMARY KEY (repairer_name)
);

INSERT INTO mechanic (repairer_name, salary, speciality)
VALUES ('Ramo', 50000, 'ENGINE')

INSERT INTO CAR (serial_num, model, year, price)
VALUES ('1230123214ZKSDE', 'Cadillac', 2011, 78000);

UPDATE CAR
SET prev_service
WHERE prev_service = 'No history to show'

INSERT INTO salesperson (name, commission, num_sales)
VALUES ('OMAR', 900, 3)

INSERT INTO invoice (purchasor, total, MSRP, breakdown)
VALUES ('Kelly', 80000, 78000, 'Engine Fixed, Tires Rotated')

INSERT INTO service (location, phone, type_of_service, need_parts)
VALUES ('Chicago', '7088882222', 'Engine Light', False)

INSERT INTO customer (name, DOB, email, service)
VALUES ('JAMES', '01/03/1999', 'jamesjames@yahoo.com', True)
