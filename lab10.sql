--Rahul Narayan: Lab 10
--Procedure 1: function PreReqsFor: Returns the immediate prerequisites for the passed in course number
create or replace function PreReqsFor(int, REFCURSOR) returns refcursor as 
$$
declare
	course_num 	int		:= $1;
	prereqs 	REFCURSOR	:= $2;
begin
	open prereqs for
		select max(prereqnum) 
		from Prerequisites
		where coursenum = course_num;
	return prereqs;
end;
$$
language plpgsql;

select 	PreReqsFor(499,'immediateprereqs');
fetch all from immediateprereqs;
select 	PreReqsFor(308,'immediateprereqs');
fetch all from immediateprereqs;
select 	PreReqsFor(221,'immediateprereqs');
fetch all from immediateprereqs;
select 	PreReqsFor(220,'immediateprereqs');
fetch all from immediateprereqs;
select 	PreReqsFor(120,'immediateprereqs');
fetch all from immediateprereqs;	

--Procedure 2: function IsPreReqFor: Returns the courses for which the passed in course number is an immediate prerequisite
create or replace function IsPreReqFor(int, REFCURSOR) returns refcursor as 
$$
declare
	course_num 	int		:= $1;
	isprereqfor 	REFCURSOR	:= $2;
begin
	open isprereqfor for
		select coursenum 
		from Prerequisites
		where prereqnum = course_num;
	return isprereqfor;
end;
$$
language plpgsql;

select 	IsPreReqFor(499,'subcourses');
fetch all from subcourses;
select 	IsPreReqFor(308,'subcourses');
fetch all from subcourses;
select 	IsPreReqFor(221,'subcourses');
fetch all from subcourses;
select 	IsPreReqFor(220,'subcourses');
fetch all from subcourses;
select 	IsPreReqFor(120,'subcourses');
fetch all from subcourses;	