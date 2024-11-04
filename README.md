# SQL World Layoffs Data Exploration Project
In this project we used MySQL to analyse world layoff data to derive insights about layoffs across the world.

## Tools and technologies
- **MySQL**
- **SQL**: Data exploration

## Project Objectives
- Derive insights about layoffs across the world.

## Data Sources
- [Clean World Layoff Dataset](clean_world_layoffs_dataset.csv)

## Analysis steps
- **Data Exploration**:
  - Checked the highest amount and percentage of people laid off at once
  - Checked instances where companies went bankrupt and laid off 100% of employees, sorted by most funds raised
  - Checked which companies, industries, countries, years and company stages laid off the most workers
  - Checked the period of layoffs
  - Used a CTE with SUM to make a rolling total each month of workers laid off from the beginning of the period, to the end
  - Used 2 CTEs with SUM and DENSE_RANK to check top 5 companies, industries and countries that laid off the most workers by year

## Key findings
- Amazon, Google and Meta laid off the most workers
- 2022 and 2023 saw the highest amount of laid off workers
- The United States laid off the most workers across all years from 2020-2023

## Conclusion
The technology industry in the United States is a cutthroat industry. 
