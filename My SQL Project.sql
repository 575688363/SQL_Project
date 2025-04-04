create schema cars;
use cars;
-- read data --
select * from car_dekho;
-- Total cars : to get a count of total records --
select count(*) from car_ dekho;
-- The manager asked the employee How many cars will be available in 2023 --
select count(*) from car_dekho where year = 2023;
-- The manager asked the employee how many cars are available in 2020 2021 2022
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- Group BY --
select count(*) from car_dekho where year in (2020,2021,2022)group by year;
-- client asked me to print the total of all cars by year , I don't see all the details --
select year, count(*) from car_dekho group by year;
-- client asked to car dealer agent. How many diesel cars will be available in 2020?--
select count(*) from car_dekho where year=2020 and fuel ="Diesel";
-- client asked to car dealer agent. How many petrol cars will be available in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; #51
-- the manager told the employee to give the print , all the fuel cars (petrol,diesel and CNG) come by all year --
select year, count(*) from car_dekho where fuel="petrol" group by year;
select year, count(*) from car_dekho where fuel="diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;
-- Manager said there were more than 100 cars in given year, which year has more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- the manager said to the employee all cars count details between 2015 and 2023 ; we need to complete list ,--
select count(*) from car_dekho where year between 2015 and 2023 ;
-- the manager said to the employee all cars details between 2015 to 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023;

-- END--
