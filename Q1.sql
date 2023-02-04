alter table delivery rename travels;
show tables;
select * from travels limit 10;


alter table travels drop column delivery;
select * from travels limit 10;

alter table travels add column Driver_last_name varchar(15) not null;
select * from travels limit 10;

desc travels;
select Driver_last_name from travels; #by default its NULL value, hence not error, use rigth above command to see

alter table travels rename column Driver to Driver_first_name;
select * from travels limit 10;

# truncate command 
truncate table travels;
select * from travels limit 10;