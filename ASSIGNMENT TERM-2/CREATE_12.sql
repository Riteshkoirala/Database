CREATE TABLE Staffs (
  staff_id NUMBER(4) ,
  first_name CHAR(20) NOT NULL,
  last_name CHAR(20) NOT NULL,
  contact_number NUMBER(13) ,
  address VARCHAR2(50) NOT NULL,
  email VARCHAR2(50) ,
  join_date DATE NOT NULL,
  date_of_birth DATE NOT NULL);
  
  CREATE TABLE roles (
  role_number NUMBER(4) ,
  role_name CHAR(50) NOT NULL);
  
  CREATE TABLE Staff_roles (
  staff_id NUMBER(4) ,
  role_number NUMBER(4));
  
   CREATE TABLE Activities (
  activity_name VARCHAR2(100),
  aim VARCHAR2(500) NOT NULL,
  time_frame VARCHAR2(20) NOT NULL,
  budget VARCHAR2(10) NOT NULL);
  
   CREATE TABLE resources (
  item_id NUMBER(4) ,
  item_name VARCHAR2(20) ,
  Description VARCHAR2(200) NOT NULL,
  cost VARCHAR2(20) NOT NULL);
  
  CREATE TABLE activity_resources (
  activity_name VARCHAR2(100),
  item_id NUMBER(4));
  
  
  CREATE TABLE costs (
  cost_id NUMBER(4) ,
  item_description VARCHAR2(50) NOT NULL,
  item_price VARCHAR2(10) NOT NULL);
  
   CREATE TABLE groups (
  group_number NUMBER(4) ,
  activity_name VARCHAR2(100) ,
  staff_id NUMBER(4) ,
  role_number NUMBER(4) ,
  group_name VARCHAR2(15));
  
  CREATE TABLE stages (
  stage_number NUMBER(4) ,
  stage_name VARCHAR2(20) NOT NULL);
  
  CREATE TABLE plans (
  plan_id NUMBER(4) ,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  activity_name VARCHAR2(100) ,
  stage_number NUMBER(4) );

CREATE TABLE reviews (
  review_number NUMBER(4) ,
  time_given VARCHAR2(10) NOT NULL,
  location VARCHAR2(20) NOT NULL,
  plan_number NUMBER(4) ,
  group_id NUMBER(4) );

CREATE TABLE actions (
  output_number NUMBER(4),
  owner_name VARCHAR2(20) NOT NULL,
  deadline DATE NOT NULL,
  review_number NUMBER(4) ,
  action_date DATE NOT NULL);
  
  
 CREATE SEQUENCE S2
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 100
  MINVALUE 1
  NOCYCLE;