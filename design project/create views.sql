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