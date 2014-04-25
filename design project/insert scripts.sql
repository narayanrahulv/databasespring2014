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