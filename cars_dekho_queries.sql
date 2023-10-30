use cars;

# Read Cars Data
select * from car_dekho;

# Total Cars: To get a count of total records
select count(*) from car_dekho;

# manager asked the employee how many cars will be available in 2023?
select name, year, count(name) as "Total Cars available in year 2023" from car_dekho where year = 2023 group by name;

#how many cars will be available in year 2020, 2021, 2022?
select year, count(*) as "Total Cars Availabel in year 2020, 2021, 2022" from car_dekho where year in (2020, 2021, 2022) group by year;

#Total cars by year
select year, count(*) from car_dekho group by year;

#how mant diesel cars available in year 2020?
select * from car_dekho;

select name, year, fuel from car_dekho where fuel = "Diesel" and year = 2020;

#Client requested a car dealer agent. how many petrol cars will be there in 2020?

select count(*) from car_dekho where fuel="petrol" and year=2020;

#the manager told the employee to give a print all fuel cars (petrol, diesel, and CNG) come by all year.
select year, count(*) from car_dekho where fuel in ("Petrol", "Diesel", "CNG") group by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars--
select year, count(*) from car_dekho group by year having count(*)>100;
select * from car_dekho;

-- the manager said to the employee all cars count details between 2015 and 2023 we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;
select * from car_dekho where year between 2015 and 2023;