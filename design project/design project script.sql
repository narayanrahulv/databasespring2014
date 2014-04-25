--one script handling everything for design project
--people table
DROP TABLE IF EXISTS people;
CREATE TABLE people (
	PID		integer PRIMARY KEY,
	FName		varchar(100) NOT NULL,
	LName		varchar(100) NOT NULL,
	MI		varchar(1),
	Gender		varchar(1),
	Age		integer,
	ETID		integer NOT NULL,
	countryCode	varchar(3) NOT NULL,
	constraint gendercontraint CHECK (Gender = 'M' OR Gender = 'F'),
	constraint etid CHECK (ETID = 1 OR ETID = 2 OR ETID = 3 OR ETID = 4)
);

--address table
DROP TABLE IF EXISTS address;
CREATE TABLE address (
	PID		integer NOT NULL,
	Addr1		varchar(100) NOT NULL,
	Addr2		varchar(100),
	City		varchar(50) NOT NULL,
	State		varchar(2),
	Zip		varchar(10) NOT NULL,	
	countryCode	varchar(3),
	IsPrimary	boolean
);

--employee types table
DROP TABLE IF EXISTS employeeType;
CREATE TABLE employeeType (
	ETID		integer PRIMARY KEY,
	ETDescr		varchar(100) NOT NULL,
	constraint etid CHECK (ETID = 1 OR ETID = 2 OR ETID = 3 OR ETID = 4)
);

--managers table
DROP TABLE IF EXISTS managers;
CREATE TABLE managers (
	PID		integer NOT NULL,
	Experience	decimal
);

--players table
DROP TABLE IF EXISTS players;
CREATE TABLE players (
	PID		integer NOT NULL,
	positionCode	varchar(3) NOT NULL,
	Team		varchar(1) NOT NULL,
	OnLoan		boolean,
	constraint positionCode CHECK (positionCode = 'CF' OR positionCode = 'RB' OR positionCode = 'LB' or positionCode = 'CB' or positionCode = 'CDM' or positionCode = 'CAM' or positionCode = 'CM' or positionCode = 'GK'),
	constraint team CHECK (Team = 'M' OR Team = 'R' OR Team = 'Y')
);

--coaches table
DROP TABLE IF EXISTS coaches;
CREATE TABLE coaches (
	PID		integer NOT NULL,
	Experience	decimal,
	Badges		integer NOT NULL,
	IsScout		boolean
);

--doctors table
DROP TABLE IF EXISTS doctors;
CREATE TABLE doctors (
	PID		integer NOT NULL,
	specialtyCode	varchar(3) NOT NULL,
	Experience	decimal
);

--countries table
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	countryCode	varchar(3) PRIMARY KEY,
	countryName	varchar(100) NOT NULL
);

--workPermit table
DROP TABLE IF EXISTS workPermit;
CREATE TABLE workPermit (
	countryCode	varchar(3),
	ukWorkPermit	boolean
);

--financial summary table
DROP TABLE IF EXISTS financialSummary;
CREATE TABLE financialSummary (
	year		varchar(4) PRIMARY KEY,
	turnover	decimal NOT NULL,
	preTaxProfit	decimal NOT NULL,
	wages		decimal NOT NULL
);

--expenses table
DROP TABLE IF EXISTS expenses;
CREATE TABLE expenses (
	year		varchar(4) PRIMARY KEY,
	amtPaid		decimal NOT NULL,	
	loanFees	decimal,
	wages		decimal NOT NULL,
	stadium		decimal NOT NULL
);

--income table
DROP TABLE IF EXISTS income;
CREATE TABLE income (
	year		varchar(4) PRIMARY KEY,
	amtEarned	decimal NOT NULL,	
	loanReceived	decimal,
	tvRevenue	decimal,
	profit		decimal,
	sponsor		decimal
);

--sponsorships table
DROP TABLE IF EXISTS sponsorships;
CREATE TABLE sponsorships (
	year		varchar(4),
	sponsorCode	varchar(3),
	amount		decimal NOT NULL,
	type		varchar(3)
);

--sponsors table
DROP TABLE IF EXISTS sponsors;
CREATE TABLE sponsors (
	sponsorCode	varchar(3) PRIMARY KEY,
	sponsorDescr	varchar(100) NOT NULL,
	sponsorNetWorth	decimal NOT NULL
);

--sponsorType table
DROP TABLE IF EXISTS sponsorType;
CREATE TABLE sponsorType (
	type		varchar(3) PRIMARY KEY,
	typeDescr	varchar(100) NOT NULL
);

--wages table
DROP TABLE IF EXISTS wages;
CREATE TABLE wages (
	PID		integer NOT NULL,
	annualSalary	decimal NOT NULL,
	competitionCode	varchar(3),
	competitionBonus boolean,
	bonusAmount	decimal,
	year		varchar(4) NOT NULL
);

--competitions table
DROP TABLE IF EXISTS competitions;
CREATE TABLE competitions (
	competitionCode	varchar(3) PRIMARY KEY,
	competitionDescr varchar NOT NULL
);

--international competition table
DROP TABLE IF EXISTS internationalCompetitions;
CREATE TABLE internationalCompetitions (
	tournamentCode	varchar(3) NOT NULL,
	tournamentDescr	varchar(100) NOT NULL,
	countryCode	varchar(3) NOT NULL,
	year		varchar(4) NOT NULL
);

--scoutDetails table
DROP TABLE IF EXISTS scoutDetails;
CREATE TABLE scoutDetails (
	PID		integer NOT NULL,
	positionCode	varchar(3) NOT NULL,
	regionCode	varchar(3) NOT NULL,
	leagueCode	varchar(3),
	constraint positionCode CHECK (positionCode = 'CF' OR positionCode = 'RB' OR positionCode = 'LB' or positionCode = 'CB' or positionCode = 'CDM' or positionCode = 'CAM' or positionCode = 'CM')	
);

--region table
DROP TABLE IF EXISTS region;
CREATE TABLE region (
	regionCode	varchar(3) PRIMARY KEY,
	regionDescr	varchar(100) NOT NULL
);

--league table
DROP TABLE IF EXISTS leagues;
CREATE TABLE leagues (
	leagueCode	varchar(3) PRIMARY KEY,
	leagueDescr	varchar(100) NOT NULL
);

--positions table
DROP TABLE IF EXISTS positions;
CREATE TABLE positions (
	positionCode	varchar(3) PRIMARY KEY,
	positionDescr	varchar(100) NOT NULL,
	constraint positionCode CHECK (positionCode = 'CF' OR positionCode = 'RB' OR positionCode = 'LB' or positionCode = 'CB' or positionCode = 'CDM' or positionCode = 'CAM' or positionCode = 'CM' or positionCode = 'GK')	
);

--scoutingHistory table
DROP TABLE IF EXISTS scoutingHistory;
CREATE TABLE scoutingHistory (
	PID		integer NOT NULL,
	regionCode	varchar(3),
	leagueCode	varchar(3),
	yearSigned	varchar(4) NOT NULL,
	competitionCode	varchar(3),
	trophyWon	boolean,
	yearWon		varchar(4)
);

--seasonObjectives table
DROP TABLE IF EXISTS seasonObjectives;
CREATE TABLE seasonObjectives (
	year		varchar(4) NOT NULL,
	competitionCode	varchar(3) NOT NULL,
	result		varchar(20) NOT NULL
	constraint result CHECK (result = 'win' OR result = 'semi-finals' OR result = 'quarter-finals' OR result = 'round of 16')
);

--injuryDetails table
DROP TABLE IF EXISTS injuryDetails;
CREATE TABLE injuryDetails (
	PID		integer NOT NULL,
	injured		boolean,
	year		varchar(4),
	injury		varchar(100),
	recoveryDays	integer
);

--specialty table
DROP TABLE IF EXISTS specialty;
CREATE TABLE specialty (
	specialtyCode	varchar(3) PRIMARY KEY,
	specialtyDescr	varchar(100) NOT NULL
);

--signonMedicals table
DROP TABLE IF EXISTS signonMedicals;
CREATE TABLE signonMedicals (
	PID		integer NOT NULL,
	year		varchar(4) NOT NULL,
	medicalPassed	boolean NOT NULL,
	screeningNum	integer NOT NULL
);

--screenings table
DROP TABLE IF EXISTS screening;
CREATE TABLE screening (
	screeningNum	integer PRIMARY KEY,
	details		varchar(100)
);

--playerStats table
DROP TABLE IF EXISTS playerStats;
CREATE TABLE playerStats (
	PID		integer NOT NULL,
	yellowCards	integer,
	redCards	integer,
	goals		integer,
	competitionCode	varchar(3),
	year		varchar(4),
	cupTied		boolean
);

--cupTied table
DROP TABLE IF EXISTS cupTied;
CREATE TABLE cupTied (
	PID		integer NOT NULL,
	competitionCode	varchar(3) NOT NULL,
	year		varchar(4) NOT NULL,
	clubCode	varchar(3) NOT NULL
);

--clubs table
DROP TABLE IF EXISTS clubs;
CREATE TABLE clubs (
	clubCode	varchar(3) PRIMARY KEY,
	clubDescr	varchar(100) NOT NULL
);
--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
--check_primaryAddress()
DROP TRIGGER check_primaryAddress on address;
DROP FUNCTION IF EXISTS check_primaryAddress();
CREATE FUNCTION check_primaryAddress() RETURNS TRIGGER AS $check_primaryAddress$
BEGIN
	IF 
		EXISTS (SELECT Addr1
			FROM address
			WHERE PID = NEW.PID
				AND NEW.IsPrimary = true)
	THEN
		RAISE EXCEPTION 'Cannot have more than one address listed as primary for a PID';
	END IF;
	RETURN NEW;
END	
$check_primaryAddress$ LANGUAGE plpgsql;

--check_isPlayer()
DROP TRIGGER check_isPlayer on managers;
DROP TRIGGER check_isPlayer on coaches;
DROP TRIGGER check_isPlayer on doctors;
CREATE FUNCTION check_isPlayer() RETURNS TRIGGER AS $check_isPlayer$
BEGIN
	IF
		EXISTS (SELECT PID
			FROM players
			WHERE PID = NEW.PID)
	THEN
		RAISE EXCEPTION 'A player cannot assume a role other than being in the main team, reserve team, or youth team';
	END IF;
	RETURN NEW;
END
$check_isPlayer$ LANGUAGE plpgsql;

--check_isDoctor()
DROP TRIGGER check_isDoctor on players;
CREATE FUNCTION check_isDoctor() RETURNS TRIGGER AS $check_isDoctor$
BEGIN
	IF
		EXISTS (SELECT PID
			FROM doctors
			WHERE PID = NEW.PID)
	THEN
		RAISE EXCEPTION 'A doctor cannot be on the playing squad';
	END IF;
	RETURN NEW;
END
$check_isDoctor$ LANGUAGE plpgsql;

--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
--insert for people table
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(100,'Arsene','Wenger','W','M',60,1,'FRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(110,'Gary','Neville','B','M',45,1,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(120,'Steve','Bould','T','M',50,1,'ENG');

Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(130,'Mesut','Ozil','T','M',28,2,'GER');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(140,'Aaron','Ramsey','E','M',26,2,'WAL');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(150,'Yaya','Toure','X','M',25,2,'CIV');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(160,'Theo','Walcott','Y','M',25,2,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(170,'Leighton','Baines','Q','M',25,2,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(180,'Philip','Lahm','G','M',27,2,'GER');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(190,'Laurent','Koscielny','J','M',26,2,'FRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(200,'Dante','Rodriguez','J','M',26,2,'BRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(210,'Victor','Valdes','C','M',34,2,'ESP');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(220,'Samuel','Etoo','D','M',35,2,'CAM');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(230,'Robin','Persie','V','M',31,2,'NED');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(300,'Javier','Hernandez','X','M',24,2,'MEX');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(310,'Tim','Howard','U','M',34,2,'USA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(320,'Tomasz','Rosicky','C','M',28,2,'CZE');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(330,'Gareth','Barry','N','M',29,2,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(340,'Rafael','Varane','B','M',22,2,'FRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(350,'Yaya','Sanogo','H','M',20,2,'FRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(360,'Alvaro','Morata','H','M',19,2,'ESP');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(370,'Cheikh','Tiote','Z','M',30,2,'CIV');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(380,'Serge','Gnabry','H','M',20,2,'GER');

Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(240,'Tony','Adams','D','M',48,3,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(250,'Patrick','Vieira','F','M',48,3,'FRA');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(260,'Jillian','Jacobs','Q','F',42,3,'USA');

Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(270,'Eva','Carneiro','L','F',48,4,'POR');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(280,'Kate','Middleton','A','F',32,4,'ENG');
Insert into people(PID,FName,LName,MI,Gender,Age,ETID,countryCode)
Values(290,'Doctor','Phil','D','M',70,4,'USA');

--insert into address table
CREATE TRIGGER check_primaryAddress BEFORE INSERT ON address
	FOR EACH ROW EXECUTE PROCEDURE check_primaryAddress();

Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(100,'40 king road',null,'London',null,'HG3345','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(100,'rue elysees',null,'Paris',null,'100345','FRA',false);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(110,'110 charing cross road',null,'London',null,'ZQ3345','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(120,'120 charing cross road',null,'London',null,'ZQ3345','ENG',true);

Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(130,'130 canary wharf',null,'London',null,'1Q3345','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(140,'140 canary wharf',null,'London',null,'1Q3345','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(160,'160 diagon alley',null,'London',null,'CV78BN','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(170,'1790 brick lane',null,'Brixton',null,'123IOP','ENG',true);

Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(270,'12 acklam road',null,'London',null,'67G89H','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(280,'280 buckingham',null,'London',null,'56J23K','ENG',true);
Insert into address(PID,Addr1,Addr2,City,State,Zip,countryCode,IsPrimary)
Values(290,'290 rolling hills ln',null,'Nashville','TN','12345','USA',true);

--insert for employeeType table
Insert into employeeType(ETID, ETDescr)
Values(1, 'managers');
Insert into employeeType(ETID, ETDescr)
Values(2, 'players');
Insert into employeeType(ETID, ETDescr)
Values(3, 'coaches');
Insert into employeeType(ETID, ETDescr)
Values(4, 'doctors');

--insert into managers table
CREATE TRIGGER check_isPlayer BEFORE INSERT ON managers
	FOR EACH ROW EXECUTE PROCEDURE check_isPlayer();

Insert into managers(PID,Experience)
Values(100,30);	
Insert into managers(PID,Experience)
Values(110,5);	
Insert into managers(PID,Experience)
Values(120,15);	

--insert into players table
CREATE TRIGGER check_isDoctor BEFORE INSERT ON players
	FOR EACH ROW EXECUTE PROCEDURE check_isDoctor();

Insert into players(PID,positionCode,Team,OnLoan)	
Values(130,'CAM','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(140,'CM','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(150,'CDM','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(160,'CM','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(170,'LB','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(180,'RB','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(190,'CB','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(200,'CB','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(210,'GK','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(220,'CF','M',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(230,'CF','M',true);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(300,'CF','R',true);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(310,'GK','R',true);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(320,'CAM','R',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(330,'CDM','R',true);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(340,'CB','R',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(350,'CF','Y',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(360,'CF','Y',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(370,'CDM','R',false);
Insert into players(PID,positionCode,Team,OnLoan)	
Values(380,'CM','Y',false);

--insert into coaches table
Insert into coaches(PID,Experience,Badges,IsScout)
Values(240,6.5,10,true);
Insert into coaches(PID,Experience,Badges,IsScout)
Values(250,8,5,true);
Insert into coaches(PID,Experience,Badges,IsScout)
Values(260,12,0,false);

--insert into doctors table
Insert into doctors(PID,specialtyCode,Experience)
Values(270,'ORT',30);
Insert into doctors(PID,specialtyCode,Experience)
Values(280,'CAR',10);
Insert into doctors(PID,specialtyCode,Experience)
Values(290,'PSY',40);
Insert into doctors(PID,specialtyCode,Experience)
Values(270,'SPM',10);

--insert for countries table
Insert into countries(countryCode, countryName)
Values('ENG','England');
Insert into countries(countryCode, countryName)
Values('WAL','Wales');
Insert into countries(countryCode, countryName)
Values('FRA','France');
Insert into countries(countryCode, countryName)
Values('GER','Germany');
Insert into countries(countryCode, countryName)
Values('ESP','Spain');
Insert into countries(countryCode, countryName)
Values('NED','Netherlands');
Insert into countries(countryCode, countryName)
Values('BRA','Brazil');
Insert into countries(countryCode, countryName)
Values('CIV','Ivory Coast');
Insert into countries(countryCode, countryName)
Values('CAM','Cameroon');
Insert into countries(countryCode, countryName)
Values('POR','Portugal');
Insert into countries(countryCode, countryName)
Values('MEX','Mexico');
Insert into countries(countryCode, countryName)
Values('USA','United States');
Insert into countries(countryCode, countryName)
Values('CZE','Czech Republic');

--insert for workPermit table
Insert into workPermit(countryCode, ukWorkPermit)
Values('ENG',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('WAL',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('FRA',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('GER',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('ESP',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('NED',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('BRA',true);
Insert into workPermit(countryCode, ukWorkPermit)
Values('CIV',true);
Insert into workPermit(countryCode, ukWorkPermit)
Values('CAM',true);
Insert into workPermit(countryCode, ukWorkPermit)
Values('POR',false);
Insert into workPermit(countryCode, ukWorkPermit)
Values('MEX',true);
Insert into workPermit(countryCode, ukWorkPermit)
Values('USA',true);
Insert into workPermit(countryCode, ukWorkPermit)
Values('CZE',false);

--insert into financialSummary table
Insert into financialSummary(year, turnover, preTaxProfit, wages)
Values('2009', 110.231, 11.103, 44.3);
Insert into financialSummary(year, turnover, preTaxProfit, wages)
Values('2010', 65.408, 2.052, 30.3);
Insert into financialSummary(year, turnover, preTaxProfit, wages)
Values('2011', 76.522, 6.675, 51.6);
Insert into financialSummary(year, turnover, preTaxProfit, wages)
Values('2012', 83.043, -5.998, 41.8);
Insert into financialSummary(year, turnover, preTaxProfit, wages)
Values('2013', 77.174, -6.782, 47.0);

--insert into expenses table
Insert into expenses(year, amtPaid, loanFees, wages, stadium)
Values('2009',100.00,20.00,30.00,50.00);
Insert into expenses(year, amtPaid, loanFees, wages, stadium)
Values('2010',200.00,200.00,400.00,600.00);
Insert into expenses(year, amtPaid, loanFees, wages, stadium)
Values('2011',350.22,116.74,116.74,116.74);
Insert into expenses(year, amtPaid, loanFees, wages, stadium)
Values('2012',500.00,170.00,165.00,165.00);
Insert into expenses(year, amtPaid, loanFees, wages, stadium)
Values('2013',600.00,100.00,400.00,100.00);

--insert into income table
Insert into income(year, amtEarned, loanReceived, tvRevenue, profit, sponsor)
Values('2009',450.00,0.00,250.00,11.00,189.00);
Insert into income(year, amtEarned, loanReceived, tvRevenue, profit, sponsor)
Values('2010',250.00,10.00,120.00,65.00,55.00);
Insert into income(year, amtEarned, loanReceived, tvRevenue, profit, sponsor)
Values('2011',650.00,30.00,220.00,200.00,200.00);
Insert into income(year, amtEarned, loanReceived, tvRevenue, profit, sponsor)
Values('2012',300.00,0.00,100.00,150.00,50.00);
Insert into income(year, amtEarned, loanReceived, tvRevenue, profit, sponsor)
Values('2013',50.00,0.00,10.00,30.00,10.00);

--insert into sponsorships table
Insert into sponsorships(year, sponsorCode, amount, type)
Values('2009','NBC',400.00,'TV');
Insert into sponsorships(year, sponsorCode, amount, type)
Values('2010','EMR',20.00,'U');
Insert into sponsorships(year, sponsorCode, amount, type)
Values('2011','EMR',700.00,'ST');
Insert into sponsorships(year, sponsorCode, amount, type)
Values('2012','AEG',10.00,'U');
Insert into sponsorships(year, sponsorCode, amount, type)
Values('2011','EMR',910.00,'ST');

--insert into sponsors table
Insert into sponsors(sponsorCode, sponsorDescr, sponsorNetWorth)
Values('NBC', 'National Broadcasting Service', 890.00);
Insert into sponsors(sponsorCode, sponsorDescr, sponsorNetWorth)
Values('EMR', 'Emirates Airlines', 1300.00);
Insert into sponsors(sponsorCode, sponsorDescr, sponsorNetWorth)
Values('AEG', 'AEG Group', 130.00);

--insert into sponsorType table
Insert into sponsorType(type,typeDescr)
Values('TV','tv broadcast and advertizing');
Insert into sponsorType(type,typeDescr)
Values('U','uniform based advertizing');
Insert into sponsorType(type,typeDescr)
Values('ST','stadium naming rights and billboards');

--insert into wages table
Insert into wages(PID, annualSalary, competitionCode, competitionBonus, bonusAmount, year)
Values(100, 4500000.00, 'BPL', true, 30245.45, '2014');
Insert into wages(PID, annualSalary, competitionCode, competitionBonus, bonusAmount, year)
Values(110, 60000.00, 'BPL', true, 10245.45, '2014');
Insert into wages(PID, annualSalary, competitionCode, competitionBonus, bonusAmount, year)
Values(180, 260000.00, 'CL', true, 20245.45, '2014');
Insert into wages(PID, annualSalary, competitionCode, competitionBonus, bonusAmount, year)
Values(340, 160000.00, 'CL', true, 5245.45, '2014');

--insert into competitions table
Insert into competitions(competitionCode,competitionDescr)
Values('CL','UEFA champions league');
Insert into competitions(competitionCode,competitionDescr)
Values('BPL','english premier league');
Insert into competitions(competitionCode,competitionDescr)
Values('FA','english FA cup');
Insert into competitions(competitionCode,competitionDescr)
Values('ELC','english league cup');
Insert into competitions(competitionCode,competitionDescr)
Values('ECC','english community shield');

--insert into internationalCompetitions table
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','ENG','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','FRA','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','GER','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','ESP','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','NED','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','CIV','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','CAM','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','POR','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','MEX','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('WC','FIFA world cup','USA','2014');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('ANC','African championships','CIV','2015');
Insert into internationalCompetitions(tournamentCode,tournamentDescr,countryCode,year)
Values('ANC','African championships','CAM','2015');

--insert into scoutDetails table
Insert into scoutDetails(PID,positionCode,regionCode,leagueCode)
Values(110,'RB','AS',null);
Insert into scoutDetails(PID,positionCode,regionCode,leagueCode)
Values(120,'CF','EUR','DFB');
Insert into scoutDetails(PID,positionCode,regionCode,leagueCode)
Values(250,'CDM','AFR',null);
Insert into scoutDetails(PID,positionCode,regionCode,leagueCode)
Values(240,'CB','EUR','LU');

--insert into region table
Insert into region(regionCode,regionDescr)
Values('AFR','Africa');
Insert into region(regionCode,regionDescr)
Values('NAM','North America');
Insert into region(regionCode,regionDescr)
Values('SAM','South America');
Insert into region(regionCode,regionDescr)
Values('AS','Asia');
Insert into region(regionCode,regionDescr)
Values('EUR','Europe');
Insert into region(regionCode,regionDescr)
Values('OCN','Oceania');
Insert into region(regionCode,regionDescr)
Values('NAC','Central America');

--insert into leagues table
Insert into leagues(leagueCode,leagueDescr)
Values('EPL','english premiere league');
Insert into leagues(leagueCode,leagueDescr)
Values('LVB','spanish la liga');
Insert into leagues(leagueCode,leagueDescr)
Values('SA','italian serie A');
Insert into leagues(leagueCode,leagueDescr)
Values('LU','french ligue un');
Insert into leagues(leagueCode,leagueDescr)
Values('DFB','german bundesliga');

--insert into positions table
Insert into positions(positionCode,positionDescr)
Values('CF','central forward');
Insert into positions(positionCode,positionDescr)
Values('RB','right full back');
Insert into positions(positionCode,positionDescr)
Values('LB','left full back');
Insert into positions(positionCode,positionDescr)
Values('CB','center back');
Insert into positions(positionCode,positionDescr)
Values('CDM','defensive midfielder');
Insert into positions(positionCode,positionDescr)
Values('CAM','attacking midfielder');
Insert into positions(positionCode,positionDescr)
Values('CM','central midfielder');
Insert into positions(positionCode,positionDescr)
Values('GK','goalkeeper');

--insert into scoutingHistory table
Insert into scoutingHistory(PID, regionCode, leagueCode, yearSigned, competitionCode, trophyWon, yearWon)
Values(350,'EUR','LU','2013','FA',true,'2014');
Insert into scoutingHistory(PID, regionCode, leagueCode, yearSigned, competitionCode, trophyWon, yearWon)
Values(360,'EUR','LVB','2013',null,null,'2014');
Insert into scoutingHistory(PID, regionCode, leagueCode, yearSigned, competitionCode, trophyWon, yearWon)
Values(380,'EUR','DFB','2013',null,null,'2014');

--insert into seasonObjectives table
Insert into seasonObjectives(year, competitionCode, result)
Values('2014','CL','semi-finals');
Insert into seasonObjectives(year, competitionCode, result)
Values('2014','BPL','quarter-finals');
Insert into seasonObjectives(year, competitionCode, result)
Values('2014','FA','win');

--insert into injuryDetails table
Insert into injuryDetails(PID, injured, year, injury, recoveryDays)
Values(220, true, '2014', 'meta-tarsal injury', 4);
Insert into injuryDetails(PID, injured, year, injury, recoveryDays)
Values(320, true, '2014', 'laziness', 2);
Insert into injuryDetails(PID, injured, year, injury, recoveryDays)
Values(230, true, '2014', 'shoulder', 8);

--insert into specialty table
Insert into specialty (specialtyCode,specialtyDescr)
Values('ORT','orthopedics');
Insert into specialty (specialtyCode,specialtyDescr)
Values('CAR','cardiology');
Insert into specialty (specialtyCode,specialtyDescr)
Values('PSY','psychology');
Insert into specialty (specialtyCode,specialtyDescr)
Values('SPM','sports medicine');

--insert into signonMedicals table
Insert into signonMedicals(PID, year, medicalPassed, screeningNum)
Values(170, '2010', true, 45);
Insert into signonMedicals(PID, year, medicalPassed, screeningNum)
Values(370, '2012', true, 60);
Insert into signonMedicals(PID, year, medicalPassed, screeningNum)
Values(150, '2012', true, 65);

--insert into screening table
Insert into screening(screeningNum, details)
Values(45, 'heart and blood pressure');
Insert into screening(screeningNum, details)
Values(60, 'bone density check');
Insert into screening(screeningNum, details)
Values(65, 'rotator cuff check');

--insert into playerStats table
Insert into playerStats(PID, yellowCards, redCards, goals, competitionCode, year, cupTied)
Values(190,4,0,1,'BPL','2014',false);
Insert into playerStats(PID, yellowCards, redCards, goals, competitionCode, year, cupTied)
Values(300,0,1,10,'BPL','2014',false);
Insert into playerStats(PID, yellowCards, redCards, goals, competitionCode, year, cupTied)
Values(300,0,2,10,'CL','2014',false);
Insert into playerStats(PID, yellowCards, redCards, goals, competitionCode, year, cupTied)
Values(140,2,0,30,'BPL','2014',false);
Insert into playerStats(PID, yellowCards, redCards, goals, competitionCode, year, cupTied)
Values(140,0,0,10,'CL','2014',false);

--insert into cupTied table
Insert into cupTied(PID, competitionCode, year, clubCode)
Values(330, 'CL', '2014', 'FCS');
Insert into cupTied(PID, competitionCode, year, clubCode)
Values(230, 'CL', '2014', 'BAR');
Insert into cupTied(PID, competitionCode, year, clubCode)
Values(300, 'FA', '2014', 'CFC');
Insert into cupTied(PID, competitionCode, year, clubCode)
Values(310, 'FA', '2014', 'BVB');
Insert into cupTied(PID, competitionCode, year, clubCode)
Values(350, 'CL', '2014', 'MCF');

--insert into clubs table
Insert into clubs(clubCode,clubDescr)
Values('BVB','borussia dortmund');
Insert into clubs(clubCode,clubDescr)
Values('FCB','bayern munich');
Insert into clubs(clubCode,clubDescr)
Values('FCS','FC schalke');
Insert into clubs(clubCode,clubDescr)
Values('MCF','real madrid');
Insert into clubs(clubCode,clubDescr)
Values('TIC','atletico madrid');
Insert into clubs(clubCode,clubDescr)
Values('BAR','barcelona');
Insert into clubs(clubCode,clubDescr)
Values('CFC','chelsea football club');
Insert into clubs(clubCode,clubDescr)
Values('GUN','arsenal football club');
Insert into clubs(clubCode,clubDescr)
Values('LIV','liverpool football club');
--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
--PlayersByPosition
CREATE VIEW PlayersByPosition AS
	SELECT p.fname,
		p.lname,
		p.mi,
		p.age,
		pos.positiondescr
	FROM players pl
	INNER JOIN people p on
		pl.pid = p.pid
	INNER JOIN positions pos on
		pl.positioncode = pos.positioncode

--PlayersByCountry
CREATE VIEW PlayersByCountry AS
	SELECT p.fname,
		p.lname,
		p.mi,
		p.age,
		p.countrycode,
		c.countryName
	FROM players pl
	INNER JOIN people p on
		pl.pid = p.pid
	INNER JOIN countries c on
		p.countryCode = c.countryCode

--PlayersByInjury
CREATE VIEW PlayersByInjury AS
	SELECT p.fname,
		p.lname,
		p.mi,
		p.age,
		pl.positioncode,
		i.injury,
		i.recoveryDays
	FROM players pl
	INNER JOIN people p on
		pl.pid = p.pid
	INNER JOIN injuryDetails i on
		pl.pid = i.pid
	WHERE i.injured = true	

--SponsorDetails
CREATE VIEW SponsorDetails AS
	SELECT s.sponsordescr,
		s.sponsornetworth,
		sp.year,
		sp.amount,
		sp.type
	FROM sponsors s
	INNER JOIN sponsorships sp on
		s.sponsorcode = sp.sponsorcode

--WageDetails
CREATE VIEW WageDetails AS
	SELECT p.fname,
		p.mi,
		p.lname,
		p.etid,
		w.annualsalary,
		c.competitiondescr,
		w.competitionbonus,
		w.bonusamount,
		w.year
	FROM wages w
	INNER JOIN people p on
		w.pid = p.pid
	INNER JOIN competitions c on
		w.competitionCode = c.competitionCode

--PlayersInInternationalTournaments
CREATE VIEW PlayersInInternationalTournaments AS
	SELECT p.fname,
		p.mi,
		p.lname,
		ic.tournamentdescr,
		ic.year
	FROM people p
	INNER JOIN players pl on
		p.pid = pl.pid
	INNER JOIN internationalcompetitions ic on
		p.countryCode = ic.countryCode

--EmployeeDetails
CREATE VIEW EmployeeDetails AS
	SELECT p.fname,
		p.mi,
		p.lname,
		et.etdescr
	FROM people p
	INNER JOIN employeeType et on
		p.etid = et.etid
--&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
--GetInjuryDetails function
create or replace function GetInjuryDetails(REFCURSOR) returns refcursor as
$$
declare
	injurydetails	REFCURSOR	:= $1;
begin
	open injurydetails for
		select fname,
			lname,
			mi,
			injury,
			recoverydays
		from PlayersByInjury;	
	return injurydetails;
end;
$$
language plpgsql;		

--GetWorkPermitDetails function
create or replace function GetWorkPermitDetails(boolean, REFCURSOR) returns refcursor as 		
$$
declare
	permitneeded		boolean		:= $1;
	workpermitdetails 	REFCURSOR	:= $2;
begin
	open workpermitdetails for
		select pbc.fname,
			pbc.lname,
			pbc.mi,
			pbc.age,
			pbc.countryname
		from PlayersByCountry pbc
		inner join workpermit w on
			pbc.countrycode = w.countrycode
		where w.ukworkpermit = permitneeded;
	return workpermitdetails;
end;
$$
language plpgsql;	

--GetTournamentParticipation function
create or replace function GetTournamentParticipation(varchar(4), REFCURSOR) returns refcursor as
$$
declare
	tournamentyear		varchar(4)	:= $1;
	tournamentdetails	REFCURSOR	:= $2;
begin
	open tournamentdetails for
		select pit.fname,
			pit.lname,
			pit.tournamentdescr
		from PlayersInInternationalTournaments pit
		where pit.year = tournamentyear;
	return tournamentdetails;
end;
$$
language plpgsql;			

--GetSponsorDetails function
create or replace function GetSponsorDetails(varchar(4), REFCURSOR) returns refcursor as
$$
declare
	sponsoryear		varchar(4)	:= $1;
	sponsordetails		REFCURSOR	:= $2;
begin
	open sponsordetails for
		select sd.sponsordescr,
			sd.year,
			sd.amount,
			st.typedescr
		from SponsorDetails sd
		inner join sponsorType st on
			sd.type = st.type
		where sd.year = sponsoryear;
	return sponsordetails;
end;	
$$
language plpgsql;

--GetInjuryDetailsByPos function
create or replace function GetInjuryDetailsByPos(varchar(3),REFCURSOR) returns refcursor as
$$
declare
	injurypos		varchar(4)	:= $1;
	injurydetails		REFCURSOR	:= $2;
begin
	open injurydetails for
		select fname,
			lname,
			mi,
			injury,
			recoverydays
		from PlayersByInjury
		where positioncode = injurypos;	
	return injurydetails;
end;
$$
language plpgsql;		

--employees by type	
create or replace function GetEmployeesByType(varchar(100),REFCURSOR) returns refcursor as
$$
declare
	etype			varchar(100)	:= $1;
	employeetype		REFCURSOR	:= $2;
begin
	open employeetype for
		select fname,
			mi,
			lname
		from EmployeeDetails
		where etdescr = etype;
	return employeetype;
end;
$$
language plpgsql;
			