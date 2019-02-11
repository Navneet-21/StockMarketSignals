#--Create Database Assignment.

CREATE DATABASE /*!32312 IF NOT EXISTS*/`Assignment` /*!40100 DEFAULT CHARACTER SET latin1 */;

#-- Assign Default database.
USE `Assignment`;

#-- Create stock tables and uplaod csv file data to respective tables.
# --All csv file paste to default location where Assignment database create its default table pysically. 
###--Note--- ## --  Save all stock file at this location C:\ProgramData\MySQL\MySQL Server 8.0\Data\assignment

#-- Creation of Bajaj_Auto table and upload "Bajaj Motors.csv", Table columns name representing respective Stocks.

CREATE TABLE Bajaj_Auto(
  Bajaj_Stock_Date date ,
  Bajaj_Stock_Open_Price float(8,3) ,
  Bajaj_Stock_High_Price float(8,3) ,
  Bajaj_Stock_Low_Price float(8,3) ,
  Bajaj_Stock_Close_Price float(8,3) ,
  Bajaj_Stock_WAP float(10,3) ,
  Bajaj_Stock_No_of_Shares int(11) ,
  Bajaj_Stock_No_of_Trades int(11) ,
  Bajaj_Stock_total_turnover varchar(15) ,
  Bajaj_Stock_Deliverable_quantity varchar(10) ,
  Bajaj_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  Bajaj_Stock_Spread_High_Low varchar(10) ,
  Bajaj_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'Bajaj Auto.csv' 
INTO TABLE Bajaj_Auto 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Bajaj_Stock_Date,
Bajaj_Stock_Open_Price,
Bajaj_Stock_High_Price,
Bajaj_Stock_Low_Price,
Bajaj_Stock_Close_Price,
Bajaj_Stock_WAP,
Bajaj_Stock_No_of_Shares,
Bajaj_Stock_No_of_Trades,
Bajaj_Stock_total_turnover,
Bajaj_Stock_Deliverable_quantity,
Bajaj_Stock_Percentage_Deli_qty_to_Traded_qty,
Bajaj_Stock_Spread_High_Low,
Bajaj_Stock_spread_close_open)
SET Bajaj_Stock_Date = STR_TO_DATE(@Bajaj_Stock_Date, '%d-%M-%Y');


#--Creation of Eicher_Motors table and upload "Eicher_Motors", Table's columns name representing respective Stocks.

CREATE TABLE Eicher_Motors(
  Eicher_Stock_Date date ,
  Eicher_Stock_Open_Price float(8,3) ,
  Eicher_Stock_High_Price float(8,3) ,
  Eicher_Stock_Low_Price float(8,3) ,
  Eicher_Stock_Close_Price float(8,3) ,
  Eicher_Stock_WAP float(10,3) ,
  Eicher_Stock_No_of_Shares int(11) ,
  Eicher_Stock_No_of_Trades int(11) ,
  Eicher_Stock_total_turnover varchar(15) ,
  Eicher_Stock_Deliverable_quantity varchar(10) ,
  Eicher_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  Eicher_Stock_Spread_High_Low varchar(10) ,
  Eicher_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'Eicher Motors.csv' 
INTO TABLE Eicher_Motors 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Eicher_Stock_Date,
Eicher_Stock_Open_Price,
Eicher_Stock_High_Price,
Eicher_Stock_Low_Price,
Eicher_Stock_Close_Price,
Eicher_Stock_WAP,
Eicher_Stock_No_of_Shares,
Eicher_Stock_No_of_Trades,
Eicher_Stock_total_turnover,
Eicher_Stock_Deliverable_quantity,
Eicher_Stock_Percentage_Deli_qty_to_Traded_qty,
Eicher_Stock_Spread_High_Low,
Eicher_Stock_spread_close_open)
SET Eicher_Stock_Date = STR_TO_DATE(@Eicher_Stock_Date, '%d-%M-%Y');



#--Creation of Hero_Motocorp table and upload "Hero Motocorp.csv", Table's columns name representing respective Stocks.
CREATE TABLE Hero_Motocorp(
  Hero_Stock_Date date ,
  Hero_Stock_Open_Price float(8,3) ,
  Hero_Stock_High_Price float(8,3) ,
  Hero_Stock_Low_Price float(8,3) ,
  Hero_Stock_Close_Price float(8,3) ,
  Hero_Stock_WAP float(10,3) ,
  Hero_Stock_No_of_Shares int(11) ,
  Hero_Stock_No_of_Trades int(11) ,
  Hero_Stock_total_turnover varchar(15) ,
  Hero_Stock_Deliverable_quantity varchar(10) ,
  Hero_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  Hero_Stock_Spread_High_Low varchar(10) ,
  Hero_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'Hero Motocorp.csv' 
INTO TABLE Hero_Motocorp 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Hero_Stock_Date,
Hero_Stock_Open_Price,
Hero_Stock_High_Price,
Hero_Stock_Low_Price,
Hero_Stock_Close_Price,
Hero_Stock_WAP,
Hero_Stock_No_of_Shares,
Hero_Stock_No_of_Trades,
Hero_Stock_total_turnover,
Hero_Stock_Deliverable_quantity,
Hero_Stock_Percentage_Deli_qty_to_Traded_qty,
Hero_Stock_Spread_High_Low,
Hero_Stock_spread_close_open)
SET Hero_Stock_Date = STR_TO_DATE(@Hero_Stock_Date, '%d-%M-%Y');




#--Creation of Infosys table and upload "Infosys.csv", Table's columns name representing respective Stocks.
CREATE TABLE Infosys(
  Infosys_Stock_Date date ,
  Infosys_Stock_Open_Price float(8,3) ,
  Infosys_Stock_High_Price float(8,3) ,
  Infosys_Stock_Low_Price float(8,3) ,
  Infosys_Stock_Close_Price float(8,3) ,
  Infosys_Stock_WAP float(10,3) ,
  Infosys_Stock_No_of_Shares int(11) ,
  Infosys_Stock_No_of_Trades int(11) ,
  Infosys_Stock_total_turnover varchar(15) ,
  Infosys_Stock_Deliverable_quantity varchar(10) ,
  Infosys_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  Infosys_Stock_Spread_High_Low varchar(10) ,
  Infosys_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'Infosys.csv' 
INTO TABLE Infosys 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@Infosys_Stock_Date,
Infosys_Stock_Open_Price,
Infosys_Stock_High_Price,
Infosys_Stock_Low_Price,
Infosys_Stock_Close_Price,
Infosys_Stock_WAP,
Infosys_Stock_No_of_Shares,
Infosys_Stock_No_of_Trades,
Infosys_Stock_total_turnover,
Infosys_Stock_Deliverable_quantity,
Infosys_Stock_Percentage_Deli_qty_to_Traded_qty,
Infosys_Stock_Spread_High_Low,
Infosys_Stock_spread_close_open)
SET Infosys_Stock_Date = STR_TO_DATE(@Infosys_Stock_Date, '%d-%M-%Y');



#--Creation of TCS table and upload "TCS.csv", Table's columns name representing respective Stocks.

CREATE TABLE TCS(
  TCS_Stock_Date date ,
  TCS_Stock_Open_Price float(8,3) ,
  TCS_Stock_High_Price float(8,3) ,
  TCS_Stock_Low_Price float(8,3) ,
  TCS_Stock_Close_Price float(8,3) ,
  TCS_Stock_WAP float(10,3) ,
  TCS_Stock_No_of_Shares int(11) ,
  TCS_Stock_No_of_Trades int(11) ,
  TCS_Stock_total_turnover varchar(15) ,
  TCS_Stock_Deliverable_quantity varchar(10) ,
  TCS_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  TCS_Stock_Spread_High_Low varchar(10) ,
  TCS_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'TCS.csv' 
INTO TABLE TCS 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@TCS_Stock_Date,
TCS_Stock_Open_Price,
TCS_Stock_High_Price,
TCS_Stock_Low_Price,
TCS_Stock_Close_Price,
TCS_Stock_WAP,
TCS_Stock_No_of_Shares,
TCS_Stock_No_of_Trades,
TCS_Stock_total_turnover,
TCS_Stock_Deliverable_quantity,
TCS_Stock_Percentage_Deli_qty_to_Traded_qty,
TCS_Stock_Spread_High_Low,
TCS_Stock_spread_close_open)
SET TCS_Stock_Date = STR_TO_DATE(@TCS_Stock_Date, '%d-%M-%Y');



##--Creation of TVS_Motors table and upload "TVS Motors.csv", Table's columns name representing respective Stocks.

CREATE TABLE TVS_Motors(
  TVS_Stock_Date date ,
  TVS_Stock_Open_Price float(8,3) ,
  TVS_Stock_High_Price float(8,3) ,
  TVS_Stock_Low_Price float(8,3) ,
  TVS_Stock_Close_Price float(8,3) ,
  TVS_Stock_WAP float(10,3) ,
  TVS_Stock_No_of_Shares int(11) ,
  TVS_Stock_No_of_Trades int(11) ,
  TVS_Stock_total_turnover varchar(15) ,
  TVS_Stock_Deliverable_quantity varchar(10) ,
  TVS_Stock_Percentage_Deli_qty_to_Traded_qty varchar(10) ,
  TVS_Stock_Spread_High_Low varchar(10) ,
  TVS_Stock_spread_close_open decimal(8,3)
  );

LOAD DATA INFILE 'TVS Motors.csv' 
INTO TABLE TVS_Motors 
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@TVS_Stock_Date,
TVS_Stock_Open_Price,
TVS_Stock_High_Price,
TVS_Stock_Low_Price,
TVS_Stock_Close_Price,
TVS_Stock_WAP,
TVS_Stock_No_of_Shares,
TVS_Stock_No_of_Trades,
TVS_Stock_total_turnover,
TVS_Stock_Deliverable_quantity,
TVS_Stock_Percentage_Deli_qty_to_Traded_qty,
TVS_Stock_Spread_High_Low,
TVS_Stock_spread_close_open)
SET TVS_Stock_Date = STR_TO_DATE(@TVS_Stock_Date, '%d-%M-%Y');

################-- Finished --- All stock tables created and csv files data uploaded ##########################

