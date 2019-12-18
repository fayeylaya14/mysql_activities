CREATE TABLE IF NOT EXISTS users (
user_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
user_fname varchar(100),
user_lname varchar(100)
);

ALTER TABLE users
ADD CONSTRAINT FK_jobID
FOREIGN KEY (JOB_ID) REFERENCES jobs(JOB_ID);

CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID int AUTO_INCREMENT PRIMARY KEY NOT NULL, 
job_title varchar(35) NOT NULL, 
min_salary decimal(6,0), 
max_salary decimal(6,0)
);