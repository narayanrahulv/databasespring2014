--people table
CREATE TABLE people (
	PID	integer PRIMARY KEY,
	FName	varchar(100) NOT NULL,
	LName	varchar(100) NOT NULL,
	MI	varchar(1),
	Gender	varchar(1),
	Birth	date
);

--address table
CREATE TABLE address (
	PID	integer NOT NULL,
	Addr1	varchar(100) NOT NULL,
	Addr2	varchar(100),
	City	varchar(50) NOT NULL,
	State	varchar(2) NOT NULL,
	Zip	varchar(10) NOT NULL,	
	Country	varchar(50)
);

--actor table
CREATE TABLE actor (
	PID		integer NOT NULL,
	Hair		varchar(2),
	Eyes		varchar(2),
	HeightInches	integer,
	WeightLbs	integer,
	SAGDate		date
);

--director table
CREATE TABLE director (
	PID		integer NOT NULL,
	SCode		varchar(10),
	DirectorSAGDate	date
);

--hairInfo table
CREATE TABLE hairInfo (
	ColorCode	varchar(2),
	ColorDescr	varchar(100)
);

--eyeInfo table
CREATE TABLE eyeInfo (
	ColorCode	varchar(2),
	ColorDescr	varchar(100)
);

--movie table
CREATE TABLE movies (
	Name		varchar(100) NOT NULL,
	RelYear		varchar(4) NOT NULL,
	BoxOfficeUSD	varchar(6),
	BoxOfficeIntl	varchar(6),
	CurCode		varchar(4),
	DVDBluRayUSD	varchar(6)
);

--actor work table
CREATE TABLE actorWork (
	PID	integer,
	Name	varchar(100),
	RelYear	varchar(4)
);

--director work table
CREATE TABLE directorWork (
	PID	integer,
	Name	varchar(100),
	RelYear	varchar(4)
);

--currency table
CREATE TABLE currency (
	CurCode		varchar(4),
	CurDescr	varchar(20)
);

--film school table
CREATE TABLE filmschool (
	SchoolCode	varchar(4),
	SchoolDescr	varchar(100)
);