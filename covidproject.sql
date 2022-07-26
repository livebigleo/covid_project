
select top 20 *
from covid_death
where  continent is null 
order by date desc 


-- the word deathrate 

select top 1 date,total_cases,total_deaths, (total_deaths/total_cases)*100 as Deathrate
from covid_death
where iso_code='OWID_WRL'
order by date desc


/*
each continent deathrate
*/



select location,date,total_cases,total_deaths, (total_deaths/total_cases)*100 as Deathrate
from covid_death
where continent is null  and iso_code in ('OWID_EUR','OWID_ASI','OWID_NAM','OWID_OCE','OWID_AFR','OWID_SAM') AND date ='2022-07-16 00:00:00.000'
order by Deathrate



/-- Infectrate by contry

Select Location, Population, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as Infectrate
From covid_death
Group by Location, Population
order by Infectrate desc




Select Location, Population,date, MAX(total_cases) as HighestInfectionCount,  Max((total_cases/population))*100 as PercentPopulationInfected
From covid_death
Group by Location, Population, date
order by PercentPopulationInfected desc




