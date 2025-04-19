# SQL World Layoffs Data Exploration Project
In this project we used MySQL to perform exploratory data analysis on world layoff data to derive insights about layoffs across the world.

## Quick Links
- Dataset used for exploratory data analysis: [Dataset](clean_world_layoffs_dataset.csv)
- SQL code used for exploratory data analysis: [SQL Code](world_layoffs_exploratory_data_analysis_project.sql)
- Other projects I have made: [Portfolio Website](https://lucashoffschmidt.github.io/)

## Tools Used
- **MySQL**: Database Management System.
- **SQL**: Interacting with the database.

## Project Objective
- Derive insights about layoffs across the world.

## Data Source
- [Clean World Layoff Dataset](clean_world_layoffs_dataset.csv)

## Process
  - Started MySQL Server.
  - Used the cleaned table layoffs_staging2 for exploratory data analysis, created in the cleaning part of this project. 
  - Checked the highest amount and percentage of people laid off at once.
  - Checked instances where companies went bankrupt and laid off 100% of employees, sorted by most funds raised.
  - Checked which companies, industries, countries, years and company stages laid off the most workers.
  - Checked the period of layoffs.
  - Used a CTE with SUM to make a rolling total each month of workers laid off from the beginning of the period, to the end.
  - Used 2 CTEs with SUM and DENSE_RANK to check top 5 companies, industries and countries that laid off the most workers by year.

## Key findings
- Amazon, Google and Meta laid off the most workers.
- 2022 and 2023 saw the highest amount of laid off workers.
- The United States laid off the most workers across all years from 2020-2023.

## Conclusion
The technology sector has the highest layoffs of any industry in the world, and the country with the highest turnover is USA.  
