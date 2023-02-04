show databases;
use aditya;
show tables;


drop table lib_info;

select * from library_author;
Alter table library_author rename lib_info;

select * from lib_info;

Alter table lib_info modify Country Varchar(4);
Alter table lib_info modify Publish date;

select * from lib_info where Author like 'Ad%' and country='IN';
select * from lib_info where Author like '%pal' and country='IN';

select * from lib_info where pages between 200 and 300;

select * from lib_info where Country='IN' or Country='CAN';
select * from lib_info where Country in ('IN','AUS','EN');

select * from lib_info where Country='IN' order by Author;
select * from lib_info where Country='IN' order by Author desc;

select distinct(Country) from lib_info;

select country,Country_Count from lib_info group by country;
select country as Desh,count(*) as Country_Count from lib_info group by country;


select * from lib_info;
select country as Desh,count(*) as Country_Count,Pages from lib_info group by country;
select country as Desh,count(*) as Country_Count,Pages from lib_info group by country having count(Country)=2;