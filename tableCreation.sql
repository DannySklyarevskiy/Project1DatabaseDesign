CREATE TABLE "Crab" (
	"crab_id"	INTEGER,
	"nickname"	TEXT UNIQUE,
	"species"	TEXT,
	PRIMARY KEY("crab_id")
)

CREATE TABLE CrabGroup (
    crab_group_id INTEGER PRIMARY KEY,
    group_location TEXT
)

CREATE TABLE "Employee" (
	"employee_id"	INTEGER,
	"salary"	NUMBER,
	"date_joined"	DATE,
	FOREIGN KEY("employee_id") REFERENCES "Person"("person_id"),
	PRIMARY KEY("employee_id")
)

CREATE TABLE Factory (
    factory_id INTEGER PRIMARY KEY,
    address TEXT,
    creation_date DATE
)

CREATE TABLE "FactoryWorker" (
	"worker_id"	INTEGER,
	"factory_id"	INTEGER,
	FOREIGN KEY("factory_id") REFERENCES "Factory"("factory_id"),
	FOREIGN KEY("worker_id") REFERENCES "Employee"("employee_id")
)

CREATE TABLE Person (
    person_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    date_of_birth DATE,
    email TEXT,
    phone NUMBER,
    address TEXT
)

CREATE TABLE Printer (
    printer_id INTEGER PRIMARY KEY,
    factory_id INTEGER,
    tons_of_emissions_produced NUMBER,
    date_installed DATE,
    FOREIGN KEY (factory_id) REFERENCES Factory(factory_id)
)

CREATE TABLE "Researches" (
	"crab_group_id"	INTEGER,
	"scientist_id"	INTEGER,
	FOREIGN KEY("crab_group_id") REFERENCES "CrabGroup"("crab_group_id"),
	FOREIGN KEY("scientist_id") REFERENCES "Scientist"("scientist_id"),
	PRIMARY KEY("crab_group_id","scientist_id")
)

CREATE TABLE "Scientist" (
	"scientist_id"	INTEGER,
	"job"	TEXT,
	"education"	TEXT,
	FOREIGN KEY("scientist_id") REFERENCES "Employee"("employee_id"),
	PRIMARY KEY("scientist_id")
)

CREATE TABLE "Shell" (
	"shell_id"	INTEGER,
	"printer_id"	INTEGER,
	"group_id"	INTEGER,
	"mass"	NUMBER,
	"date_produced"	DATE,
	PRIMARY KEY("shell_id"),
	FOREIGN KEY("group_id") REFERENCES "CrabGroup"("crab_group_id"),
	FOREIGN KEY("printer_id") REFERENCES "Printer"("printer_id")
)

CREATE TABLE "SpottedCrab" (
	"crab_id"	INTEGER,
	"date_found"	DATE,
	"shell_is_artificial"	BOOLEAN,
	"shell_type"	NUMERIC,
	"well_being"	NUMERIC,
	PRIMARY KEY("crab_id","date_found"),
	FOREIGN KEY("crab_id") REFERENCES "Crab"("crab_id")
)

CREATE TABLE Wears (
    crab_id INTEGER,
    shell_id INTEGER,
    PRIMARY KEY (crab_id, shell_id),
    FOREIGN KEY (crab_id) REFERENCES Crab(crab_id),
    FOREIGN KEY (shell_id) REFERENCES Shell(shell_id)
)