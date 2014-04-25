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
	