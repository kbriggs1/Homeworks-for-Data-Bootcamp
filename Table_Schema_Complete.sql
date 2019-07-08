--Data Engineering data types, primary keys, foreign keys, and other constraints.
--Import each CSV file into the corresponding SQL table.

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    PRIMARY KEY (
        "dept_no"
     )
);
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR     NOT NULL,
    "from_date" VARCHAR   NOT NULL,
    "to_date" VARCHAR   NOT NULL
);
CREATE TABLE "employees" (
	"emp_no" INT	NOT NULL,
	"first_name" VARCHAR	NOT NULL,
	"last_name" VARCHAR		NOT NULL,
	"birth_date" VARCHAR	NOT NULL,
	"gender" VARCHAR		NOT NULL,
	"hire_date" VARCHAR 	NOT NULL,
	CONSTRAINT "pk_employees" PRIMARY KEY(
		"emp_no"
	)
);
CREATE TABLE "salaries" (
	"emp_no" INT	NOT NULL,
	"from_date" VARCHAR		NOT NULL,
	"to_date" VARCHAR 		NOT NULL,
	"salary" VARCHAR	NOT NULL
);
CREATE TABLE "dept_manager" (
	 "dept_no" VARCHAR		NOT NULL,
	 "emp_no" INT	NOT NULL,
	 "from_date" VARCHAR	NOT NULL,
	 "to_date" VARCHAR 		NOT NULL
);
CREATE TABLE "titles"(
	"emp_no" INT	NOT NULL,
	"title"  VARCHAR	NOT NULL,
	"from_date" VARCHAR NOT NULL,
	"to_date" VARCHAR 		NOT NULL
);

SELECT * FROM "departments";
SELECT * FROM "dept_manager";
SELECT * FROM "titles";
SELECT * FROM "salaries";
SELECT * FROM "employees";
SELECT * FROM "dept_emp"

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "Salaries_Two" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");
