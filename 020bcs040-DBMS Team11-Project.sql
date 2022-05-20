/*** Dhanisht (20bcs040) ***/
CREATE DATABASE Group_Project;
USE Group_Project;

CREATE TABLE team11_customer(
team11_cust_id INT primary key, 
team11_cust_fname VARCHAR(15) NOT NULL, 
team11_cust_lname VARCHAR(15) NOT NULL, 
team11_cust_dob DATE NOT NULL,
team11_cust_gender CHAR(2), 
team11_cust_address TEXT NOT NULL, 
team11_cust_number BIGINT, 
team11_cust_email VARCHAR(50), 
team11_cust_passportnumber VARCHAR(20) NOT NULL, 
team11_cust_maritalstatus CHAR(10),
team11_cust_ppsnumber INT NOT NULL);

/* Stored procedure */
DELIMITER $$
CREATE PROCEDURE team11_customer_insert
(team11_cust_id INT, 
team11_cust_fname VARCHAR(15) , 
team11_cust_lname VARCHAR(15)   , 
team11_cust_dob DATE  ,
team11_cust_gender CHAR(2), 
team11_cust_address TEXT  , 
team11_cust_number BIGINT, 
team11_cust_email VARCHAR(50), 
team11_cust_passportnumber VARCHAR(20)  , 
team11_cust_maritalstatus CHAR(10),
team11_cust_ppsnumber INT   )
BEGIN 
INSERT INTO team11_customer VALUES 
(team11_cust_id, team11_cust_fname  , team11_cust_lname , team11_cust_dob , team11_cust_gender , 
team11_cust_address, team11_cust_number , team11_cust_email  , team11_cust_passportnumber, 
team11_cust_maritalstatus, team11_cust_ppsnumber ) ;
END $$

DELIMITER $$
CREATE PROCEDURE team11_customer_update
(team11_cust_id INT, 
team11_cust_fname VARCHAR(15) , 
team11_cust_lname VARCHAR(15)   , 
team11_cust_dob DATE  ,
team11_cust_gender CHAR(2), 
team11_cust_address TEXT  , 
team11_cust_number BIGINT, 
team11_cust_email VARCHAR(50), 
team11_cust_passportnumber VARCHAR(20)  , 
team11_cust_maritalstatus CHAR(10),
team11_cust_ppsnumber INT   )
BEGIN 
UPDATE team11_customer set team11_cust_id = team11_cust_id, team11_cust_fname=team11_cust_fname,
team11_cust_lname=team11_cust_lname,team11_cust_dob=team11_cust_dob,
team11_cust_gender= team11_cust_gender, team11_cust_address=team11_cust_address,
team11_cust_number=team11_cust_number,team11_cust_email=team11_cust_email,
team11_cust_passportnumber=team11_cust_passportnumber,team11_cust_maritalstatus=team11_cust_maritalstatus,
team11_cust_ppsnumber=team11_cust_ppsnumber;
END $$

DELIMITER $$
CREATE PROCEDURE team11_customer_delete
(team11_cust_id INT, 
team11_cust_fname VARCHAR(15) , 
team11_cust_lname VARCHAR(15)   , 
team11_cust_dob DATE  ,
team11_cust_gender CHAR(2), 
team11_cust_address TEXT  , 
team11_cust_number BIGINT, 
team11_cust_email VARCHAR(50), 
team11_cust_passportnumber VARCHAR(20)  , 
team11_cust_maritalstatus CHAR(10),
team11_cust_ppsnumber INT   )
BEGIN 
DELETE FROM team11_customer ;
END $$

INSERT INTO team11_customer VALUES
( 1000 , ' Judah ' , ' Gamble ' , ' 1989-6-12 ' , ' M ' , ' Weimann Center, Apt. 082, 76298-4742, Kennyfurt, Delaware, Ireland ' , 6558590724 , ' judah.gamble24@gmail.com ' , ' W9848436 ' , ' Married ' , 39530501 ) ,
( 1010 , ' Luis ' , ' Hatfield ' , ' 1997-8-19 ' , ' M ' , ' 539 Little Land, Suite 407, 51428, Lake Vinnieborough, Tennessee, Ireland ' , 6319707571 , ' 86hatfield_luis@gmail.com ' , ' P1234189 ' , ' Unmarried ' , 54679686 ) ,
( 1020 , ' Slade ' , ' Fisher ' , ' 1994-12-19 ' , ' M ' , ' 0928 King Way, Apt. 319, 94841-9555, East Rosaleetown, Alaska, Ireland ' , 9517862793 , ' slade.fisher82@gmail.com ' , ' H2128729 ' , ' Married ' , 82215345 ) ,
( 1030 , ' Greyson ' , ' Leon ' , ' 1997-12-03 ' , ' M ' , ' 25669 Godfrey Spring, Suite 878, 84298, Boyerstad, Idaho, Ireland ' , 6697593570 , ' 97greyson_leon@hotmail.com ' , ' F7749313 ' , ' Married ' , 16221313 ) ,
( 1040 , ' Camren ' , ' Reid ' , ' 1989-5-05 ' , ' M ' , ' 441 Kattie Circles, Apt. 005, 87334-0913, North Tyrelport, Tennessee, Ireland ' , 8433180423 , ' 43reid_camren@gmail.com ' , ' X2145477 ' , ' Married ' , 98572476 ) ,
( 1050 , ' Dereon ' , ' Zimmerman ' , ' 1990-9-02 ' , ' M ' , ' 1917 Bruen Road, Suite 249, 50806-8153, Kubberg, Vermont, Ireland ' , 6548079832 , ' 6dereon.zimmerman@hotmail.com ' , ' X2622589 ' , ' Married ' , 19211319 ) ,
( 1060 , ' Phoenix ' , ' Allen ' , ' 2000-6-12 ' , ' M ' , ' 9120 Juston Prairie, Apt. 623, 36814, Patrickhaven, Louisiana, Ireland ' , 9789188425 , ' 66phoenix_allen@gmail.com ' , ' T6435458 ' , ' Married ' , 13335874 ) ,
( 1070 , ' Kole ' , ' Salazar ' , ' 1988-1-08 ' , ' M ' , ' 36298 Clark Parkways, Apt. 146, 20026, Stammburgh, Minnesota, Ireland ' , 6309721566 , ' 42salazar.kole@gmail.com ' , ' N4290828 ' , ' Married ' , 13739752 ) ,
( 1080 , ' Reynaldo ' , ' Bauer ' , ' 2003-3-18 ' , ' M ' , ' 182 Mraz Gateway, Apt. 197, 29329-3329, South Hilbert, Idaho, Ireland ' , 9956816330 , ' reynaldo.bauer5@gmail.com ' , ' L5329932 ' , ' Married ' , 72674519 ) ,
( 1090 , ' Cade ' , ' Frye ' , ' 1994-2-10 ' , ' M ' , ' 6007 Reichert Drive, Apt. 235, 77810-0742, South Ebony, North Carolina, Ireland ' , 8647954592 , ' frye_cade70@gmail.com ' , ' J9177559 ' , ' Married ' , 29919597 ) ,
( 1100 , ' Jaliyah ' , ' Yoder ' , ' 1989-11-02 ' , ' M ' , ' 18641 Roberts Rapids, Suite 058, 87518, East Carterbury, Colorado, Ireland ' , 6157742061 , ' jaliyah_yoder60@gmail.com ' , ' V2095706 ' , ' Married ' , 85031056 ) ,
( 1110 , ' Aisha ' , ' Brady ' , ' 1994-5-22 ' , ' M ' , ' 49937 Serena Walks, Apt. 129, 42217, Judgeshire, New York, Ireland ' , 8558125926 , ' 27brady_aisha@gmail.com ' , ' A3794184 ' , ' Married ' , 95000830 ) ,
( 1120 , ' Saige ' , ' Kidd ' , ' 1991-1-22 ' , ' M ' , ' 44509 Russel Cove, Apt. 196, 41205-4275, Port Eliza, Montana, Ireland ' , 9666954616 , ' saige_kidd33@yahoo.com ' , ' F9026143 ' , ' Unmarried ' , 30911996 ) ,
( 1130 , ' Jacquelyn ' , ' Madden ' , ' 1993-12-13 ' , ' M ' , ' 735 Deon Knoll, Suite 818, 52158, Kearaport, Virginia, Ireland ' , 6148225043 , ' madden_jacquelyn35@hotmail.com ' , ' G7512823 ' , ' Married ' , 45100072 ) ,
( 1140 , ' Ryann ' , ' Schmidt ' , ' 2001-1-16 ' , ' M ' , ' 206 Ziemann Unions, Suite 262, 22102-8881, South Elroy, Nebraska, Ireland ' , 6732418578 , ' 84ryann.schmidt@gmail.com ' , ' J3470947 ' , ' Married ' , 35210673 ) ,
( 1150 , ' Leslie ' , ' Sandoval ' , ' 1993-2-24 ' , ' M ' , ' 17599 Marianna Summit, Apt. 926, 31346-0566, South Fredaland, Delaware, Ireland ' , 6171956982 , ' 99leslie.sandoval@yahoo.com ' , ' N8522191 ' , ' Married ' , 25623046 ) ,
( 1160 , ' Abigayle ' , ' Monroe ' , ' 2000-5-06 ' , ' M ' , ' 959 Rubie Squares, Apt. 778, 28374-0711, Dachville, Minnesota, Ireland ' , 9731645594 , ' monroe.abigayle42@gmail.com ' , ' E7725715 ' , ' Married ' , 63864410 ) ,
( 1170 , ' Elisabeth ' , ' Gibbs ' , ' 1988-12-05 ' , ' M ' , ' 3055 Arlene Squares, Suite 256, 91442-2737, East Karolannfort, Georgia, Ireland ' , 9605542286 , ' gibbs.elisabeth12@hotmail.com ' , ' P5786685 ' , ' Married ' , 99906390 ) ,
( 1180 , ' Jaycee ' , ' Shah ' , ' 1988-12-18 ' , ' M ' , ' 4328 Rempel Mountain, Apt. 373, 41598, Robbieborough, Arizona, Ireland ' , 9704833729 , ' shah_jaycee74@gmail.com ' , ' T5715042 ' , ' Married ' , 31478382 ) ,
( 1190 , ' Olive ' , ' Barnett ' , ' 1993-7-18 ' , ' M ' , ' 07843 Orpha Shore, Apt. 165, 33505-1951, New Jerad, Illinois, Ireland ' , 8750832220 , ' barnett_olive11@yahoo.com ' , ' W2250286 ' , ' Married ' , 42505906 );

select * from team11_customer;    


CREATE TABLE team11_membership(
team11_membership_id VARCHAR(20) PRIMARY KEY,
team11_cust_id INT NOT NULL, 
team11_membership_type CHAR(15), 
team11_organisation_contact VARCHAR(20), 
FOREIGN KEY(team11_cust_id) 
REFERENCES team11_customer(team11_cust_id) );

INSERT INTO team11_membership VALUES
( ' M0000 ' , 1000 , ' Second Class ' , ' 6156642572 ') ,
( ' M00010 ' , 1010 , ' First Class ' , ' 9365348582 ') ,
( ' M00020 ' , 1020 , ' First Class ' , ' 7160171209 ') ,
( ' M00030 ' , 1030 , ' First Class ' , ' 7821967341 ') ,
( ' M00040 ' , 1040 , ' Second Class ' , ' 7197892960 ') ,
( ' M00050 ' , 1050 , ' Third Class ' , ' 7913777720 ') ,
( ' M00060 ' , 1060 , ' Third Class ' , ' 697134333 ') ,
( ' M00070 ' , 1070 , ' First Class ' , ' 8690240708 ') ,
( ' M00080 ' , 1080 , ' Third Class ' , ' 9344225704 ') ,
( ' M00090 ' , 1090 , ' Third Class ' , ' 7527041901 ') ,
( ' M00100 ' , 1100 , ' Second Class ' , ' 7397178663 ') ,
( ' M00110 ' , 1110 , ' Second Class ' , ' 8910936450 ') ,
( ' M00120 ' , 1120 , ' Third Class ' , ' 6819043482 ') ,
( ' M00130 ' , 1130 , ' First Class ' , ' 8200047303 ') ,
( ' M00140 ' , 1140 , ' Third Class ' , ' 8740623975 ') ,
( ' M00150 ' , 1150 , ' Third Class ' , ' 7417304277 ') ,
( ' M00160 ' , 1160 , ' First Class ' , ' 8726375559 ') ,
( ' M00170 ' , 1170 , ' Third Class ' , ' 7981536706 ') ,
( ' M00180 ' , 1180 , ' Second Class ' , ' 9788612005 ') ,
( ' M00190 ' , 1190 , ' Third Class ' , ' 6197449284 ');

select * from team11_membership;

CREATE TABLE team11_vehicle(
team11_vehicle_id VARCHAR(20) PRIMARY KEY,
team11_cust_id INT NOT NULL,
team11_vehicle_registration_number VARCHAR(20) NOT NULL,
team11_vehicle_value INT,
team11_vehicle_type VARCHAR(20), 
team11_vehicle_number_of_seat INT, 
team11_vehicle_manufacturer VARCHAR(20),  
team11_vehicle_number INT NOT NULL,
FOREIGN KEY(team11_cust_id) 
REFERENCES team11_customer(team11_cust_id));
  
INSERT INTO team11_vehicle VALUES
(' V0001 ' , 1000 , ' DC59Q8650 ' , 230000 , ' 2-wheeler ' , 2 , ' KTM ' , 8650 ) ,
(' V0002 ' , 1010 , ' EF52Y4916 ' , 124000 , ' 2-wheeler ' , 2 , ' Honda ' , 4916 ) ,
(' V0003 ' , 1020 , ' SU80W6976 ' , 175000 , ' 2-wheeler ' , 2 , ' Kawasaki ' , 6976 ) ,
(' V0004 ' , 1030 , ' PZ12K8996 ' , 60000 , ' 2-wheeler ' , 2 , ' Kawasaki ' , 8996 ) ,
(' V0005 ' , 1040 , ' DI83M4038 ' , 1248000 , ' 4-wheeler ' , 5 , ' Honda ' , 4038 ) ,
(' V0006 ' , 1050 , ' VJ12K5623 ' , 171000 , ' 2-wheeler ' , 2 , ' Bajaj ' , 5623 ) ,
(' V0007 ' , 1060 , ' NS59W4482 ' , 3554000 , ' 4-wheeler ' , 5 , ' Suzuki ' , 4482 ) ,
(' V0008 ' , 1070 , ' WT46W2311 ' , 4681000 , ' 4-wheeler ' , 5 , ' Lamborgini ' , 2311 ) ,
(' V0009 ' , 1080 , ' HE51U8515 ' , 119000 , ' 2-wheeler ' , 2 , ' Honda ' , 8515 ) ,
(' V0010 ' , 1090 , ' GC70E8238 ' , 139000 , ' 2-wheeler ' , 2 , ' Honda ' , 8238 ) ,
(' V0011 ' , 1100 , ' SM61X9127 ' , 164000 , ' 2-wheeler ' , 2 , ' Bajaj ' , 9127 ) ,
(' V0012 ' , 1110 , ' ZL57K6693 ' , 2420000 , ' 4-wheeler ' , 5 , ' Honda ' , 6693 ) ,
(' V0013 ' , 1120 , ' OR93J8094 ' , 4585000 , ' 4-wheeler ' , 5 , ' Suzuki ' , 8094 ) ,
(' V0014 ' , 1130 , ' XU35E2824 ' , 2875000 , ' 4-wheeler ' , 5 , ' Hundai ' , 2824 ) ,
(' V0015 ' , 1140 , ' TR12C3173 ' , 4672000 , ' 4-wheeler ' , 5 , ' Honda ' , 3173 ) ,
(' V0016 ' , 1150 , ' AW95Z8306 ' , 2601000 , ' 4-wheeler ' , 5 , ' Hundai ' , 8306 ) ,
(' V0017 ' , 1160 , ' BF67K1361 ' , 228000 , ' 2-wheeler ' , 2 , ' KTM ' , 1361 ) ,
(' V0018 ' , 1170 , ' GS44Z2231 ' , 107000 , ' 2-wheeler ' , 2 , ' Kawasaki ' , 2231 ) ,
(' V0019 ' , 1180 , ' EP00X4470 ' , 104000 , ' 2-wheeler ' , 2 , ' KTM ' , 4470 ) ,
(' V0020 ' , 1190 , ' FY21R7123 ' , 204000 , ' 2-wheeler ' , 2 , ' Bajaj ' , 7123 ) ,
(' V0021 ' , 1060 , ' AI46S8759 ' , 177000 , ' 2-wheeler ' , 2 , ' Honda ' , 8759 ) ,
(' V0022 ' , 1190 , ' HC33Y2441 ' , 3890000 , ' 4-wheeler ' , 5 , ' Lamborgini ' , 2441 ) ,
(' V0023 ' , 1020 , ' JW45R5416 ' , 4835000 , ' 4-wheeler ' , 5 , ' Lamborgini ' , 5416 ) ,
(' V0024 ' , 1110 , ' CC29H5510 ' , 166000 , ' 2-wheeler ' , 2 , ' Kawasaki ' , 5510 ) ,
(' V0025 ' , 1010 , ' UD94K7330 ' , 56000 , ' 2-wheeler ' , 2 , ' Kawasaki ' , 7330 ) ,
(' V0026 ' , 1160 , ' YI42Q6322 ' , 1266000 , ' 4-wheeler ' , 5 , ' Suzuki ' , 6322 ) ,
(' V0027 ' , 1070 , ' WU60J4857 ' , 165000 , ' 2-wheeler ' , 2 , ' Honda ' , 4857 ) ,
(' V0028 ' , 1030 , ' IF21E2129 ' , 144000 , ' 2-wheeler ' , 2 , ' Honda ' , 2129 ) ,
(' V0029 ' , 1150 , ' UR64D3978 ' , 205000 , ' 2-wheeler ' , 2 , ' Honda ' , 3978 ) ,
(' V0030 ' , 1100 , ' NG67U8415 ' , 2938000 , ' 4-wheeler ' , 5 , ' Hundai ' , 8415 );

select * from team11_vehicle;

CREATE TABLE team11_application(
team11_application_id VARCHAR(20) PRIMARY KEY,
team11_cust_id INT NOT NULL,
team11_vehicle_id VARCHAR(20) NOT NULL, 
team11_application_status CHAR(12),
team11_coverage VARCHAR(50),
FOREIGN KEY(team11_cust_id)
REFERENCES team11_customer(team11_cust_id),
FOREIGN KEY(team11_vehicle_id)
REFERENCES team11_vehicle(team11_vehicle_id));
 
INSERT INTO team11_application VALUES
( ' A0001 ' , ' 1000 ' , ' V0001 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0002 ' , ' 1010 ' , ' V0002 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0003 ' , ' 1020 ' , ' V0003 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0004 ' , ' 1030 ' , ' V0004 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0005 ' , ' 1040 ' , ' V0005 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0006 ' , ' 1050 ' , ' V0006 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0007 ' , ' 1060 ' , ' V0007 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0008 ' , ' 1070 ' , ' V0008 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0009 ' , ' 1080 ' , ' V0009 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0010 ' , ' 1090 ' , ' V0010 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0011 ' , ' 1100 ' , ' V0011 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0012 ' , ' 1110 ' , ' V0012 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0013 ' , ' 1120 ' , ' V0013 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0014 ' , ' 1130 ' , ' V0014 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0015 ' , ' 1140 ' , ' V0015 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0016 ' , ' 1150 ' , ' V0016 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0017 ' , ' 1160 ' , ' V0017 ' , ' Rejected ' , ' Comprehensive ' ) ,
( ' A0018 ' , ' 1170 ' , ' V0018 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0019 ' , ' 1180 ' , ' V0019 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0020 ' , ' 1190 ' , ' V0020 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0021 ' , ' 1060 ' , ' V0021 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0022 ' , ' 1190 ' , ' V0022 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0023 ' , ' 1020 ' , ' V0023 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0024 ' , ' 1110 ' , ' V0024 ' , ' Approved ' , ' Comprehensive ' ) ,
( ' A0025 ' , ' 1010 ' , ' V0025 ' , ' Rejected ' , ' Third-Party ' ) ,
( ' A0026 ' , ' 1160 ' , ' V0026 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0027 ' , ' 1070 ' , ' V0027 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0028 ' , ' 1030 ' , ' V0028 ' , ' Rejected ' , ' Comprehensive ' ) ,
( ' A0029 ' , ' 1150 ' , ' V0029 ' , ' Approved ' , ' Third-Party ' ) ,
( ' A0030 ' , ' 1100 ' , ' V0030 ' , ' Approved ' , ' Comprehensive ' );

select * from team11_application;

CREATE TABLE team11_quote(
team11_quote_id VARCHAR(20) PRIMARY KEY, 
team11_application_id VARCHAR(20) NOT NULL, 
team11_cust_id INT NOT NULL, 
team11_issue_date DATE, 
team11_description VARCHAR(100),  
team11_coverage_level VARCHAR(20),
FOREIGN KEY(team11_cust_id)
REFERENCES team11_customer(team11_cust_id),
FOREIGN KEY(team11_application_id)
REFERENCES team11_application(team11_application_id) );
 
INSERT INTO team11_quote VALUES
( ' Q0000 ' , ' A0001 ' , 1000 , ' 2016-10-14 ' ,' Quatation Dated : 2016-10-14 For 2-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0001 ' , ' A0002 ' , 1010 , ' 2021-2-02 ' ,' Quatation Dated : 2021-2-02 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0002 ' , ' A0003 ' , 1020 , ' 2017-12-16 ' ,' Quatation Dated : 2017-12-16 For 2-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0003 ' , ' A0004 ' , 1030 , ' 2018-12-20 ' ,' Quatation Dated : 2018-12-20 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0004 ' , ' A0005 ' , 1040 , ' 2019-6-11 ' ,' Quatation Dated : 2019-6-11 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0005 ' , ' A0006 ' , 1050 , ' 2020-5-26 ' ,' Quatation Dated : 2020-5-26 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0006 ' , ' A0007 ' , 1060 , ' 2018-11-24 ' ,' Quatation Dated : 2018-11-24 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0007 ' , ' A0008 ' , 1070 , ' 2016-12-07 ' ,' Quatation Dated : 2016-12-07 For 4-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0008 ' , ' A0009 ' , 1080 , ' 2019-4-12 ' ,' Quatation Dated : 2019-4-12 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0009 ' , ' A0010 ' , 1090 , ' 2017-2-16 ' ,' Quatation Dated : 2017-2-16 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0010 ' , ' A0011 ' , 1100 , ' 2017-12-02 ' ,' Quatation Dated : 2017-12-02 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0011 ' , ' A0012 ' , 1110 , ' 2021-7-26 ' ,' Quatation Dated : 2021-7-26 For 4-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0012 ' , ' A0013 ' , 1120 , ' 2017-11-01 ' ,' Quatation Dated : 2017-11-01 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0013 ' , ' A0014 ' , 1130 , ' 2015-11-16 ' ,' Quatation Dated : 2015-11-16 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0014 ' , ' A0015 ' , 1140 , ' 2021-11-17 ' ,' Quatation Dated : 2021-11-17 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0015 ' , ' A0016 ' , 1150 , ' 2021-12-01 ' ,' Quatation Dated : 2021-12-01 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0016 ' , ' A0017 ' , 1160 , ' 2020-6-18 ' ,' Quatation Dated : 2020-6-18 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0017 ' , ' A0018 ' , 1170 , ' 2019-7-20 ' ,' Quatation Dated : 2019-7-20 For 2-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0018 ' , ' A0019 ' , 1180 , ' 2016-4-10 ' ,' Quatation Dated : 2016-4-10 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0019 ' , ' A0020 ' , 1190 , ' 2019-3-26 ' ,' Quatation Dated : 2019-3-26 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0020 ' , ' A0021 ' , 1060 , ' 2021-9-18 ' ,' Quatation Dated : 2021-9-18 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0021 ' , ' A0022 ' , 1190 , ' 2021-1-02 ' ,' Quatation Dated : 2021-1-02 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0022 ' , ' A0023 ' , 1020 , ' 2020-4-08 ' ,' Quatation Dated : 2020-4-08 For 4-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0023 ' , ' A0024 ' , 1110 , ' 2021-5-14 ' ,' Quatation Dated : 2021-5-14 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0024 ' , ' A0025 ' , 1010 , ' 2021-12-03 ' ,' Quatation Dated : 2021-12-03 For 2-wheeler Vehicle. ' , ' Bronze ' ) ,
( ' Q0025 ' , ' A0026 ' , 1160 , ' 2017-4-17 ' ,' Quatation Dated : 2017-4-17 For 4-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0026 ' , ' A0027 ' , 1070 , ' 2015-9-26 ' ,' Quatation Dated : 2015-9-26 For 2-wheeler Vehicle. ' , ' Silver ' ) ,
( ' Q0027 ' , ' A0028 ' , 1030 , ' 2019-10-16 ' ,' Quatation Dated : 2019-10-16 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0028 ' , ' A0029 ' , 1150 , ' 2020-11-27 ' ,' Quatation Dated : 2020-11-27 For 2-wheeler Vehicle. ' , ' Gold ' ) ,
( ' Q0029 ' , ' A0030 ' , 1100 , ' 2018-9-09 ' ,' Quatation Dated : 2018-9-09 For 4-wheeler Vehicle. ' , ' Bronze ' );

select * from team11_quote;

CREATE TABLE team11_insurance_policy(
team11_agreement_id VARCHAR(20) PRIMARY KEY, 
team11_application_id VARCHAR(20) NOT NULL, 
team11_cust_id INT NOT NULL,
team11_policy_number VARCHAR(20) NOT NULL, 
team11_start_date DATE,
team11_expiry_date DATE, 
FOREIGN KEY(team11_cust_id)
REFERENCES team11_customer(team11_cust_id),
FOREIGN KEY(team11_application_id)
REFERENCES team11_application(team11_application_id));
 
INSERT INTO team11_insurance_policy VALUES
( ' AG0001 ' , ' A0001 ' , 1000 , ' PN0001 ' , ' 2016-10-14 ' , ' 2021-10-14 ' ) ,
( ' AG0002 ' , ' A0002 ' , 1010 , ' PN0002 ' , ' 2021-2-02 ' , ' 2026-2-02 ' ) ,
( ' AG0003 ' , ' A0003 ' , 1020 , ' PN0003 ' , ' 2017-12-16 ' , ' 2022-12-16 ' ) ,
( ' AG0004 ' , ' A0004 ' , 1030 , ' PN0004 ' , ' 2018-12-20 ' , ' 2023-12-20 ' ) ,
( ' AG0005 ' , ' A0005 ' , 1040 , ' PN0005 ' , ' 2019-6-11 ' , ' 2024-6-11 ' ) ,
( ' AG0006 ' , ' A0006 ' , 1050 , ' PN0006 ' , ' 2020-5-26 ' , ' 2025-5-26 ' ) ,
( ' AG0007 ' , ' A0007 ' , 1060 , ' PN0007 ' , ' 2018-11-24 ' , ' 2023-11-24 ' ) ,
( ' AG0008 ' , ' A0008 ' , 1070 , ' PN0008 ' , ' 2016-12-07 ' , ' 2021-12-07 ' ) ,
( ' AG0009 ' , ' A0009 ' , 1080 , ' PN0009 ' , ' 2019-4-12 ' , ' 2024-4-12 ' ) ,
( ' AG0010 ' , ' A0010 ' , 1090 , ' PN0010 ' , ' 2017-2-16 ' , ' 2022-2-16 ' ) ,
( ' AG0011 ' , ' A0011 ' , 1100 , ' PN0011 ' , ' 2017-12-02 ' , ' 2022-12-02 ' ) ,
( ' AG0012 ' , ' A0012 ' , 1110 , ' PN0012 ' , ' 2021-7-26 ' , ' 2026-7-26 ' ) ,
( ' AG0013 ' , ' A0013 ' , 1120 , ' PN0013 ' , ' 2017-11-01 ' , ' 2022-11-01 ' ) ,
( ' AG0014 ' , ' A0014 ' , 1130 , ' PN0014 ' , ' 2015-11-16 ' , ' 2020-11-16 ' ) ,
( ' AG0015 ' , ' A0015 ' , 1140 , ' PN0015 ' , ' 2021-11-17 ' , ' 2026-11-17 ' ) ,
( ' AG0016 ' , ' A0016 ' , 1150 , ' PN0016 ' , ' 2021-12-01 ' , ' 2026-12-01 ' ) ,
( ' AG0017 ' , ' A0017 ' , 1160 , ' PN0017 ' , ' 2020-6-18 ' , ' 2025-6-18 ' ) ,
( ' AG0018 ' , ' A0018 ' , 1170 , ' PN0018 ' , ' 2019-7-20 ' , ' 2024-7-20 ' ) ,
( ' AG0019 ' , ' A0019 ' , 1180 , ' PN0019 ' , ' 2016-4-10 ' , ' 2021-4-10 ' ) ,
( ' AG0020 ' , ' A0020 ' , 1190 , ' PN0020 ' , ' 2019-3-26 ' , ' 2024-3-26 ' ) ,
( ' AG0021 ' , ' A0021 ' , 1060 , ' PN0021 ' , ' 2021-9-18 ' , ' 2026-9-18 ' ) ,
( ' AG0022 ' , ' A0022 ' , 1190 , ' PN0022 ' , ' 2021-1-02 ' , ' 2026-1-02 ' ) ,
( ' AG0023 ' , ' A0023 ' , 1020 , ' PN0023 ' , ' 2020-4-08 ' , ' 2025-4-08 ' ) ,
( ' AG0024 ' , ' A0024 ' , 1110 , ' PN0024 ' , ' 2021-5-14 ' , ' 2026-5-14 ' ) ,
( ' AG0025 ' , ' A0025 ' , 1010 , ' PN0025 ' , ' 2021-12-03 ' , ' 2026-12-03 ' ) ,
( ' AG0026 ' , ' A0026 ' , 1160 , ' PN0026 ' , ' 2017-4-17 ' , ' 2022-4-17 ' ) ,
( ' AG0027 ' , ' A0027 ' , 1070 , ' PN0027 ' , ' 2015-9-26 ' , ' 2020-9-26 ' ) ,
( ' AG0028 ' , ' A0028 ' , 1030 , ' PN0028 ' , ' 2019-10-16 ' , ' 2024-10-16 ' ) ,
( ' AG0029 ' , ' A0029 ' , 1150 , ' PN0029 ' , ' 2020-11-27 ' , ' 2025-11-27 ' ) ,
( ' AG0030 ' , ' A0030 ' , 1100 , ' PN0030 ' , ' 2018-9-09 ' , ' 2023-9-09 ' );

select * from team11_insurance_policy;

CREATE TABLE team11_premium_payment(
team11_premium_payment_id VARCHAR(20) PRIMARY KEY, 
team11_cust_id INT NOT NULL , 
team11_policy_number VARCHAR(20) NOT NULL,
team11_premium_payment_schedule TEXT, 
team11_premium_payment_amount INT,  
FOREIGN KEY(team11_cust_id) 
REFERENCES team11_customer(team11_cust_id));
 

INSERT INTO team11_premium_payment VALUES
( ' PP0001 ' , 1000 , ' PN0001 ' , ' 10-14 ' , 6000 ) ,
( ' PP0002 ' , 1010 , ' PN0002 ' , ' 2-02 ' , 16500 ) ,
( ' PP0003 ' , 1020 , ' PN0003 ' , ' 12-16 ' , 14000 ) ,
( ' PP0004 ' , 1030 , ' PN0004 ' , ' 12-20 ' , 10500 ) ,
( ' PP0005 ' , 1040 , ' PN0005 ' , ' 6-11 ' , 15000 ) ,
( ' PP0006 ' , 1050 , ' PN0006 ' , ' 5-26 ' , 10500 ) ,
( ' PP0007 ' , 1060 , ' PN0007 ' , ' 11-24 ' , 15500 ) ,
( ' PP0008 ' , 1070 , ' PN0008 ' , ' 12-07 ' , 10500 ) ,
( ' PP0009 ' , 1080 , ' PN0009 ' , ' 4-12 ' , 12500 ) ,
( ' PP0010 ' , 1090 , ' PN0010 ' , ' 2-16 ' , 16500 ) ,
( ' PP0011 ' , 1100 , ' PN0011 ' , ' 12-02 ' , 9000 ) ,
( ' PP0012 ' , 1110 , ' PN0012 ' , ' 7-26 ' , 12500 ) ,
( ' PP0013 ' , 1120 , ' PN0013 ' , ' 11-01 ' , 13000 ) ,
( ' PP0014 ' , 1130 , ' PN0014 ' , ' 11-16 ' , 16500 ) ,
( ' PP0015 ' , 1140 , ' PN0015 ' , ' 11-17 ' , 15500 ) ,
( ' PP0016 ' , 1150 , ' PN0016 ' , ' 12-01 ' , 12000 ) ,
( ' PP0017 ' , 1160 , ' PN0017 ' , ' 6-18 ' , 14500 ) ,
( ' PP0018 ' , 1170 , ' PN0018 ' , ' 7-20 ' , 14500 ) ,
( ' PP0019 ' , 1180 , ' PN0019 ' , ' 4-10 ' , 10500 ) ,
( ' PP0020 ' , 1190 , ' PN0020 ' , ' 3-26 ' , 14500 ) ,
( ' PP0021 ' , 1060 , ' PN0021 ' , ' 9-18 ' , 12500 ) ,
( ' PP0022 ' , 1190 , ' PN0022 ' , ' 1-02 ' , 12500 ) ,
( ' PP0023 ' , 1020 , ' PN0023 ' , ' 4-08 ' , 16000 ) ,
( ' PP0024 ' , 1110 , ' PN0024 ' , ' 5-14 ' , 10500 ) ,
( ' PP0025 ' , 1010 , ' PN0025 ' , ' 12-03 ' , 16500 ) ,
( ' PP0026 ' , 1160 , ' PN0026 ' , ' 4-17 ' , 15500 ) ,
( ' PP0027 ' , 1070 , ' PN0027 ' , ' 9-26 ' , 11500 ) ,
( ' PP0028 ' , 1030 , ' PN0028 ' , ' 10-16 ' , 13000 ) ,
( ' PP0029 ' , 1150 , ' PN0029 ' , ' 11-27 ' , 14000 ) ,
( ' PP0030 ' , 1100 , ' PN0030 ' , ' 9-09 ' , 13500 );

select * from team11_premium_payment ;

CREATE TABLE team11_receipt( 
team11_receipt_id VARCHAR(20) PRIMARY KEY, 
team11_time DATE, 
team11_cost BIGINT, 
team11_premium_payment_id VARCHAR(20) NOT NULL,
team11_cust_id INT NOT NULL, 
FOREIGN KEY(team11_premium_payment_id)
REFERENCES team11_premium_payment(team11_premium_payment_id),
FOREIGN KEY(team11_cust_id)
REFERENCES team11_customer(team11_cust_id) );
 
INSERT INTO team11_receipt VALUES
( ' R0001 ' , ' 2016-10-14 ' , 14000 , ' PP0001 ' , 1000 ) ,
( ' R0002 ' , ' 2021-2-02 ' , 16500 , ' PP0002 ' , 1010 ) ,
( ' R0003 ' , ' 2017-12-16 ' , 14000 , ' PP0003 ' , 1020 ) ,
( ' R0004 ' , ' 2018-12-20 ' , 10500 , ' PP0004 ' , 1030 ) ,
( ' R0005 ' , ' 2019-6-11 ' , 15000 , ' PP0005 ' , 1040 ) ,
( ' R0006 ' , ' 2020-5-26 ' , 10500 , ' PP0006 ' , 1050 ) ,
( ' R0007 ' , ' 2018-11-24 ' , 15500 , ' PP0007 ' , 1060 ) ,
( ' R0008 ' , ' 2016-12-07 ' , 10500 , ' PP0008 ' , 1070 ) ,
( ' R0009 ' , ' 2019-4-12 ' , 12500 , ' PP0009 ' , 1080 ) ,
( ' R0010 ' , ' 2017-2-16 ' , 16500 , ' PP0010 ' , 1090 ) ,
( ' R0011 ' , ' 2017-12-02 ' , 9000 , ' PP0011 ' , 1100 ) ,
( ' R0012 ' , ' 2021-7-26 ' , 12500 , ' PP0012 ' , 1110 ) ,
( ' R0013 ' , ' 2017-11-01 ' , 13000 , ' PP0013 ' , 1120 ) ,
( ' R0014 ' , ' 2015-11-16 ' , 16500 , ' PP0014 ' , 1130 ) ,
( ' R0015 ' , ' 2021-11-17 ' , 15500 , ' PP0015 ' , 1140 ) ,
( ' R0016 ' , ' 2021-12-01 ' , 12000 , ' PP0016 ' , 1150 ) ,
( ' R0017 ' , ' 2020-6-18 ' , 14500 , ' PP0017 ' , 1160 ) ,
( ' R0018 ' , ' 2019-7-20 ' , 14500 , ' PP0018 ' , 1170 ) ,
( ' R0019 ' , ' 2016-4-10 ' , 10500 , ' PP0019 ' , 1180 ) ,
( ' R0020 ' , ' 2019-3-26 ' , 14500 , ' PP0020 ' , 1190 ) ,
( ' R0021 ' , ' 2021-9-18 ' , 12500 , ' PP0021 ' , 1060 ) ,
( ' R0022 ' , ' 2021-1-02 ' , 12500 , ' PP0022 ' , 1190 ) ,
( ' R0023 ' , ' 2020-4-08 ' , 16000 , ' PP0023 ' , 1020 ) ,
( ' R0024 ' , ' 2021-5-14 ' , 10500 , ' PP0024 ' , 1110 ) ,
( ' R0025 ' , ' 2021-12-03 ' , 16500 , ' PP0025 ' , 1010 ) ,
( ' R0026 ' , ' 2017-4-17 ' , 15500 , ' PP0026 ' , 1160 ) ,
( ' R0027 ' , ' 2015-9-26 ' , 11500 , ' PP0027 ' , 1070 ) ,
( ' R0028 ' , ' 2019-10-16 ' , 13000 , ' PP0028 ' , 1030 ) ,
( ' R0029 ' , ' 2020-11-27 ' , 14000 , ' PP0029 ' , 1150 ) ,
( ' R0030 ' , ' 2018-9-09 ' , 13500 , ' PP0030 ' , 1100 );

select * from team11_receipt;

CREATE TABLE team11_incident (
team11_incident_id VARCHAR(20) primary key, 
team11_incident_type VARCHAR(30), 
team11_incident_date DATE);

INSERT INTO team11_incident VALUES
( ' I0001 ' , ' Theft ' , ' 2021-2-18 ' ) ,
( ' I0002 ' , ' Road Accident ' , ' 2021-2-01 ' ) ,
( ' I0003 ' , ' Deliberate Damage ' , ' 2021-6-08 ' ) ,
( ' I0004 ' , ' Deliberate Damage ' , ' 2023-9-01 ' ) ,
( ' I0005 ' , ' Road Accident ' , ' 2021-11-15 ' ) ,
( ' I0006 ' , ' Road Accident ' , ' 2023-12-03 ' ) ,
( ' I0007 ' , ' Road Accident ' , ' 2022-10-27 ' ) ,
( ' I0008 ' , ' Road Accident ' , ' 2020-8-01 ' ) ,
( ' I0009 ' , ' Theft ' , ' 2022-9-06 ' ) ,
( ' I0010 ' , ' Natural Disaster ' , ' 2023-3-24 ' ) ,
( ' I0011 ' , ' Deliberate Damage ' , ' 2023-3-20 ' ) ,
( ' I0012 ' , ' Deliberate Damage ' , ' 2022-11-15 ' ) ,
( ' I0013 ' , ' Deliberate Damage ' , ' 2021-6-11 ' ) ,
( ' I0014 ' , ' Road Accident ' , ' 2022-7-25 ' ) ,
( ' I0015 ' , ' Road Accident ' , ' 2022-7-10 ' );
INSERT INTO team11_incident VALUES
( ' I0016 ' , ' Road Accident ' , ' 2022-8-18 ' );

select * from team11_incident;

CREATE TABLE team11_claim(
team11_claim_id VARCHAR(20) PRIMARY KEY, 
team11_cust_id INT NOT NULL, 
team11_agreement_id VARCHAR(20) NOT NULL,
team11_claim_amount INT, 
team11_incident_id VARCHAR(20) NOT NULL, 
team11_damage_type VARCHAR(20),
team11_date_of_claim DATE, 
team11_calim_status CHAR(10),
FOREIGN KEY(team11_cust_id) 
REFERENCES team11_customer(team11_cust_id),
FOREIGN KEY(team11_agreement_id)
REFERENCES team11_insurance_policy(team11_agreement_id),
FOREIGN KEY(team11_incident_id)
REFERENCES team11_incident(team11_incident_id));

INSERT INTO team11_claim VALUES
( ' CL0001 ' , 1000 , ' AG0001 ' , 11200.0 , ' I0001 ' , ' Theft ' , ' 2021-2-18 ' , ' Claimed '  ) ,
( ' CL0002 ' , 1010 , ' AG0002 ' , 13200 , ' I0002 ' , ' Road Accident ' , ' 2021-2-01 ' , ' Claimed '  ) ,
( ' CL0003 ' , 1020 , ' AG0003 ' , 11760 , ' I0003 ' , ' Deliberate Damage ' , ' 2021-6-08 ' , ' Claimed '  ) ,
( ' CL0004 ' , 1030 , ' AG0004 ' , 7875 , ' I0004 ' , ' Deliberate Damage ' , ' 2023-9-01 ' , ' Claimed '  ) ,
( ' CL0005 ' , 1040 , ' AG0005 ' , 12300 , ' I0005 ' , ' Road Accident ' , ' 2021-11-15 ' , ' Claimed '  ) ,
( ' CL0006 ' , 1050 , ' AG0006 ' , 7665 , ' I0006 ' , ' Road Accident ' , ' 2023-12-03 ' , ' Claimed '  ) ,
( ' CL0007 ' , 1060 , ' AG0007 ' , 13020 , ' I0007 ' , ' Road Accident ' , ' 2022-10-27 ' , ' Claimed '  ) ,
( ' CL0008 ' , 1070 , ' AG0008 ' , 7770 , ' I0008 ' , ' Road Accident ' , ' 2020-8-01 ' , ' Claimed '  ) ,
( ' CL0009 ' , 1080 , ' AG0009 ' , 10000.0 , ' I0009 ' , ' Theft ' , ' 2022-9-06 ' , ' Claimed '  ) ,
( ' CL0010 ' , 1090 , ' AG0010 ' , 14190 , ' I0010 ' , ' Natural Disaster ' , ' 2023-3-24 ' , ' Claimed '  ) ,
( ' CL0011 ' , 1100 , ' AG0011 ' , 6840 , ' I0011 ' , ' Deliberate Damage ' , ' 2023-3-20 ' , ' Claimed '  ) ,
( ' CL0012 ' , 1110 , ' AG0012 ' , 10125 , ' I0012 ' , ' Deliberate Damage ' , ' 2022-11-15 ' , ' Claimed '  ) ,
( ' CL0013 ' , 1120 , ' AG0013 ' , 10920 , ' I0013 ' , ' Deliberate Damage ' , ' 2021-6-11 ' , ' Claimed '  ) ,
( ' CL0014 ' , 1130 , ' AG0014 ' , 14355 , ' I0014 ' , ' Road Accident ' , ' 2022-7-25 ' , ' Claimed '  ) ,
( ' CL0015 ' , 1140 , ' AG0015 ' , 12555 , ' I0015 ' , ' Road Accident ' , ' 2022-7-10 ' , ' Claimed '  );
INSERT INTO team11_claim VALUES
(' CL0016 ' , 1040 , ' AG0016 ' , 13455 , ' I0016 ' , ' Road Accident ' , ' 2022-8-18 ' , ' pending ');

select * from team11_claim;

CREATE TABLE team11_claim_sattlement(
team11_claim_sattlement_id VARCHAR(20) PRIMARY KEY, 
team11_claim_id VARCHAR(20) NOT NULL, 
team11_cust_id INT NOT NULL,
team11_vehicle_id VARCHAR(20) NOT NULL, 
team11_date_sattled DATE, 
team11_amount_paid INT, 
Team11_Coverage_Id varchar(20),
FOREIGN KEY(team11_cust_id) 
REFERENCES team11_customer(team11_cust_id),
FOREIGN KEY(team11_claim_id)
REFERENCES team11_claim(team11_claim_id),
FOREIGN KEY(team11_vehicle_id) 
REFERENCES team11_vehicle(team11_vehicle_id));

INSERT INTO team11_claim_sattlement VALUES
( ' CS0001 ' , ' CL0001 ' , 1000 , ' v0001 ' , ' 2021-2-18 ' , 11200.0 , ' COV0001 ' ) ,
( ' CS0002 ' , ' CL0002 ' , 1010 , ' v0002 ' , ' 2021-2-01 ' , 13200 , ' COV0002 ') ,
( ' CS0003 ' , ' CL0003 ' , 1020 , ' v0003 ' , ' 2021-6-08 ' , 11760 , ' COV0003 ') ,
( ' CS0004 ' , ' CL0004 ' , 1030 , ' v0004 ' , ' 2023-9-01 ' , 7875 , ' COV0004 ') ,
( ' CS0005 ' , ' CL0005 ' , 1040 , ' v0005 ' , ' 2021-11-15 ' , 12300, ' COV0005 ') ,
( ' CS0006 ' , ' CL0006 ' , 1050 , ' v0006 ' , ' 2023-12-03 ' , 7665, ' COV0006 ') ,
( ' CS0007 ' , ' CL0007 ' , 1060 , ' v0007 ' , ' 2022-10-27 ' , 13020 , ' COV0007 ') ,
( ' CS0008 ' , ' CL0008 ' , 1070 , ' v0008 ' , ' 2020-8-01 ' , 7770, ' COV0008 ') ,
( ' CS0009 ' , ' CL0009 ' , 1080 , ' v0009 ' , ' 2022-9-06 ' , 10000.0 , ' COV0009 ') ,
( ' CS0010 ' , ' CL0010 ' , 1090 , ' v0010 ' , ' 2023-3-24 ' , 14190, ' COV0010 ') ,
( ' CS0011 ' , ' CL0011 ' , 1100 , ' v0011 ' , ' 2023-3-20 ' , 6840 , ' COV0011 ') ,
( ' CS0012 ' , ' CL0012 ' , 1110 , ' v0012 ' , ' 2022-11-15 ' , 10125 , ' COV0012 ') ,
( ' CS0013 ' , ' CL0013 ' , 1120 , ' v0013 ' , ' 2021-6-11 ' , 10920 , ' COV0013 ') ,
( ' CS0014 ' , ' CL0014 ' , 1130 , ' v0014 ' , ' 2022-7-25 ' , 14355 , ' COV0014 ') ,
( ' CS0015 ' , ' CL0015 ' , 1140 , ' v0015 ' , ' 2022-7-10 ' , 12555 , ' COV0015 ');

select * from team11_claim_sattlement;

CREATE TABLE team11_insurance_company(
team11_company_name VARCHAR(50) PRIMARY KEY, 
team11_company_address TEXT, 
team11_company_contact_number BIGINT,
team11_company_fax BIGINT, 
team11_company_email VARCHAR(50), 
team11_company_website VARCHAR(30));
 
INSERT INTO team11_insurance_company VALUES
( ' Trust Auto ' , ' 0466 Lorenza Green, Apt. 691, 21306, North Leola, Washington, Ireland ' , 9141044725 , 9141044725 , ' Trust_JH928@Auto.com ' , ' www.Auto.in ' ) ,
( ' Launch Insurance ' , ' 933 Reilly Oval, Suite 929, 95117, Hudsonchester, Washington, Ireland ' , 8889284455 , 8889284455 , ' Launch_KZ865@Insurance.ac.in ' , ' www.Insurance.ac.in ' ) ,
( ' CarX Insurance ' , ' 09799 Buckridge Orchard, Apt. 473, 59563-1095, Stantonmouth, Nebraska, Ireland ' , 8486385936 , 8486385936 , ' CarX_KB155@Insurance.in ' , ' www.Insurance.in ' ) ,
( ' Scoot Car ' , ' 356 Garret Cliff, Suite 804, 28618, North Millie, Wyoming, Ireland ' , 7637452732 , 7637452732 , ' Scoot_SX750@Car.ac.in ' , ' www.Car.ac.in ' ) ,
( ' Merge Car ' , ' 3380 Streich Ranch, Apt. 123, 95101-8189, Prosaccofurt, Mississippi, Ireland ' , 7707072199 , 7707072199 , ' Merge.DO42@Car.com ' , ' www.Car.in ' );

select * from team11_insurance_company;

CREATE TABLE team11_department(
team11_department_id varchar(10) PRIMARY KEY,
team11_department_name VARCHAR(20) NOT NULL, 
team11_company_name VARCHAR(20) NOT NULL, 
team11_contact_information VARCHAR(20), 
location varchar(40),
FOREIGN KEY(team11_company_name) 
REFERENCES team11_insurance_company(team11_company_name));
 
INSERT INTO team11_department VALUES
( ' D01 ' , ' Finance ', ' Trust Auto ' , ' 1904-728317 ', ' Delhi '  ) ,
( ' D02 ' , ' Sales ', ' Trust Auto ' , ' 2252-276353 ', 'Patna ' ) ,
( ' D03 ' , ' Finance ', ' Launch Insurance ' , ' 1935-726998 ', 'Banglore ' ) ,
( ' D04 ' , ' Operations ', ' Launch Insurance ' , ' 0709-288220 ', ' Kolkata ' ) ,
( ' D05 ' , ' Sales ' ,' CarX Insurance ' , ' 2486-101994 ', ' Mumbai ' ) ,
( ' D06 ' , ' Finance ', ' CarX Insurance ' , ' 2424-723274 ', 'Chennai ' ) ,
( ' D07 ' , ' Operations ', ' Scoot Car ' , ' 2496-884980 ', ' Hydrabad ' ) ,
( ' D08 ' , ' HR ' ,' Scoot Car ' , ' 061-219313 ', ' Hubli ' ) ,
( ' D09 ' , ' Sales ', ' Merge Car ' , ' 0796-899567 ', ' Dharwad ' ) ,
( ' D10 ' , ' Technology ' ,' Merge Car ' , ' 0538-433169 ', ' Sitamarhi ' );

select * from team11_department;

CREATE TABLE team11_staff(
team11_staff_id VARCHAR(20) PRIMARY KEY, 
team11_company_name VARCHAR(20), 
team11_staff_fname VARCHAR(20) NOT NULL,
team11_staff_lname VARCHAR(20) NOT NULL, 
team11_staff_address TEXT NOT NULL, 
team11_staff_contact INT,
team11_staff_gender CHAR(2), 
team11_staff_marital_status CHAR(12), 
team11_staff_nationality CHAR(15),
team11_staff_qualification VARCHAR(20), 
team11_staff_allowance INT, 
team11_staff_pps_number INT NOT NULL,
FOREIGN KEY(team11_company_name) 
REFERENCES team11_insurance_company(team11_company_name));
 
INSERT INTO team11_staff VALUES
( ' S001 ' , ' Trust Auto ' , ' Jair ' , ' Holland ' , ' 9247 Reilly Branch, Suite 499, 64156, South Marquis, Connecticut, Ireland ' , ' 156000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MBA ' , 135000, 12814296 ) ,
( ' S002 ' , ' Launch Insurance ' , ' Jaiden ' , ' Michael ' , ' 7700 Jazmin Burg, Suite 894, 97308-0243, Raoulborough, Alaska, Ireland ' , ' 138000 ' , ' M ' , ' Married ' , ' China ' , ' MA ' , 10000, 95358491 ) ,
( ' S003 ' , ' CarX Insurance ' , ' Finley ' , ' Norton ' , ' 87512 Dibbert Brooks, Suite 855, 23478, Lake Bayleeland, Wyoming, Ireland ' , ' 153000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MA ' , 172000, 29488457 ) ,
( ' S004 ' , ' Scoot Car ' , ' Gunner ' , ' Warner ' , ' 09910 Kshlerin Corners, Apt. 594, 78253-2184, Johnstonside, Arizona, Ireland ' , ' 77000 ' , ' M ' , ' Unmarried ' , ' India ' , ' BA ' , 12000, 21443624 ) ,
( ' S005 ' , ' Merge Car ' , ' Nasir ' , ' Newman ' , ' 171 Mariana Course, Suite 175, 93903-6167, North Libbiemouth, Delaware, Ireland ' , ' 90000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MA ' , 41000, 40648483 ) ,
( ' S006 ' , ' Trust Auto ' , ' Henry ' , ' Buchanan ' , ' 1780 Damien Streets, Suite 872, 98124-7132, New Korbin, Utah, Ireland ' , ' 78000 ' , ' M ' , ' Unmarried ' , ' France ' , ' B.com ' , 59000, 11122597 ) ,
( ' S007 ' , ' Launch Insurance ' , ' Krish ' , ' Pugh ' , ' 44437 Keeling Lakes, Suite 256, 48702, Lake Myrtle, Arizona, Ireland ' , ' 93000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MBA ' , 57000, 71762747 ) ,
( ' S008 ' , ' CarX Insurance ' , ' Jace ' , ' Kemp ' , ' 694 Dibbert Parks, Apt. 768, 69387, Dooleymouth, South Dakota, Ireland ' , ' 70000 ' , ' M ' , ' Unmarried ' , ' Germany ' , ' B.com ' , 51000, 26973645 ) ,
( ' S009 ' , ' Scoot Car ' , ' Jase ' , ' Harmon ' , ' 58648 Lavonne Neck, Suite 693, 18827, South Ellsworth, Montana, Ireland ' , ' 154000 ' , ' M ' , ' Married ' , ' Australia ' , ' B.Tech ' , 48000, 80832628 ) ,
( ' S010 ' , ' Merge Car ' , ' Sage ' , ' Bryan ' , ' 02250 Mauricio Forest, Apt. 260, 98324-5828, Zemlakborough, Michigan, Ireland ' , ' 19000 ' , ' M ' , ' Married ' , ' France ' , ' MA ' , 173000, 99288240 ) ,
( ' S011 ' , ' Trust Auto ' , ' Eliezer ' , ' Guerra ' , ' 771 Jaiden Shoals, Suite 534, 52736-2027, North Fannyville, Louisiana, Ireland ' , ' 22000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MBA ' , 173000, 4693844 ) ,
( ' S012 ' , ' Launch Insurance ' , ' Lincoln ' , ' Dennis ' , ' 33250 Andres Forge, Apt. 927, 29651-5677, Lorenzoport, New Mexico, Ireland ' , ' 118000 ' , ' M ' , ' Married ' , ' China ' , ' MBA ' , 49000, 23875304 ) ,
( ' S013 ' , ' CarX Insurance ' , ' Nikolai ' , ' Stuart ' , ' 11446 Keefe Pines, Suite 640, 98584, West Olafport, Georgia, Ireland ' , ' 19000 ' , ' M ' , ' Unmarried ' , ' France ' , ' BA ' , 111000, 92996666 ) ,
( ' S014 ' , ' Scoot Car ' , ' Tristan ' , ' Moon ' , ' 57228 Welch Island, Apt. 354, 01556-3499, Collinsbury, Georgia, Ireland ' , ' 176000 ' , ' M ' , ' Married ' , ' Ireland ' , ' MA ' , 174000, 10435738 ) ,
( ' S015 ' , ' Merge Car ' , ' Andrew ' , ' Parsons ' , ' 509 Joaquin Prairie, Apt. 229, 75696, West Guidoshire, Utah, Ireland ' , ' 36000 ' , ' M ' , ' Married ' , ' France ' , ' BA ' , 161000, 73532814 );

select * from team11_staff;

CREATE TABLE team11_product(
team11_product_number VARCHAR(20) PRIMARY KEY, 
team11_company_name VARCHAR(20), 
team11_product_price INT,
team11_product_type CHAR(15), 
FOREIGN KEY(team11_company_name) 
REFERENCES team11_insurance_company(team11_company_name));

INSERT INTO team11_product VALUES
( ' PN0001 ' , ' Trust Auto ' , 10000 , ' Yearly-Basis ' ) ,
( ' PN0002 ' , ' Launch Insurance ' , 18000 , ' Yearly-Basis ' ) ,
( ' PN0003 ' , ' CarX Insurance ' , 15000 , ' Yearly-Basis ' ) ,
( ' PN0004 ' , ' Scoot Car ' , 80000 , ' Yearly-Basis ' ) ,
( ' PN0005 ' , ' Merge Car ' , 50000 , ' Yearly-Basis ' ),
( ' PN0006 ' , ' Trust Auto ' , 100020 , ' monthly-Basis ' ),
( ' PN0007 ' , ' Trust Auto ' , 11000 , ' 6-month-Basis ' );

select * from team11_product;

CREATE TABLE team11_office
(team11_office_name VARCHAR(50) PRIMARY KEY, 
team11_department_id VARCHAR(20) NOT NULL , 
team11_company_name VARCHAR(20) NOT NULL,
team11_office_leader VARCHAR(20), 
team11_contact_information VARCHAR(20), 
team11_address Text,
team11_admin_cost INT,
FOREIGN KEY(team11_department_id ) 
REFERENCES team11_department(team11_department_id),
FOREIGN KEY(team11_company_name) 
REFERENCES team11_insurance_company(team11_company_name));
 
INSERT INTO team11_office VALUES
( ' Trust Auto Head Office ' , ' D01 ' , ' Trust Auto ' , ' Jair Holland ' , ' 0136-749716 ' , ' 30264 Jade Pike, Apt. 391, 77519-1538, Isacland, Ohio, Ireland ' , 38000 ) ,
( ' Trust Auto Central Office ' , ' D02 ' , ' Trust Auto ' , ' Finley Norton ' , ' 1448-612719 ' , ' 38208 Gleason Square, Suite 337, 52313-6771, Torphymouth, Louisiana, Ireland ' , 89000 ) ,
( ' Launch Insurance Central Office ' , ' D03 ' , ' Launch Insurance ' , ' Nasir Newman ' , ' 2111-889690 ' , ' 040 Zoey Ridge, Apt. 397, 52861, Nolanborough, North Dakota, Ireland ' , 23000 ) ,
( ' Launch Insurance Main Branch ' , ' D04 ' , ' Launch Insurance ' , ' Krish Pugh ' , ' 0798-197005 ' , ' 380 Leffler Terrace, Apt. 449, 37801-7343, West Brianne, New York, Ireland ' , 88000 ) ,
( ' CarX Insurance Main Branch ' , ' D05 ' , ' CarX Insurance ' , ' Jase Harmon ' , ' 2697-837367 ' , ' 32083 Bradtke Drive, Suite 879, 82688-6050, Lawsonborough, Colorado, Ireland ' , 36000 ) ,
( ' CarX Insurance Central Office ' , ' D06 ' , ' CarX Insurance ' , ' Eliezer Guerra ' , ' 2262-281286 ' , ' 14714 Rebeca Brook, Apt. 809, 03832, Kreigerborough, New Hampshire, Ireland ' , 108000 ) ,
( ' Scoot Car Central Office ' , ' D07 ' , ' Scoot Car ' , ' Nikolai Stuart ' , ' 2606-850052 ' , ' 118 Dashawn Parkway, Apt. 489, 28193-1752, Jacobiview, Texas, Ireland ' , 199000 ) ,
( ' Scoot Car Head Office ' , ' D08 ' , ' Scoot Car ' , ' Andrew Parsons ' , ' 2977-223713 ' , ' 09698 Morar Spring, Apt. 810, 04581, West Destinifort, Nevada, Ireland ' , 164000 ) ,
( ' Merge Car Head Office ' , ' D09 ' , ' Merge Car ' , ' Brody Velazquez ' , ' 250-461220 ' , ' 819 Angie Ridge, Apt. 603, 77735, West Olaf, Massachusetts, Ireland ' , 164000 ) ,
( ' Merge Car Main Branch ' , ' D10 ' , ' Merge Car ' , ' Davis Chang ' , ' 2933-811180 ' , ' 690 Durgan Rue, Suite 149, 23674-0849, North Rodrickton, New Jersey, Ireland ' , 82000 );

select * from team11_office;

CREATE TABLE team11_coverage(
team11_coverage_id VARCHAR(20) PRIMARY KEY, 
team11_coverage_amount BIGINT, 
team11_coverage_type CHAR(10), 
team11_product_id VARCHAR(20) NOT NULL, 
team11_company_name VARCHAR(20) NOT NULL,
FOREIGN KEY(team11_company_name) 
REFERENCES team11_insurance_company(team11_company_name),
FOREIGN KEY(team11_product_id)
REFERENCES team11_product(team11_product_number));
 
INSERT INTO team11_coverage VALUES
( ' COV0001 ' , 10000 , ' Bronze  ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0002 ' , 18000 , ' Gold ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0003 ' , 15000 , ' Bronze  ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0004 ' , 80000 , ' Silver ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0005 ' , 50000 , ' Bronze  ' , ' PN0005 ' , ' Merge Car ' ) ,
( ' COV0006 ' , 10000 , ' Silver ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0007 ' , 18000 , ' Bronze  ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0008 ' , 15000 , ' Silver ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0009 ' , 80000 , ' Gold ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0010 ' , 50000 , ' Gold ' , ' PN0005 ' , ' Merge Car ' ) ,
( ' COV0011 ' , 10000 , ' Silver ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0012 ' , 18000 , ' Gold ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0013 ' , 15000 , ' Bronze  ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0014 ' , 80000 , ' Bronze  ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0015 ' , 50000 , ' Bronze  ' , ' PN0005 ' , ' Merge Car ' ) ,
( ' COV0016 ' , 10000 , ' Bronze  ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0017 ' , 18000 , ' Gold ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0018 ' , 15000 , ' Bronze  ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0019 ' , 80000 , ' Silver ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0020 ' , 50000 , ' Gold ' , ' PN0005 ' , ' Merge Car ' ) ,
( ' COV0021 ' , 10000 , ' Gold ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0022 ' , 18000 , ' Bronze  ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0023 ' , 15000 , ' Bronze  ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0024 ' , 80000 , ' Silver ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0025 ' , 50000 , ' Bronze  ' , ' PN0005 ' , ' Merge Car ' ) ,
( ' COV0026 ' , 10000 , ' Gold ' , ' PN0001 ' , ' Trust Auto ' ) ,
( ' COV0027 ' , 18000 , ' Silver ' , ' PN0002 ' , ' Launch Insurance ' ) ,
( ' COV0028 ' , 15000 , ' Gold ' , ' PN0003 ' , ' CarX Insurance ' ) ,
( ' COV0029 ' , 80000 , ' Gold ' , ' PN0004 ' , ' Scoot Car ' ) ,
( ' COV0030 ' , 50000 , ' Bronze  ' , ' PN0005 ' , ' Merge Car ' );

select * from team11_coverage;

CREATE TABLE team11_insurance_policy_coverage(
team11_agreement_id VARCHAR(20) PRIMARY KEY,
team11_coverage_id VARCHAR(20) NOT NULL,
FOREIGN KEY(team11_coverage_id) 
REFERENCES team11_coverage(team11_coverage_id),
FOREIGN KEY(team11_agreement_id) 
REFERENCES team11_insurance_policy(team11_agreement_id));

INSERT INTO team11_insurance_policy_coverage VALUES
( ' AG0001 ' , ' COV0001 ' ) ,
( ' AG0002 ' , ' COV0002 ' ) ,
( ' AG0003 ' , ' COV0003 ' ) ,
( ' AG0004 ' , ' COV0004 ' ) ,
( ' AG0005 ' , ' COV0005 ' ) ,
( ' AG0006 ' , ' COV0006 ' ) ,
( ' AG0007 ' , ' COV0007 ' ) ,
( ' AG0008 ' , ' COV0008 ' ) ,
( ' AG0009 ' , ' COV0009 ' ) ,
( ' AG0010 ' , ' COV0010 ' ) ,
( ' AG0011 ' , ' COV0011 ' ) ,
( ' AG0012 ' , ' COV0012 ' ) ,
( ' AG0013 ' , ' COV0013 ' ) ,
( ' AG0014 ' , ' COV0014 ' ) ,
( ' AG0015 ' , ' COV0015 ' ) ,
( ' AG0016 ' , ' COV0016 ' ) ,
( ' AG0017 ' , ' COV0017 ' ) ,
( ' AG0018 ' , ' COV0018 ' ) ,
( ' AG0019 ' , ' COV0019 ' ) ,
( ' AG0020 ' , ' COV0020 ' ) ,
( ' AG0021 ' , ' COV0021 ' ) ,
( ' AG0022 ' , ' COV0022 ' ) ,
( ' AG0023 ' , ' COV0023 ' ) ,
( ' AG0024 ' , ' COV0024 ' ) ,
( ' AG0025 ' , ' COV0025 ' ) ,
( ' AG0026 ' , ' COV0026 ' ) ,
( ' AG0027 ' , ' COV0027 ' ) ,
( ' AG0028 ' , ' COV0028 ' ) ,
( ' AG0029 ' , ' COV0029 ' ) ,
( ' AG0030 ' , ' COV0030 ' );

select * from team11_insurance_policy_coverage;

CREATE TABLE team11_incident_report
(team11_incident_report_id varchar(20), team11_incident_id varchar(20), team11_cust_id int,
team11_incident_inspector varchar(20), team11_incident_cost int, team11_incident_type char(20),
team11_incident_report_description varchar(20), primary key(team11_incident_report_id),
foreign key(team11_incident_id) references team11_incident(team11_incident_id),
foreign key(team11_cust_id) references team11_customer(team11_cust_id));
insert into team11_incident_report values
('RP1000', ' I0001 ', 1000, 'harry', 10000, 'theft', 'stolen by somebody');
insert into team11_incident_report values
('RP1001', ' I0002 ', 1010, 'Lokesh', 32000, 'Road accident', 'Body damage'),
('RP1002', ' I0003 ', 1020, 'Mukesh', 18000, 'Road accident', 'Vizer damage'),
('RP1003', ' I0004 ', 1030, 'Kaulak', 00000, 'Deliberate Damage', 'Its DeliberateDamage'),
('RP1004', ' I0005 ', 1040, 'Yugal', 37000, 'theft', 'stolen by somebody'),
('RP1005', ' I0006 ', 1050, 'Ruchi', 48000, 'Road accident', 'engine damage'),
('RP1006', ' I0007 ', 1060, 'Rajan', 31000, 'Road accident', 'engine less damage'),
('RP1007', ' I0008 ', 1070, 'Saurav', 00000, 'Deliberate Damage', 'Its DeliberateDamage'),
('RP1008', ' I0009 ', 1080, 'Mohit', 32000, 'theft', 'stolen by somebody'),
('RP1009', ' I0010 ', 1090, 'Sam',  23000, 'Natural disaster', 'Its Natural disaster'),
('RP1011', ' I0016 ', 1150, 'Willionsom', 00000, 'Road accident', 'Yet to verify');

select * from team11_incident_report;

/*QUERY -1-Done */
/* Retrieve Customer and Vehicle details who has been involved in an incident and claim status 
is pending – Customer, vehicle, claim status, incident */
SELECT   cust.*, v.*, ir.*, c.* FROM Team11_Customer AS cust
INNER JOIN
 Team11_Vehicle AS v
 ON cust.Team11_Cust_Id = v.Team11_Cust_Id
 INNER JOIN
 team11_incident_report AS ir
 ON ir.Team11_Cust_Id = cust.Team11_Cust_Id
 INNER JOIN
Team11_Claim AS c
ON c.Team11_Cust_Id = cust.Team11_Cust_Id
WHERE c.team11_claim_status = ' pending';

select * from team11_claim;

/*Query-2-Done*/
/*Retrieve customer details who has premium payment amount greater than the sum of all 
the customerIds in the database – premium payment, customer*/

SELECT cust.*, pp.* FROM Team11_Customer AS cust, Team11_PREMIUM_PAYMENT AS pp
WHERE pp.Team11_Cust_Id = cust.Team11_Cust_Id 
HAVING (SELECT SUM(cust.Team11_Cust_Id) FROM Team11_Customer AS cust) > (Team11_Premium_Payment_Amount);

SELECT SUM(cust.Team11_Cust_Id) FROM Team11_Customer AS cust;
select Team11_Premium_Payment_Amount from Team11_PREMIUM_PAYMENT;

/* QUERY-3-Done*/
/*Retrieve Company details whose number of products is greater than departments, where 
the departments are located in more than one location—company, product, departments, 
office*/

SELECT * FROM team11_INSURANCE_COMPANY
WHERE
        team11_Company_Name IN (SELECT 
            team11_DEPARTMENT.team11_Company_Name
        FROM 
		    team11_PRODUCT
                INNER JOIN
            team11_DEPARTMENT ON team11_DEPARTMENT.team11_Company_Name = team11_PRODUCT.team11_Company_Name
        GROUP BY team11_DEPARTMENT.team11_Company_Name
        HAVING COUNT(DISTINCT (team11_Product_Type)) > COUNT(DISTINCT (team11_Department_Name)));

select team11_company_name,team11_DEPARTMENT_name from    team11_DEPARTMENT where  team11_company_name = ' Trust Auto ';
select * from team11_product;      	

/* Query-4-Done */
/*Select Customers who have more than one Vehicle, where the premium for one of the 
Vehicles is not paid and it is involved in accident*/

SELECT * FROM Team11_CUSTOMER AS c  INNER JOIN Team11_PREMIUM_PAYMENT AS pp 
 ON c.Team11_cust_id = pp.Team11_cust_id
 INNER JOIN Team11_VEHICLE AS v
 ON c.Team11_cust_id = v.Team11_cust_id
 INNER JOIN Team11_INCIDENT_REPORT as ir
 ON c.Team11_cust_id = ir.Team11_cust_id
 GROUP BY c.team11_cust_id
 HAVING COUNT(v.team11_vehicle_id) > 1
AND pp.Team11_Premium_Payment_Schedule > curdate() ;

select curdate(); /* To current date */

/* Query -5-Done */
/*Select all vehicles which have premium more than its vehicle number.*/

SELECT v.* FROM Team11_VEHICLE AS v, Team11_Customer AS c,
Team11_PREMIUM_PAYMENT AS pp
WHERE c.Team11_Cust_Id = v.Team11_Cust_Id AND c.Team11_Cust_Id = pp.Team11_Cust_Id AND
v.Team11_Vehicle_Number < pp.Team11_Premium_Payment_amount
ORDER BY v.Team11_Vehicle_Id ASC;  
/* for cust_id = 1000 corresponding vehicle_id = V0001, it won't return any data because, for 
cust_id = 1000 'premium_payment_amount' is greater than their 'vehicle_number' */

select * from team11_vehicle;
select * from Team11_PREMIUM_PAYMENT;

/* Query-6 - Done*/
/*Retrieve Customer details whose Claim Amount is less than Coverage Amount and Claim 
Amount is greater than Sum of (CLAIM_SETTLEMENT_ID, VEHICLE_ID, CLAIM_ID, CUST_ID)*/
SELECT cust.* , c.team11_claim_amount , cov.team11_coverage_amount,cs.Team11_Claim_Id, 
cs.Team11_Coverage_Id,cs.Team11_Claim_Sattlement_Id,cs.Team11_Vehicle_Id FROM Team11_Customer AS cust,
	team11_claim_sattlement AS cs,
    Team11_Claim AS c,
    Team11_Coverage AS cov
	WHERE cust.Team11_Cust_Id = cs.Team11_Cust_Id
	AND cs.Team11_Claim_Id = c.Team11_Claim_Id
	AND cs.Team11_Coverage_Id = cov.Team11_Coverage_Id
	AND c.Team11_Claim_Amount < cov.Team11_Coverage_Amount
	AND c.Team11_Claim_Amount > (SELECT SUM(cs.Team11_Claim_Id + 
								cs.Team11_Coverage_Id +
								cs.team11_claim_sattlement_id
                                + cs.Team11_Vehicle_Id)
                                FROM Team11_Claim_Sattlement AS cs);
                                
/* we took coverage_id of the corresponding cust_id */							
select  * FROM Team11_Claim; 
select  * FROM Team11_Claim_sattlement;
select * from team11_coverage;                               
