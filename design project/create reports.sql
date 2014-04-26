--GetInjuryListing
select getinjurydetails('injurylisting');
fetch all from injurylisting;

--GetWorkPermitListing
	--need work permit
	select getworkpermitdetails(true,'workpermit');
	fetch all from workpermit;

	--don't need work permit
	select getworkpermitdetails(false,'workpermit');
	fetch all from workpermit;

--GetSponsorDetails
select getsponsordetails('2011','sponsordetails');
fetch all from sponsordetails;

--TournamentParticipation
select gettournamentparticipation('2014','tournamentdetails');
fetch all from tournamentdetails;

--EmployeeDetails
select getemployeesbytype('managers','employeetypes');
fetch all from employeetypes;