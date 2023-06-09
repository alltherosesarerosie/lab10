CREATE DATABASE workers;
GO
USE workers;
CREATE TABLE worker
(
    id INT IDENTITY PRIMARY KEY,
    name NVARCHAR(30) NOT NULL,
    last_name NVARCHAR(30) NOT NULL,
    age INT NOT NULL,
    work NVARCHAR(30) NOT NULL,
);
CREATE TABLE history 
(
    id INT IDENTITY PRIMARY KEY,
    worker_id INT NOT NULL,
    Operation NVARCHAR(200) NOT NULL,
    CreateAt DATETIME NOT NULL DEFAULT GETDATE(),
);
