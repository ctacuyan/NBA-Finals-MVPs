CREATE TABLE NBAChampions (Year INTEGER PRIMARY KEY, Team TEXT, MVP TEXT, Games INTEGER, PPG INTEGER);

INSERT INTO NBAChampions VALUES
(1992, "Chicago Bulls", "Michael Jordan",6, 35.8),
(1993, "Chicago Bulls", "Michael Jordan", 6, 41.0),
(1994, "Houston Rockets", "Hakeem Olajuwon", 7, 26.9),
(1995, "Houston Rockets", "Hakeem Olajuwon", 4, 32.8),
(1996, "Chicago Bulls", "Michael Jordan", 6, 27.3),
(1997, "Chicago Bulls", "Michael Jordan", 6, 32.3),
(1998, "Chicago Bulls", "Michael Jordan", 6, 33.5),
(1999, "San Antonio Spurs", "Tim Duncan", 5, 27.4),
(2000, "LA Lakers", "Shaquille O'Neal", 6, 38.0),
(2001, "LA Lakers", "Shaquille O'Neal", 5, 33.0),
(2002, "LA Lakers", "Shaquille O'Neal", 4, 36.3),
(2003, "San Antonio Spurs", "Tim Duncan", 6, 24.2),
(2004, "Detroit Pistons", "Chauncey Billups", 5, 21.0),
(2005, "San Antonio Spurs", "Tim Duncan", 7, 20.6),
(2006, "Miami Heat", "Dwyane Wade", 6, 34.7),
(2007, "San Antonio Spurs", "Tony Parker", 4, 24.5),
(2008, "Boston Celtics", "Paul Pierce", 6, 21.8),
(2009, "LA Lakers", "Kobe Bryant", 5, 32.4),
(2010, "LA Lakers", "Kobe Bryant", 7, 28.6),
(2011, "Dallas Mavericks", "Dirk Nowitzki", 6, 26.0),
(2012, "Miami Heat", "Lebron James", 5, 28.6),
(2013, "Miami Heat", "Lebron James", 7, 25.3),
(2014, "San Antonio Spurs", "Kawhi Leonard", 5, 17.8),
(2015, "Golden State Warriors", "Andre Iguodala", 6, 16.3),
(2016, "Cleveland Cavaliers", "Lebron James", 7, 29.7),
(2017, "Golden State Warriors", "Kevin Durant", 5, 35.2),
(2018, "Golden State Warriors", "Kevin Durant", 4, 28.8);

SELECT * FROM NBAChampions where Games >= 6 AND Year < 2000 ORDER BY Year;

SELECT * FROM NBAChampions where Games = 4;

SELECT * FROM NBAChampions where Team = "Golden State Warriors";

SELECT SUM(Games) AS "Total NBA Finals games played from 1992-2018" FROM NBAChampions;

SELECT YEAR, TEAM as "Team that won NBA Finals in 7 games", MVP FROM NBAChampions where Games = "7";

SELECT Year, MVP, MIN(PPG) as "Lowest PPG by MVP" FROM NBAChampions ;

SELECT Year, MVP, Max(PPG) as "Highest PPG by MVP" FROM NBAChampions ;

SELECT COUNT(DISTINCT MVP) AS "Individual MVPs" FROM NBAChampions;

SELECT MVP, PPG, Team FROM NBAChampions where PPG < 25.0 ORDER BY PPG ASC;

SELECT MVP, PPG, Team FROM NBAChampions where PPG > 35.0 ORDER BY PPG DESC;

SELECT TEAM, MVP, COUNT(DISTINCT MVP) as "No. of Individuals who averaged less than 20 ppg and won MVP" FROM NBAChampions where PPG < 20 GROUP BY TEAM;

SELECT COUNT(DISTINCT MVP) as "No. of Individuals who averaged more than 35 ppg and won MVP" FROM NBAChampions where PPG > 35.0;

SELECT COUNT(DISTINCT TEAM) as "Number of different teams that have won an NBA title since 1992" FROM NBAChampions;

SELECT TEAM, COUNT(TEAM) AS "Number of each NBA titles won by each team since 1992" FROM NBAChampions GROUP BY TEAM;

SELECT TEAM, ROUND(AVG(PPG),2) AS "Average PPG of team's MVP" FROM NBAChampions
GROUP BY TEAM;

UPDATE NBAChampions
SET MVP = "Greatest of all time!"
WHERE MVP="Lebron James" OR MVP="Kobe Bryant" OR MVP="Michael Jordan";

UPDATE NBAChampions
SET TEAM = "The Bay Area's Team"
WHERE TEAM="Golden State Warriors";

SELECT * FROM NBAChampions;