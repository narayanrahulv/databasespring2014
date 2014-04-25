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