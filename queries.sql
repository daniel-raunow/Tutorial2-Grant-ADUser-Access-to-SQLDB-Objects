--create login in master
CREATE LOGIN [demo@raunow.dk] FROM EXTERNAL PROVIDER
GO

--create user in master
CREATE USER [demo@raunow.dk] FROM LOGIN [demo@raunow.dk]

--create user in database
CREATE USER [demo@raunow.dk] FROM EXTERNAL PROVIDER

--grant select on table
GRANT SELECT ON OBJECT::test_schema.ad_table TO [demo@raunow.dk]; 

--test insert statement
INSERT INTO test_schema.ad_table 
VALUES (3, 'none', 'none@nowhere.lost')
