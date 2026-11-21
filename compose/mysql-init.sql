CREATE DATABASE billing;
GRANT ALL PRIVILEGES ON billing.* TO 'native-sql-database-client-windows'@'%';
-- A user who writes and is shown no triggers: the server lists a table's
-- triggers only to who has TRIGGER on it. One test of a save needs one.
CREATE USER 'writer'@'%' IDENTIFIED BY 'writer';
GRANT SELECT, INSERT, UPDATE, DELETE ON native-sql-database-client-windows.* TO 'writer'@'%';
-- The Bookshop (crates/native-sql-database-client-windows-db/fixtures/bookshop/mysql.sql), which
-- what an agent may read is tested on, in a database of its own.
CREATE DATABASE bookshop;
GRANT ALL PRIVILEGES ON bookshop.* TO 'native-sql-database-client-windows'@'%';
