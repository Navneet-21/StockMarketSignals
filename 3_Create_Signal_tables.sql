#--creating Tables for Buy and sell signal. Below script will create for Buy/Sell signal for all Stocks.
# -- We are using here "With" clause for creating tempraory view for creating pervious Day Average.
# ----- For Bajaj Stock (table name bajaj2)


create table bajaj2
with pervious_Day_Avg(Bajaj_Stock_Date1,Bajaj_Stock_Close_Price1,pdav20,pdav50)
AS 
(select `Date`, `close price`,
lag(`20 Day MA`) over(order by `date`) as 'pdav20',
lag(`50 Day MA`) over(order by `date`) as 'pdav50'
from assignment.bajaj1 order by 1) 
select `date`,`close price`,
case
when ((`20 Day MA`> `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signal`
from pervious_Day_Avg , bajaj1 where Bajaj_Stock_Date1 = `Date`;

update bajaj2 set `Signal` = 'N/A' LIMIT 50;

select * from bajaj2 ;



# ----- > For Eicher Stock (table name eicher2) 
use assignment;

create table eicher2
with pervious_Day_Avg(`Date1`,`Close_Price1`,pdav20,pdav50)
AS 
(select `Date`, `Close Price`,
lag(`20 Day MA`) over(order by `Date`) as 'pdav20',
lag(`50 Day MA`) over(order by `Date`) as 'pdav50'
from assignment.eicher1 order by 1) 
select `Date`,`Close Price`,
case
when ((`20 Day MA` > `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signa`
from pervious_Day_Avg , eicher1 where `Date1` = `Date`;

update eicher2 set `Signal` = 'N/A' LIMIT 50;

select * from eicher2 ;

# ---- > For Hero stock (table name Hero2) 

create table hero2
with pervious_Day_Avg(hero_Stock_Date1,hero_Stock_Close_Price1,pdav20,pdav50)
AS 
(select `Date`, `Close Price`,
lag(`20 Day MA`) over(order by `Date`) as 'pdav20',
lag(`50 Day MA`) over(order by `Date`) as 'pdav50'
from assignment.hero1 order by 1) 
select `date`,`close price`,
case
when ((`20 Day MA` > `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signa`
from pervious_Day_Avg , hero1 where hero_Stock_Date1 = `Date`;

update hero2 set `Signa` = 'N/A' LIMIT 50;

select * from hero2 ;

# ------> For Infosys Stock (table name infosys2) 
create table infosys2
with pervious_Day_Avg(infosys_Stock_Date1,infosys_Stock_Close_Price1,pdav20,pdav50)
AS 
(select `Date`, `Close Price`,
lag(`20 Day MA`) over(order by `Date`) as 'pdav20',
lag(`50 Day MA`) over(order by `Date`) as 'pdav50'
from assignment.infosys1 order by 1) 
select `date`,`close price`,
case
when ((`20 Day MA` > `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signal`
from pervious_Day_Avg , infosys1 where infosys_Stock_Date1 = `Date`;


update infosys2 set `Signal` = 'N/A' LIMIT 50;

select * from infosys2 ;


# ------> For TCS Stock (table name TCS2) 

create table tcs2
with pervious_Day_Avg(tcs_Stock_Date1,tcs_Stock_Close_Price1,pdav20,pdav50)
AS 
(select `Date`, `Close Price`,
lag(`20 Day MA`) over(order by `Date`) as 'pdav20',
lag(`50 Day MA`) over(order by `Date`) as 'pdav50'
from assignment.tcs1 order by 1) 
select `Date`,`close price`,
case
when ((`20 Day MA` > `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signal`
from pervious_Day_Avg , tcs1 where tcs_Stock_Date1 = `Date`;


update tcs2 set `Signal` = 'N/A' LIMIT 50;

select * from tcs2 ;


# ------> For TVS Stock (table name TVS2) 
create table tvs2
with pervious_Day_Avg(tvs_Stock_Date1,tvs_Stock_Close_Price1,pdav20,pdav50)
AS 
(select `Date`, `Close Price`,
lag(`20 Day MA`) over(order by `Date`) as 'pdav20',
lag(`50 Day MA`) over(order by `Date`) as 'pdav50'
from assignment.tvs1 order by 1) 
select `date`,`close price`,
case
when ((`20 Day MA` > `50 Day MA` and pdav20 < pdav50)) then 'BUY'
when ((`20 Day MA` < `50 Day MA`) and (pdav20 > pdav50)) then 'SELL'
ELSE 'HOLD'
end as `Signal`
from pervious_Day_Avg , tvs1 where tvs_Stock_Date1 = `Date`;


update tvs2 set `Signal` = 'N/A' LIMIT 50;

select * from tvs2 ;





