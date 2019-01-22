CREATE TABLE NLMVP (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO NLMVP VALUES
("Andrew McCutchen","Pittsburgh Pirates",2013),
("Clayton Kershaw","Los Angeles Dodgers",2014),
("Bryce Harper","Washington Nationals",2015),
("Kris Bryant","Chicago Cubs",2016),
("Giancarlo Stanton","Miami Marlins",2017),
("Christian Yelihc", "Milwaukee Brewers", 2018);
SELECT * FROM NLMVP;

CREATE TABLE ALMVP (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO ALMVP VALUES
("Miguel Cabrera","Detroit Tigers",2013),
("Mike Trout","Los Angeles Angels",2014),
("Josh Donaldson","Toronto Blue Jays",2015),
("Mike Trout","Los Angeles Angels",2016),
("Jose Altuve","Houston Astros",2017),
("Mookie Betts", "Boston Red Sox", 2018);
SELECT * FROM ALMVP;

SELECT Name AS MultipleMVPWinner, Team, Count(Name) AS NumberOfMVPs FROM ALMVP GROUP BY NAME HAVING COUNT(Name)>1;

CREATE TABLE NLCY (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO NLCY VALUES
("Clayton Kershaw","Los Angeles Dodgers",2013),
("Clayton Kershaw","Los Angeles Dodgers",2014),
("Jake Arrieta","Chicago Cubs",2015),
("Max Scherzer","Washington Nationals",2016),
("Max Scherzer","Washington Nationals",2017);
SELECT * FROM NLCY;

SELECT Name AS MultipleCYWinner, Team, Count(Name) AS NoCY FROM NLCY GROUP BY Team HAVING COUNT(Name)>1;

CREATE TABLE ALCY (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO ALCY VALUES
("Max Scherzer","Detroit Tigers",2013),
("Corey Kluber","Cleveland Indians",2014),
("Dallas Keuchel","Houston Astros",2015),
("Rick Porcello","Boston Red Sox",2016),
("Corey Kluber","Cleveland Indians",2017);
SELECT * FROM ALCY;

SELECT Name AS MultipleCYWinner, Team, Count(Name) AS NoCY FROM ALCY GROUP BY Team HAVING COUNT(Name)>1;

SELECT Name, Team, Year FROM NLMVP 
UNION
SELECT Name, Team, Year FROM ALMVP ORDER BY YEAR;

SELECT Name, Team, Year FROM NLCY 
UNION
SELECT Name, Team, Year FROM ALCY ORDER BY YEAR;
