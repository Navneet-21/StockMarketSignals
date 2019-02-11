#--Creating tables which containing the date, close price, 20 Day MA and 50 Day MA. (This is for all 6 stocks)
#--Tables contain below columns format. 
-- Bajaj_Stock_Date        -- > "Stock Date"
-- Bajaj_Stock_Close_Price ---> "close price"
-- 20_Day_MA               ---> "20 Day MA"
-- 50_Day_MA 			   ---> "50 Day MA"

create table bajaj1 
select Bajaj_Stock_Date as `Date` , Bajaj_Stock_Close_Price as `Close Price`,
avg(Bajaj_Stock_Close_Price) over(order by Bajaj_Stock_Date rows between 19 preceding and current row) as '20 Day MA',
avg(Bajaj_Stock_Close_Price) over(order by Bajaj_Stock_Date rows between 49 preceding and current row) as '50 Day MA'
from assignment.bajaj_auto order by 1;

create table eicher1 
select eicher_Stock_Date as `Date`, eicher_Stock_Close_Price as `Close Price`,
avg(eicher_Stock_Close_Price) over(order by eicher_Stock_Date rows between 19 preceding and current row) as `20 Day MA`,
avg(eicher_Stock_Close_Price) over(order by eicher_Stock_Date rows between 49 preceding and current row) as `50 Day MA`
from eicher_motors order by 1;

create table hero1 
select hero_Stock_Date as `Date`, hero_Stock_Close_Price as `Close Price`,
avg(hero_Stock_Close_Price) over(order by hero_Stock_Date rows between 19 preceding and current row) as `20 Day MA`,
avg(hero_Stock_Close_Price) over(order by hero_Stock_Date rows between 49 preceding and current row) as `50 Day MA`
from assignment.hero_motocorp order by 1;

create table infosys1 
select infosys_Stock_Date as `Date`, infosys_Stock_Close_Price as `Close Price`,
avg(infosys_Stock_Close_Price) over(order by infosys_Stock_Date rows between 19 preceding and current row) as `20 Day MA`,
avg(infosys_Stock_Close_Price) over(order by infosys_Stock_Date rows between 49 preceding and current row) as `50 Day MA`
from assignment.infosys order by 1;

create table tcs1 
select tcs_Stock_Date as `Date`, tcs_Stock_Close_Price as `Close Price`,
avg(tcs_Stock_Close_Price) over(order by tcs_Stock_Date rows between 19 preceding and current row) as `20 Day MA`,
avg(tcs_Stock_Close_Price) over(order by tcs_Stock_Date rows between 49 preceding and current row) as `50 Day MA`
from assignment.tcs order by 1;

create table tvs1 
select tvs_Stock_Date as `Date`, tvs_Stock_Close_Price as `Close Price`,
avg(tvs_Stock_Close_Price) over(order by tvs_Stock_Date rows between 19 preceding and current row) as `20 Day MA`,
avg(tvs_Stock_Close_Price) over(order by tvs_Stock_Date rows between 49 preceding and current row) as `50 Day MA`
from assignment.tvs_motors order by 1;




