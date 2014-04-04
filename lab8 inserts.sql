--insert into people table
insert into people (PID, FName, LName, MI, Gender, Birth)
Values (1,'Johnny', 'Depp', '', 'm', '1970-09-08');	
insert into people (PID, FName, LName, MI, Gender, Birth)
Values (2,'Sean', 'Connery', '', 'm', '1940-06-21');
insert into people (PID, FName, LName, MI, Gender, Birth)
Values (3,'Amy', 'Poehler', '', 'f', '1972-04-21');
insert into people (PID, FName, LName, MI, Gender, Birth)
Values (4,'Martin', 'Scorcese', '', 'm', '1950-03-09');
insert into people (PID, FName, LName, MI, Gender, Birth)
Values (5,'Tina', 'Fey', '', 'f', '1971-03-30');

--insert into address table
insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (1,'400 rue st clair','40','Marseille','','00082','France');
insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (1,'40 beverly hils','','Los Angeles','CA','90210','USA');

insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (2,'10 downing st','flat 8','London','','H21-89J','UK');
insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (2,'100 country lane','','Smithtown','NY','10090','USA');

insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (3,'30 Chiswick rd','Apt 8E','Boston','MA','09876','USA');

insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (4,'900 San Quentin rd','','Pasadena','CA','90876','USA');

insert into address(PID, Addr1, Addr2, City, State, Zip, Country)
values (5,'200 park ave','6M','New York','NY','10221','USA');

--insert into actor table
insert into actor(PID, Hair, Eyes, HeightInches, WeightLbs, SAGDate)
values(1, 'BL', 'BR', 36, 160, '2000-03-04');
insert into actor(PID, Hair, Eyes, HeightInches, WeightLbs, SAGDate)
values(2, 'BL', 'BR', 42, 180, '1984-03-04');
insert into actor(PID, Hair, Eyes, HeightInches, WeightLbs, SAGDate)
values(3, 'BL', 'BL', 30, 120, '2002-03-04');
insert into actor(PID, Hair, Eyes, HeightInches, WeightLbs, SAGDate)
values(5, 'BR', 'BR', 30, 120, '1999-03-04');

--insert into director table
insert into director(PID, SCode, DirectorSAGDate)
values(2, 'UKFS', '1984-02-02');
insert into director(PID, SCode, DirectorSAGDate)
values(4, 'Bkly', '1998-12-02');
insert into director(PID, SCode, DirectorSAGDate)
values(5, 'NYU', '1998-12-02');

--insert into hairinfo table
insert into hairInfo(ColorCode, ColorDescr)
values('BL','black');
insert into hairInfo(ColorCode, ColorDescr)
values('BO','blonde');
insert into hairInfo(ColorCode, ColorDescr)
values('BR','brown');

--insert into eyeinfo table
insert into eyeInfo(ColorCode, ColorDescr)
values('BL','blue');
insert into eyeInfo(ColorCode, ColorDescr)
values('BR','brown');

--insert into movies table
insert into movies(Name, RelYear, BoxOfficeUSD, BoxOfficeIntl, CurCode, DVDBluRayUSD)
values('Pirates of the Caribbean','2003','40 bil','20 mil','GBP','50 bil');
insert into movies(Name, RelYear, BoxOfficeUSD, BoxOfficeIntl, CurCode, DVDBluRayUSD)
values('The Departed','2007','20 mil','10 mil','INR','60 mil');
insert into movies(Name, RelYear, BoxOfficeUSD, BoxOfficeIntl, CurCode, DVDBluRayUSD)
values('Never Say Never Again','1983','50 bil','90 mil','AUD','60 mil');

--insert into actorwork table
insert into actorWork(PID, Name, RelYear)
values(2,'Never Say Never Again','1983');
insert into actorWork(PID, Name, RelYear)
values(1,'Pirates of the Caribbean','2003');

--insert into directorwork table
insert into directorWork(PID, Name, RelYear)
values(4,'The Departed','2007');
insert into directorWork(PID, Name, RelYear)
values(4,'Never Say Never Again','1983');

--insert into currency table
insert into currency(CurCode, CurDescr)
values('GBP','Great Britain Pounds');
insert into currency(CurCode, CurDescr)
values('INR','Indian Rupees');
insert into currency(CurCode, CurDescr)
values('AUD','Australian Dollar');
insert into currency(CurCode, CurDescr)
values('USD','USA Dollar');

--insert into film school table
insert into filmschool(SchoolCode,SchoolDescr)
values('UKFS','UK Film School');
insert into filmschool(SchoolCode,SchoolDescr)
values('Bkly','Berkely');
insert into filmschool(SchoolCode,SchoolDescr)
values('NYU','NYU Film School');
