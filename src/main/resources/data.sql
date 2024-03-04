DROP TABLE IF EXISTS `customer`;

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` INT PRIMARY KEY NOT NULL,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `phone_number` VARCHAR(15) NOT NULL,
  `email` VARCHAR(32) NOT NULL,
  `created_at` TIMESTAMP DEFAULT NOW() NOT NULL,
  `updated_at` TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);

DROP TABLE IF EXISTS `account`;

CREATE TABLE IF NOT EXISTS `account`(
  `customer_id` INT NOT NULL,
  `account_number` INT PRIMARY KEY NOT NULL,
  `branch_code` VARCHAR(18) NOT NULL,
  `account_type` VARCHAR (100) NOT NULL,
  `balance` DECIMAL NOT NULL DEFAULT 0,
  `created_at` DATE NOT NULL,
  `updated_at` DATE
);

INSERT INTO CUSTOMER (customer_id, first_name, last_name, phone_number, email, created_at, updated_at) VALUES
(1, 'John', 'Doe', '123-456-7890', 'john.doe@example.com', '2024-02-23', '2024-02-23'),
(2, 'Jane', 'Smith', '987-654-3210', 'jane.smith@example.com', '2024-02-23', '2024-02-23'),
(3, 'Alice', 'Johnson', '555-555-5555', 'alice.johnson@example.com', '2024-02-23', '2024-02-23'),
(4, 'Bob', 'Williams', '777-777-7777', 'bob.williams@example.com', '2024-02-23', '2024-02-23'),
(5, 'Sarah', 'Brown', '888-888-8888', 'sarah.brown@example.com', '2024-02-23', '2024-02-23'),
(6, 'Michael', 'Davis', '999-999-9999', 'michael.davis@example.com', '2024-02-23', '2024-02-23'),
(7, 'Emily', 'Jones', '111-222-3333', 'emily.jones@example.com', '2024-02-23', '2024-02-23'),
(8, 'David', 'Martinez', '444-444-4444', 'david.martinez@example.com', '2024-02-23', '2024-02-23'),
(9, 'Olivia', 'Garcia', '666-666-6666', 'olivia.garcia@example.com', '2024-02-23', '2024-02-23'),
(10, 'James', 'Rodriguez', '222-333-4444', 'james.rodriguez@example.com', '2024-02-23', '2024-02-23'),
(11, 'Sophia', 'Lopez', '555-666-7777', 'sophia.lopez@example.com', '2024-02-23', '2024-02-23'),
(12, 'William', 'Hernandez', '777-888-9999', 'william.hernandez@example.com', '2024-02-23', '2024-02-23'),
(13, 'Ava', 'Gonzalez', '888-999-0000', 'ava.gonzalez@example.com', '2024-02-23', '2024-02-23'),
(14, 'Alexander', 'Perez', '123-456-7890', 'alexander.perez@example.com', '2024-02-23', '2024-02-23'),
(15, 'Mia', 'Torres', '987-654-3210', 'mia.torres@example.com', '2024-02-23', '2024-02-23'),
(16, 'Ethan', 'Rivera', '555-555-5555', 'ethan.rivera@example.com', '2024-02-23', '2024-02-23'),
(17, 'Isabella', 'Ramirez', '777-777-7777', 'isabella.ramirez@example.com', '2024-02-23', '2024-02-23'),
(18, 'Charlotte', 'Flores', '888-888-8888', 'charlotte.flores@example.com', '2024-02-23', '2024-02-23'),
(19, 'Jacob', 'Gomez', '999-999-9999', 'jacob.gomez@example.com', '2024-02-23', '2024-02-23'),
(20, 'Amelia', 'Sanchez', '111-222-3333', 'amelia.sanchez@example.com', '2024-02-23', '2024-02-23');


INSERT INTO account (customer_id, account_number, branch_code, account_type, balance, created_at, updated_at)
VALUES
(1, 100001, 'BR-001', 'Savings', 0.00, '2024-02-23', NULL),
(2, 100002, 'BR-002', 'Checking', 300.00, '2024-02-23', NULL),
(3, 100003, 'BR-003', 'Savings', 39.40, '2024-02-23', NULL),
(4, 100004, 'BR-004', 'Investment', 39.40, '2024-02-23', NULL),
(5, 100005, 'BR-005', 'Checking',39.40, '2024-02-23', NULL),
(6, 100006, 'BR-006', 'Savings',39.40, '2024-02-23', NULL),
(7, 100007, 'BR-007', 'Checking',359.40, '2024-02-23', NULL),
(8, 100008, 'BR-008', 'Savings',359.40, '2024-02-23', NULL),
(9, 100009, 'BR-009', 'Investment',5539.40, '2024-02-23', NULL),
(10, 100010, 'BR-010', 'Checking',139.40, '2024-02-23', NULL),
(11, 100011, 'BR-011', 'Savings', 339.40,'2024-02-23', NULL),
(12, 100012, 'BR-012', 'Checking', 3669.40,'2024-02-23', NULL),
(13, 100013, 'BR-013', 'Investment',3559.40, '2024-02-23', NULL),
(14, 100014, 'BR-014', 'Savings',3459.40, '2024-02-23', NULL),
(15, 100015, 'BR-015', 'Checking',3956.40, '2024-02-23', NULL),
(16, 100016, 'BR-016', 'Savings',34449.40, '2024-02-23', NULL),
(17, 100017, 'BR-017', 'Investment',639.40, '2024-02-23', NULL),
(18, 100018, 'BR-018', 'Checking',739.40, '2024-02-23', NULL),
(19, 100019, 'BR-019', 'Savings',639.40,'2024-02-23', NULL),
(20, 100020, 'BR-020', 'Checking',390.40, '2024-02-23', NULL);
