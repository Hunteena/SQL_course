CREATE TABLE IF NOT EXISTS departments (
	id serial PRIMARY KEY,
	department_name varchar(60) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS staff (
	id serial PRIMARY KEY,
	employee_name varchar(60) NOT NULL,
	department_id integer REFERENCES departments(id)
);
CREATE TABLE IF NOT EXISTS chiefs (
	department_id integer PRIMARY KEY REFERENCES departments(id),
	chief_id integer NOT NULL REFERENCES staff(id)
);
