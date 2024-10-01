--------------------------------------------------------
--  File created - ?????????-?????????-19-2024   
--------------------------------------------------------
DROP SEQUENCE "ZBD1A_5"."S_CAR_ID";
DROP SEQUENCE "ZBD1A_5"."S_CL_ID";
DROP SEQUENCE "ZBD1A_5"."S_EMP_ID";
DROP SEQUENCE "ZBD1A_5"."S_SALE_ID";
DROP TABLE "ZBD1A_5"."CAR" cascade constraints;
DROP TABLE "ZBD1A_5"."CLIENT" cascade constraints;
DROP TABLE "ZBD1A_5"."EMPLOYEE" cascade constraints;
DROP TABLE "ZBD1A_5"."SALE" cascade constraints;
DROP PROCEDURE "ZBD1A_5"."ADD_SALE";
DROP PROCEDURE "ZBD1A_5"."GET_CARS_ABOVE";
--------------------------------------------------------
--  DDL for Sequence S_CAR_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ZBD1A_5"."S_CAR_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 26 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_CL_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ZBD1A_5"."S_CL_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_EMP_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ZBD1A_5"."S_EMP_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence S_SALE_ID
--------------------------------------------------------

   CREATE SEQUENCE  "ZBD1A_5"."S_SALE_ID"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 26 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CAR
--------------------------------------------------------

  CREATE TABLE "ZBD1A_5"."CAR" 
   (	"CAR_ID" NUMBER, 
	"CAR_BRAND" VARCHAR2(50 BYTE), 
	"CAR_MODEL" VARCHAR2(50 BYTE), 
	"CAR_YEAR" NUMBER, 
	"CAR_COLOR" VARCHAR2(30 BYTE), 
	"CAR_MIL" NUMBER, 
	"CAR_PRICE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLIENT
--------------------------------------------------------

  CREATE TABLE "ZBD1A_5"."CLIENT" 
   (	"CL_ID" NUMBER, 
	"CL_NAME" VARCHAR2(50 BYTE), 
	"CL_ADDRESS" VARCHAR2(100 BYTE), 
	"CL_PHN" VARCHAR2(15 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "ZBD1A_5"."EMPLOYEE" 
   (	"EMP_ID" NUMBER, 
	"EMP_NAME" VARCHAR2(50 BYTE), 
	"EMP_POSITION" VARCHAR2(50 BYTE), 
	"EMP_PHN" VARCHAR2(15 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SALE
--------------------------------------------------------

  CREATE TABLE "ZBD1A_5"."SALE" 
   (	"SALE_ID" NUMBER, 
	"CL_ID" NUMBER, 
	"CAR_ID" NUMBER, 
	"EMP_ID" NUMBER, 
	"SALE_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into ZBD1A_5.CAR
SET DEFINE OFF;
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (6,'BMW','M5',2019,'Blue',1300,65000);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (7,'Ford','Mondeo',2008,'Pink',140000,24000);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (1,'Ford','Mondeo',2006,'Blue',63000,25000);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (2,'Kia','Rio',2016,'Yellow',3000,35200);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (3,'Audi','A3',2020,'Black',100,45000);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (4,'VW','Golf 3',2010,'Red',75000,11000);
Insert into ZBD1A_5.CAR (CAR_ID,CAR_BRAND,CAR_MODEL,CAR_YEAR,CAR_COLOR,CAR_MIL,CAR_PRICE) values (5,'BMW','M3',2018,'PearlWhite',290,50000);
REM INSERTING into ZBD1A_5.CLIENT
SET DEFINE OFF;
Insert into ZBD1A_5.CLIENT (CL_ID,CL_NAME,CL_ADDRESS,CL_PHN) values (1,'Frank Bale','NY, street #32','+19857292144');
Insert into ZBD1A_5.CLIENT (CL_ID,CL_NAME,CL_ADDRESS,CL_PHN) values (2,'Matt River','Sofia, street #2','+359778342761');
Insert into ZBD1A_5.CLIENT (CL_ID,CL_NAME,CL_ADDRESS,CL_PHN) values (3,'Anna Carter','Varna, Studentska #3','+359888457721');
Insert into ZBD1A_5.CLIENT (CL_ID,CL_NAME,CL_ADDRESS,CL_PHN) values (4,'John Francisk','Burgas, Centralna #5/3','+359888998556');
Insert into ZBD1A_5.CLIENT (CL_ID,CL_NAME,CL_ADDRESS,CL_PHN) values (5,'Isaak Newton ','Pernik, street #10/2','+359888888888');
REM INSERTING into ZBD1A_5.EMPLOYEE
SET DEFINE OFF;
Insert into ZBD1A_5.EMPLOYEE (EMP_ID,EMP_NAME,EMP_POSITION,EMP_PHN) values (1,'Radoslav Marinov','Manager','+359788265136');
Insert into ZBD1A_5.EMPLOYEE (EMP_ID,EMP_NAME,EMP_POSITION,EMP_PHN) values (2,'Bogdan Ivanov ','CEO','+359998603114');
Insert into ZBD1A_5.EMPLOYEE (EMP_ID,EMP_NAME,EMP_POSITION,EMP_PHN) values (3,'Krasmir Krasimirov','Trainee','+359888457212');
Insert into ZBD1A_5.EMPLOYEE (EMP_ID,EMP_NAME,EMP_POSITION,EMP_PHN) values (4,'Ivan Ivanov','Analyst','+359888456596');
Insert into ZBD1A_5.EMPLOYEE (EMP_ID,EMP_NAME,EMP_POSITION,EMP_PHN) values (5,'Kris Karamanov','Analyst','+359888601460');
REM INSERTING into ZBD1A_5.SALE
SET DEFINE OFF;
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (1,1,1,1,to_date('11-SEP-24','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (2,2,2,2,to_date('21-AUG-23','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (3,3,3,3,to_date('05-JAN-20','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (4,4,4,4,to_date('28-MAR-18','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (5,5,5,5,to_date('13-FEB-24','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (6,2,6,1,to_date('10-DEC-24','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (8,3,6,1,to_date('18-SEP-24','DD-MON-RR'));
Insert into ZBD1A_5.SALE (SALE_ID,CL_ID,CAR_ID,EMP_ID,SALE_DATE) values (10,5,7,5,to_date('06-SEP-24','DD-MON-RR'));
--------------------------------------------------------
--  DDL for Trigger T_UPDATE_CAR_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ZBD1A_5"."T_UPDATE_CAR_ID" 
before insert on Car
for each row
 WHEN (new.car_id is null) begin
:new.car_id:=S_CAR_ID.nextval;
end;
/
ALTER TRIGGER "ZBD1A_5"."T_UPDATE_CAR_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_UPDATE_CL_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ZBD1A_5"."T_UPDATE_CL_ID" 
before insert on Client
for each row
 WHEN (new.cl_id is null) begin
:new.cl_id:=S_CL_ID.nextval;
end;
/
ALTER TRIGGER "ZBD1A_5"."T_UPDATE_CL_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_UPDATE_EMP_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ZBD1A_5"."T_UPDATE_EMP_ID" 
before insert on Employee
for each row
 WHEN (new.emp_id is null) begin
:new.emp_id:=S_EMP_ID.nextval;
end;
/
ALTER TRIGGER "ZBD1A_5"."T_UPDATE_EMP_ID" ENABLE;
--------------------------------------------------------
--  DDL for Trigger T_UPDATE_SALE_ID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "ZBD1A_5"."T_UPDATE_SALE_ID" 
before insert on Sale
for each row
 WHEN (new.sale_id is null) begin
:new.sale_id:=S_SALE_ID.nextval;
end;
/
ALTER TRIGGER "ZBD1A_5"."T_UPDATE_SALE_ID" ENABLE;
--------------------------------------------------------
--  DDL for Procedure ADD_SALE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ZBD1A_5"."ADD_SALE" (
p_cl_id in number,
p_car_id in number,
p_emp_id in number,
p_sale_date in date
) as
begin
insert into Sale(cl_id, car_id, emp_id, sale_date)
values(p_cl_id, p_car_id, p_emp_id, p_sale_date);
end;

/
--------------------------------------------------------
--  DDL for Procedure GET_CARS_ABOVE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "ZBD1A_5"."GET_CARS_ABOVE" AS 
cursor car_cursor is
select car_id, car_brand, car_model, car_year, car_color, car_mil, car_price
from Car
where car_price > 20000;
car_record Car%ROWTYPE;
BEGIN
open car_cursor;
loop
fetch car_cursor into car_record;
exit when car_cursor%NOTFOUND;
DBMS_OUTPUT.PUT_LINE('Car ID: ' || car_record.car_id || 
                    ', Brand: ' || car_record.car_brand || 
                    ', Model: ' || car_record.car_model || 
                    ', Year: ' || car_record.car_year || 
                    ', Color: ' || car_record.car_color || 
                    ', Mil: ' || car_record.car_mil || 
                    ', Price: ' || car_record.car_price );
end loop;
close car_cursor;
end;

/
--------------------------------------------------------
--  Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "ZBD1A_5"."SALE" ADD PRIMARY KEY ("SALE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAR
--------------------------------------------------------

  ALTER TABLE "ZBD1A_5"."CAR" ADD PRIMARY KEY ("CAR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLIENT
--------------------------------------------------------

  ALTER TABLE "ZBD1A_5"."CLIENT" ADD PRIMARY KEY ("CL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "ZBD1A_5"."EMPLOYEE" ADD PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "ZBD1A_5"."SALE" ADD FOREIGN KEY ("CL_ID")
	  REFERENCES "ZBD1A_5"."CLIENT" ("CL_ID") ENABLE;
 
  ALTER TABLE "ZBD1A_5"."SALE" ADD FOREIGN KEY ("CAR_ID")
	  REFERENCES "ZBD1A_5"."CAR" ("CAR_ID") ENABLE;
 
  ALTER TABLE "ZBD1A_5"."SALE" ADD FOREIGN KEY ("EMP_ID")
	  REFERENCES "ZBD1A_5"."EMPLOYEE" ("EMP_ID") ENABLE;
