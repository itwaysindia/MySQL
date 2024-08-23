=> DATABASE
============
- CREATE DATABASE database_name;
- SHOW DATABASES;
- USE database_name;
- DROP DATABASE database_name;
 - SELECT table_schema "database_name",
	SUM(data_length+index_length)/1024/1024 "Databse Size MB"
FROM information_schema.TABLES WHERE table_schema = "database_name" GROUP BY table_schema;

-----------------------------------------------------------------------------------------
=> TABLE

        - CREATE TABLE table_name(
        colName data_type constraints,
        );

        example:
            CREATE TABLE login (
                id INT AUTO_INCREMENT PRIMARY KEY,
                username VARCHAR(60) UNIQUE,
                password VARCHAR(50),
                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
            );

    SHOW TABLES;

    RENAME TABLE login TO student_login;

    TRUNCATE TABLE profile

    DROP TABLE login


COLUMN

    Alter Table (Modify Table Structure)

            ALTER TABLE login
                ADD COLUMN profile_id VARCHAR(60),
                ADD COLUMN email VARCHAR(60),
                ADD COLUMN phone VARCHAR(20);

            ALTER TABLE login
                ADD COLUMN group VARCHAR(100)
                AFTER password;

                
    Rename COLUMN
            ALTER TABLE login
                CHANGE phone contact VARCHAR(20);

    DROP COLUMN 
            ALTER TABLE login
                DROP COLUMN contact;

		