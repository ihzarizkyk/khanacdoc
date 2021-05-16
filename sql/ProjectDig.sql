/* DATADIG */
/*
Author : Mochammad Ihza Rizky Karim
*/

/* Put your data in here and query it! */
/*
 Countries and dependent territories, 2020
 Data adapted from
 http://www.worldometers.info/world-population/population-by-country/
 Does not include rows which had "N.A." values, so some territories are missing.
 */

CREATE TABLE countries(
   name                    TEXT PRIMARY KEY,
   population              INTEGER,
   percent_one_year_change REAL,
   population_change       INTEGER,
   density_per_sq_km       INTEGER,
   area_sq_km              INTEGER,
   net_migrants            INTEGER,
   fertility_rate          REAL,
   median_age              REAL,
   percent_of_world_pop    REAL
);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('China',1439323776,0.39,5540090,153,9388211,-348399,1.70,38.00,18.47);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('India',1380004385,0.99,13586631,464,2973190,-532687,2.20,28.00,17.7);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('United States',331002651,0.59,1937734,36,9147420,954806,1.80,38.00,4.25);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Indonesia',273523615,1.07,2898047,151,1811570,-98955,2.30,30.00,3.51);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Pakistan',220892340,2.00,4327022,287,770880,-233379,3.60,23.00,2.83);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Brazil',212559417,0.72,1509890,25,8358140,21200,1.70,33.00,2.73);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Nigeria',206139589,2.58,5175990,226,910770,-60000,5.40,18.00,2.64);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Bangladesh',164689383,1.01,1643222,1265,130170,-369501,2.10,28.00,2.11);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Russia',145934462,0.04,62206,9,16376870,182456,1.80,40.00,1.87);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Mexico',128932753,1.06,1357224,66,1943950,-60000,2.10,29.00,1.65);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Channel Islands',173863,0.93,1604,915,190,1351,1.50,43.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Guam',168775,0.89,1481,313,540,-506,2.30,31.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Curaçao',164093,0.41,669,370,444,515,1.80,42.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Kiribati',119449,1.57,1843,147,810,-800,3.60,23.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Micronesia',115023,1.06,1208,164,700,-600,3.10,24.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Grenada',112523,0.46,520,331,340,-200,2.10,32.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('St. Vincent & Grenadines',110940,0.32,351,284,390,-200,1.90,33.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Aruba',106766,0.43,452,593,180,201,1.90,41.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('Tonga',105695,1.15,1201,147,720,-800,3.60,22.00,0);
INSERT INTO countries(name,population,percent_one_year_change,population_change,density_per_sq_km,area_sq_km,net_migrants,fertility_rate,median_age,percent_of_world_pop) VALUES ('U.S. Virgin Islands',104425,-0.15,-153,298,350,-451,2.00,43.00,0);

SELECT * FROM countries;
SELECT COUNT(*) FROM countries;
SELECT name FROM countries WHERE population > 5000000 OR median_age > 41;
SELECT SUM(population) FROM countries;
SELECT COUNT(*),
    CASE
        WHEN population > 1000000 THEN 'SMALL'
        WHEN population > 4500000 THEN 'MID'
        WHEN population > 10000000 THEN 'HUGE'
    END AS 'pops' FROM countries
    GROUP BY pops;
