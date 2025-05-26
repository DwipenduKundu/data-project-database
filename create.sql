CREATE USER <ipl_user> WITH PASSWORD <password_of_ipl_user>;

CREATE DATABASE <ipl_database_name> OWNER <ipl_user>;

GRANT ALL PRIVILEGES ON DATABASE <ipl_database_name>  TO <ipl_user>;