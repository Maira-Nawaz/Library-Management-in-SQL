CREATE DATABASE library_management_analysis

CREATE TABLE books (
    isbn VARCHAR(20) PRIMARY KEY,
    book_title VARCHAR(255),
    category VARCHAR(100),
    rental_price DECIMAL(5,2),
    status ENUM('yes', 'no'),
    author VARCHAR(255),
    publisher VARCHAR(255)
);

CREATE TABLE branches (
    branch_id VARCHAR(10) PRIMARY KEY,
    manager_id VARCHAR(10),
    branch_address VARCHAR(255),
    contact_no BIGINT
);

CREATE TABLE employees (
    emp_id VARCHAR(10) PRIMARY KEY,
    emp_name VARCHAR(255),
    position VARCHAR(100),
    salary INT,
    branch_id VARCHAR(10),
    FOREIGN KEY (branch_id) REFERENCES branches(branch_id)
);

CREATE TABLE issued_status (
    issued_id VARCHAR(10) PRIMARY KEY,
    issued_member_id VARCHAR(10),
    issued_book_name VARCHAR(255),
    issued_date DATE,
    issued_book_isbn VARCHAR(20),
    issued_emp_id VARCHAR(10),
    FOREIGN KEY (issued_member_id) REFERENCES members(member_id),
    FOREIGN KEY (issued_book_isbn) REFERENCES books(isbn),
    FOREIGN KEY (issued_emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE members (
    member_id VARCHAR(10) PRIMARY KEY,
    member_name VARCHAR(50),
    member_address VARCHAR(100),
    reg_date DATE
);


CREATE TABLE return_status (
    return_id VARCHAR(10) PRIMARY KEY,
    issued_id VARCHAR(10),
    return_book_name VARCHAR(255),
    return_date DATE,
    return_book_isbn VARCHAR(20),
    FOREIGN KEY (issued_id) REFERENCES issued_status(issued_id)
);

