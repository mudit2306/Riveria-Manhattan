drop database manhattan;
create database Manhattan;
use manhattan;


CREATE TABLE client_data (
	flat_no INT PRIMARY KEY,
    broker varchar(100) default null,
    first_name VARCHAR(100) DEFAULT NULL,
    middle_name VARCHAR(100) DEFAULT NULL,
    last_name VARCHAR(100) DEFAULT NULL,
    name VARCHAR(300) GENERATED ALWAYS AS (CONCAT_WS(' ', first_name, middle_name, last_name)) STORED,
    DOB date DEFAULT NULL,
    primary_email varchar(320) default null,
    secondary_email varchar(320) default null,
    primary_phone_no int(10) unsigned default null,
    secondary_phone_no int(10) unsigned default null,
    pan_no VARCHAR(10) UNIQUE DEFAULT NULL,
    adhaar_no BIGINT(12) UNSIGNED UNIQUE DEFAULT NULL,
    address_line_1 varchar(250) DEFAULT NULL,
	address_line_2 varchar(250) DEFAULT NULL,
    address_line_3 varchar(250) DEFAULT NULL,
    city varchar(50) default null,
    pincode int(6) default null
    -- FOREIGN KEY(flat_no) REFERENCES flat_data(flat_no)
);

CREATE TABLE flat_primary_data (
	flat_no INT PRIMARY KEY,
    agreement_value int unsigned default null,
    size numeric (7,2),
    sold char(1) default "N"
);

CREATE TABLE transaction(
	flat_no int,
    date date not null,
    debit int,
    credit int,
    description varchar(100)
);

