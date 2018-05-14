/* BlindAlive */
create database blindAliveBuyPortal;
CREATE USER 'blindalive'@'localhost' IDENTIFIED BY '';
GRANT ALL ON blindAliveBuyPortal.* TO 'blindalive'@'localhost';

CREATE USER 'apiUser'@'localhost' IDENTIFIED BY '';
GRANT SELECT ON blindAliveBuyPortal.* TO 'apiUser'@'localhost';


/* YOUHANGIT */
create database yhi;
CREATE USER 'yhi'@'localhost' IDENTIFIED BY '';
GRANT ALL ON yhi.* TO 'yhi'@'localhost';

CREATE USER 'apiuser_yhi'@'localhost' IDENTIFIED BY '';
GRANT SELECT ON yhi.* TO 'apiuser_yhi'@'localhost';
