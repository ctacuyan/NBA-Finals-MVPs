CREATE TABLE NLMVP (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO NLMVP VALUES
("Albert Pujols", "St. Louis Cardinals", 2008),
("Albert Pujols", "St. Louis Cardinals", 2009),
("Joey Votto", "Cincinnati Reds", 2010),
("Ryan Braun", "Milwaukee Brewers", 2011),
("Buster Posey", "San Francisco Giants", 2012),
("Andrew McCutchen","Pittsburgh Pirates",2013),
("Clayton Kershaw","Los Angeles Dodgers",2014),
("Bryce Harper","Washington Nationals",2015),
("Kris Bryant","Chicago Cubs",2016),
("Giancarlo Stanton","Miami Marlins",2017),
("Christian Yelich", "Milwaukee Brewers", 2018);
SELECT * FROM NLMVP;

SELECT Name AS MultipleMVPWinner, Team, Count(Name) AS NumberOfMVPs FROM NLMVP GROUP BY NAME HAVING COUNT(Name)>1;

CREATE TABLE ALMVP (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO ALMVP VALUES
("Dustin Pedroia", "Boston Red Sox", 2008),
("Joe Mauer", "Minnesota Twins", 2009),
("Josh Hamilton", "Texas Rangers", 2010),
("Justin Verlander", "Detroit Tigers", 2011),
("Miguel Cabrera", "Detroit Tigers", 2012),
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
("Tim Lincecum", "San Francisco Giants", 2008),
("Tim Lincecum", "San Francisco Giants", 2009),
("Roy Halladay", "Philadelphia Phillies", 2010),
("Clayton Kershaw", "Los Angeles Dodgers", 2011),
("RA Dickey", "New Tork Mets", 2012),
("Clayton Kershaw","Los Angeles Dodgers",2013),
("Clayton Kershaw","Los Angeles Dodgers",2014),
("Jake Arrieta","Chicago Cubs",2015),
("Max Scherzer","Washington Nationals",2016),
("Max Scherzer","Washington Nationals",2017),
("Jacob DeGrom","New York Mets",2018);
SELECT * FROM NLCY;

SELECT Name AS MultipleCYWinner, Team, Count(Name) AS NumberOfCYs FROM NLCY GROUP BY NAME HAVING COUNT(Name)>1;

CREATE TABLE ALCY (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO ALCY VALUES
("Cliff Lee", "Cleveland Indians", 2008),
("Zack Greinke", "Kansas City Royals", 2009),
("Felix Hernandez", "Seattle Mariners", 2010),
("Justin Verlander", "Detroit Tigers", 2011),
("David Price", "Tampa Bay Rays", 2012),
("Max Scherzer","Detroit Tigers",2013),
("Corey Kluber","Cleveland Indians",2014),
("Dallas Keuchel","Houston Astros",2015),
("Rick Porcello","Boston Red Sox",2016),
("Corey Kluber","Cleveland Indians",2017),
("Blake Snell","Tampa Bay Rays",2018);
SELECT * FROM ALCY;

SELECT Name AS MultipleCYWinner, Team, Count(Name) AS NumberOfCys FROM ALCY GROUP BY NAME HAVING COUNT(Name)>1;

SELECT Name, Team, Year FROM NLMVP 
UNION
SELECT Name, Team, Year FROM ALMVP ORDER BY YEAR;

SELECT Name, Team, Year FROM NLCY 
UNION
SELECT Name, Team, Year FROM ALCY ORDER BY YEAR;


CREATE TABLE WS_MVP (Name TEXT, Team TEXT, Year INTEGER);
INSERT INTO WS_MVP VALUES
("Cole Hamels", "Philadelphia Phillies", 2008),
("Hideki Matsui", "New York Yankees", 2009),
("Edgar Renteria", "San Francisco Giants", 2010),
("David Freese", "St. Louis Cardinals", 2011),
("Pablo Sandoval", "San Francisco Giants", 2012),
("David Ortiz","Boston Red Sox",2013),
("Madison Bumgarner","San Francisco Giants",2014),
("Salvador Perez","Kansas City Royals",2015),
("Ben Zobrist","Chicago Cubs",2016),
("George Springer","Houston Astros",2017),
("Steve Pearce","Boston Red Sox",2018);
SELECT * FROM WS_MVP;

SELECT Name AS Multiple_WS_MVP_Winner, Team, Count(Name) AS NumberOfWSMVPs FROM WS_MVP GROUP BY NAME HAVING COUNT(Name)>1;

CREATE TABLE Champions (Team TEXT, Year INTEGER);
INSERT INTO Champions VALUES
("Philadelphia Phillies", 2008),
("New York Yankees", 2009),
("San Francisco Giants", 2010),
("St. Louis Cardinals", 2011),
("San Francisco Giants", 2012),
("Boston Red Sox",2013),
("San Francisco Giants",2014),
("Kansas City Royals",2015),
("Chicago Cubs",2016),
("Houston Astros",2017),
("Boston Red Sox",2018);
SELECT * FROM Champions;

SELECT TEAM AS Multiple_Champion_Teams,Count(TEAM) AS NumberOfChampionships FROM Champions GROUP BY TEAM HAVING COUNT(TEAM)>1;
