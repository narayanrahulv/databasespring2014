--people table
CREATE TABLE people (
	PID	integer PRIMARY KEY,
	FName	varchar(100) NOT NULL,
	LName	varchar(100) NOT NULL,
	MI	varchar(1),
	Gender	varchar(1),
	Age	integer
);

--engineers table
CREATE TABLE engineers (
	PID 		integer NOT NULL,
	DegreeCode	varchar(5) NOT NULL,
	FavGame		varchar(100)
);

--degree table
CREATE TABLE degreeInfo (
	DegreeCode	varchar(5),
	DegreeDescr	varchar(100)
);

--astronauts table
CREATE TABLE astronauts (
	PID		integer NOT NULL,
	ExpYears	decimal NOT NULL,
	GolfHandicap	integer
);

--flight control operators table
CREATE TABLE flightcontrollers (
	PID		integer NOT NULL,
	ChairCode	varchar(5),
	FavDrink	varchar(100)
);

--chair table
CREATE TABLE chairInfo (
	ChairCode	varchar(5),
	ChairDescr	varchar(100)
);

--spacecraft table
CREATE TABLE spaceCraft (
	Name		varchar(100) NOT NULL,
	TailNum		integer NOT NULL,
	WeightTons	decimal NOT NULL,
	FuelType	varchar(5) NOT NULL,
	CrewCapacity	integer NOT NULL,
	PRIMARY KEY (Name, TailNum)
);

--fuel table
CREATE TABLE fuelInfo (
	FuelType	varchar(5),
	FuelDescr	varchar(100)
);

--crew table
CREATE TABLE crew (
	PID 	integer not null,
	Name	varchar(100) NOT NULL,
	TailNum	integer NOT NULL
);

--systems table
CREATE TABLE systems (
	Name		varchar(100),
	TailNum		integer,
	SysCode		varchar(5),
	SysDescr	varchar(100),
	PartCode	varchar(5),
	PartExists	boolean
);

--parts table
CREATE TABLE partsInfo (
	PartCode	varchar(5),
	PartDescr	varchar(100)
);

--suppliers table
CREATE TABLE suppliers (
	supplName	varchar(100) NOT NULL,
	AddrID		integer NOT NULL,
	PayTerms	varchar(5),
	PRIMARY KEY (supplName, AddrID)
);

--address table
CREATE TABLE address (
	AddrID	integer	primary key,
	Addr1	varchar(100) NOT NULL,
	Addr2	varchar(100),
	City	varchar(50) NOT NULL,
	State	varchar(2) NOT NULL,
	Zip	varchar(10) NOT NULL,	
	Country	varchar(50)
);

--payment table
CREATE TABLE payInfo (
	PayTerms	varchar(5),
	PayDescr	varchar(100)
);

--catalog table
CREATE TABLE catalog (
	supplName	varchar(100) not null,
	PartCode	varchar(5) not null
);