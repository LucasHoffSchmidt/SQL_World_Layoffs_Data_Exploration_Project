# SQL World Layoffs Data Exploration Project
In this project we used MySQL to perform exploratory data analysis on world layoff data to derive insights about layoffs across the world.

## Quick Links
- Dataset used for exploratory data analysis: [Dataset](clean_world_layoffs_dataset.csv)
- SQL code used for exploratory data analysis: [SQL Code](world_layoffs_exploratory_data_analysis_project.sql)
- Part 1 of this project, where we conducted data cleaning of the world layoffs dataset: [World Layoffs Data Cleaning](https://github.com/LucasHoffSchmidt/SQL_World_Layoffs_Data_Cleaning_Project)
- Other projects I have made: [Portfolio Website](https://lucashoffschmidt.github.io/)

## Technologies Used
- **MySQL**: Database Management System.
- **SQL**: Interacting with the database.

## Process
  - Set up the MySQL Server, using the cleaned table layoffs_staging2 as the basis for exploratory data analysis.
  - Checked instances with the highest amount and percentage of people laid off at once.
  - Checked bankruptcies that led to 100% of employees being laid off, sorted by most funds raised.
  - Aggregated total layoffs by company, industry, country, year and company stage.
  - Examined the time period of layoffs and created a monthly rolling total of workers laid off, using a CTE.
  - Used CTEs with SUM and DENSE_RANK to identify the top 5 companies, industries and countries that laid off the most workers by year. 

## Key findings
- Amazon, Google and Meta laid off the most workers in the years 2020-2023.
- 2022 and 2023 saw the highest amount of workers laid off.
- The United States consistently laid off the most workers each year.

## Conclusion
The technology sector has the highest layoffs of any industry in the world, and the country with the highest turnover is USA.  
