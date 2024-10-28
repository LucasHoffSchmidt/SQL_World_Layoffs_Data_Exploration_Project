SELECT *
FROM layoffs_staging2;

-- The highest amount of people laid off at once from a company as well as the highest percent of people laid off
SELECT MAX(total_laid_off), MAX(percentage_laid_off)
FROM layoffs_staging2;

-- Companies that went bankrupt with the most funds raised
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Companies that went bankrupt with the most funds raised
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY funds_raised_millions DESC;

-- Companies that laid off the most workers
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

-- Industries that laid off the most workers
SELECT industry, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry
ORDER BY 2 DESC;

-- Countries that laid off the most workers
SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

-- Years that laid off the most workers
SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 2 DESC;

-- Company stages that laid off the most workers
SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;

-- Period of layoffs
SELECT MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

-- Rolling total of workers laid off from the beginning of the period, to the end
WITH Rolling_total AS
(
SELECT SUBSTRING(`date`, 1, 7) AS `MONTH`, SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE SUBSTRING(`date`, 1, 7) IS NOT NULL
GROUP BY `MONTH`
ORDER BY 1 ASC
)
SELECT `MONTH`, total_off, 
SUM(total_off) OVER(ORDER BY `MONTH`) as rolling_total
FROM Rolling_total;

-- Shows the top 5 companies that laid off the most workers by year
WITH Company_Year (company, years, total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company, YEAR(`date`)
), Company_Year_Rank AS
(
SELECT *, DENSE_RANK() OVER(PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
FROM Company_year
WHERE years IS NOT NULL
ORDER BY Ranking ASC
)
SELECT *
FROM Company_Year_Rank
WHERE Ranking <= 5
ORDER BY years ASC;

-- Shows the top 5 industries that laid off the most workers by year
WITH Industry_Year (industry, years, total_laid_off) AS
(
SELECT industry, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY industry, YEAR(`date`)
), Industry_Year_Rank AS
(
SELECT *, DENSE_RANK() OVER(PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
FROM Industry_Year
WHERE years IS NOT NULL
ORDER BY Ranking ASC
)
SELECT *
FROM Industry_Year_Rank
WHERE Ranking <= 5
ORDER BY years ASC;

-- Shows the top 5 countries that laid off the most workers by year
WITH Country_Year (country, years, total_laid_off) AS
(
SELECT country, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country, YEAR(`date`)
), Country_Year_Rank AS
(
SELECT *, DENSE_RANK() OVER(PARTITION BY years ORDER BY total_laid_off DESC) AS Ranking
FROM Country_Year
WHERE years IS NOT NULL
ORDER BY Ranking ASC
)
SELECT *
FROM Country_Year_Rank
WHERE Ranking <= 5
ORDER BY years ASC;
