CREATE USER c##testproject IDENTIFIED BY testproject;
GRANT CONNECT, RESOURCE TO c##testproject;
GRANT CREATE VIEW TO c##testproject;
ALTER USER c##testproject
QUOTA 1024M ON USERS;