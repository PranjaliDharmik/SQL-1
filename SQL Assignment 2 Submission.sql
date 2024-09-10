use project_1;

select * from netflixuserbase;

select Country, avg(Monthly_Revenue) as Avg_Revenue from netflixuserbase
group by Country;

select count(distinct User_ID) as Users, Device from netflixuserbase
group by Device;

select User_ID, LMP from netflixuserbase;

select Gender, min(Age) as Min_Age from netflixuserbase
group by Gender;

select avg(Age) as Age from netflixuserbase;

select * from netflixuserbase
where Age > (select avg(Age) as Avg_Age from netflixuserbase);

select count(user_data.User_ID) as Count_User_ID, device.Device from user_data
join device
on user_data.Device_ID = device.Device_ID
where Device in ('Tablet', 'Laptop')
group by Device;

select * from user_data;

select count(user_data.User_ID) as Count_Users, country.Country from
user_data join country
on user_data.Country_ID = country.Country_ID
where Age between 30 and 40
group by Country;

select sum(user_data.`Monthly Revenue`) as Sum_Revenue, netflixuserbase.Subscription_Type 
from user_data join netflixuserbase
on user_data.Age = netflixuserbase.Age
where Subscription_Type in ('Premium', 'Standard')
group by Subscription_Type;

select * from subscription;

select sum(user_data.`Monthly Revenue`) as Total_Rev, subscription.`Subscription Type`
from user_data join subscription
on user_data.Subcription_ID = subscription.Subscription_ID
where `Subscription Type` in ('Premium', 'Standard')
group by `Subscription Type`;


