CREATE TABLE BLOOD_STORAGE (
	BLOOD_TYPE VARCHAR(20),
	BLOOD_QUANTITY VARCHAR(20)
);



CREATE TABLE DONOR_STATIC (
	ID VARCHAR(20)  PRIMARY KEY,
	NAME VARCHAR(20) ,
	SEX VARCHAR(20) NOT NULL,
	DOB DATE ,
	ADDRESS VARCHAR(20) NOT NULL,
	BLOODGROUP VARCHAR(20) NOT NULL
	);


CREATE TABLE DONOR_VARIABLE (
	DONAOR_ID VARCHAR(20),
	CAMP_ID VARCHAR(20),
	EMPLOYEE_ID VARCHAR(20),
	HELATH_ISSUES VARCHAR(20),
	WEIGHT VARCHAR(20),
	LAST_DONATED VARCHAR(20),
	TIMES_DONATED VARCHAR(20),
	DONATED_DATE DATE,
	FOREIGN KEY(CAMP_ID) REFERENCES CAMPS(ID)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(DONOR_ID) REFERENCES DONOR_STATIC(ID)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEE_INFO(ID)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE EMPLOYEE_INFO (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	NAME VARCHAR(20)NOT NULL,
	DOB DATE,
	EMAIL VARCHAR(20) ,
	PHONE VARCHAR(20) NOT NULL,
	SEX VARCHAR(20) NOT NULL,
	DESIGNATION VARCHAR(20) NOT NULL,
	PASSWORDS VARCHAR(20) NOT NULL
);

CREATE TABLE CAMPS (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	EMPLOYEE_ID VARCHAR(20) NOT NULL,
	LOCATION VARCHAR(20) NOT NULL,
	NAME VARCHAR(20) NOT NULL,
	FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEE_INFO(ID)
	ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE RECEIVER_STATIC (
	ID VARCHAR(20) PRIMARY KEY NOT NULL,
	NAME VARCHAR(20) NOT NULL,
	SEX VARCHAR(20) NOT NULL,
	DOB DATE ,
	PHONE VARCHAR(20) NOT NULL,
	EMAIL VARCHAR(20) NOT NULL,
	ADDRESS VARCHAR(20) NOT NULL
);

CREATE TABLE RECEIVER_VARIABLE (
	RECEIVER_ID VARCHAR(20) NOT NULL,
	EMPLOYEE_ID VARCHAR(20) NOT NULL,
	CONSULTANT_DOCTOR VARCHAR(20),
	REQUIRED_QUANTITY VARCHAR(20),
	HOSPITAL_NAME VARCHAR(20),
	REQUIRED_BLOODGROUP VARCHAR(20),
	REQUIRED_DATE DATE,
	FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEE_INFO(ID)
	ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(RECEIVER_ID) REFERENCES RECEIVER_STATIC(ID)
	ON DELETE CASCADE ON UPDATE CASCADE
	);
	





