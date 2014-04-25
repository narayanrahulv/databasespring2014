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

