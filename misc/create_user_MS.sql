CREATE LOGIN [RPC\db_user] FROM WINDOWS;

/* 1 вариант */
USE master;
GO 

CREATE USER new_user FOR LOGIN new_user;
GO

GRANT CREATE DATABASE TO new_user;
GO

/* 2 вариант */

CREATE DATABASE new_db;
GO

USE new_db;
GO

CREATE USER new_user FOR LOGIN new_user;
GO

GRANT ALL TO new_user;