#-- create Master table for summary all socks closing price and date.
create table Master_StockClosePrice
select bajaj_Stock_date as "Date" , bajaj_stock_close_price as "Bajaj",tcs_stock_close_price as "TCS",tvs_stock_close_price as "TVS",
infosys_stock_close_price as "Infosys",
eicher_stock_close_price as "Eicher",hero_stock_close_price as "Hero"
from 
bajaj_auto ,
eicher_motors ,
hero_motocorp ,
infosys ,
tcs,
tvs_motors 
where bajaj_Stock_date = eicher_Stock_date 
and eicher_Stock_date = hero_Stock_date
and hero_Stock_date = infosys_Stock_date
and infosys_Stock_date = tcs_Stock_date
and tcs_Stock_date  = tvs_Stock_date
and tvs_Stock_date  = bajaj_Stock_date;