create database gridcity;

CREATE USER 'clu'@'localhost' IDENTIFIED BY '';
GRANT ALL ON gridcity.* TO 'clu'@'localhost';

CREATE USER 'tron'@'localhost' IDENTIFIED BY '';
GRANT SELECT, INSERT, UPDATE, ALTER ON gridcity.* TO 'tron'@'localhost';


/* Core Tabels */
CREATE TABLE sys_meta (
  companyName varchar(255),
  headline varchar(255),
  contactNumber bigint,
  openHour bigint,
  closedHour bigint,
  paypalUrlRoot varchar(255),
  paypalMerchantId varchar(255),
  paypalReturnUrl varchar(255),
  paypalCancelReturnUrl varchar(255),
  exportFolder varchar(255),
  audioStorageFolder varchar(255)
);


CREATE TABLE emailQ (
  emailId VARCHAR(255) NOT NULL PRIMARY KEY,
  emailTo VARCHAR(255),
  emailCc VARCHAR(255),
  emailBcc VARCHAR(255),
  emailFrom VARCHAR(255),
  emailSubject VARCHAR(255),
  emailBody VARCHAR(255),
  creationTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  createdFrom VARCHAR(255),
  lastUpdated TIMESTAMP,
  emailSent INT DEFAULT 0
);


/* user management */
CREATE TABLE login_members (userId VARCHAR(64) NOT NULL PRIMARY KEY, username varchar(30), email varchar(50) NOT NULL, firstName varchar(100), lastName varchar(100), levelId INT NOT NULL DEFAULT 0, enabled INT NOT NULL DEFAULT 1, password char(128) NOT NULL, salt char(128) NOT NULL, created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, lastLogin TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE login_attempts (userId VARCHAR(64) NOT NULL, attemptTime TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE login_levels (levelId INT NOT NULL PRIMARY KEY, friendlyName VARCHAR(255), enabled INT NOT NULL DEFAULT 1);

INSERT INTO login_levels (levelId, friendlyName) VALUES (0,'read-only');
INSERT INTO login_levels (levelId, friendlyName) VALUES (1,'normal');
INSERT INTO login_levels (levelId, friendlyName) VALUES (2,'admin');
INSERT INTO login_levels (levelId, friendlyName) VALUES (1729, 'root');
