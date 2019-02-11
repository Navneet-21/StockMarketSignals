#-- Function 'get_signal' that will takes the date as input and returns the signal for that particular day (Buy/Sell/Hold) for the Bajaj stock.

delimiter $$
create function get_signal(date1 date)
returns varchar(10)
deterministic
begin
return
( select `signal` from assignment.bajaj2 where `date` = date1);
end $$

delimiter ;

select * from bajaj2;

# -- > call 'Get_signal' UDF 
select `date`,get_signal(`date`) from bajaj2;

select get_signal('2015-04-21') as "signal";