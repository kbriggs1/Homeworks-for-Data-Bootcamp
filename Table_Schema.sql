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
CREATE TABLE "Employees" (
	"emp_no" INT	NOT NULL,
	"first_name" VARCHAR	NOT NULL,
	"last_name" VARCHAR		NOT NULL,
	"birth_date" VARCHAR	NOT NULL,
	"gender" VARCHAR		NOT NULL,
	"hire_date" VARCHAR 	NOT NULL,
	CONSTRAINT "pk_Employees" PRIMARY KEY(
		"emp_no"
	)
);
CREATE TABLE "Salaries_Two" (
	"emp_no" INT	NOT NULL,
	"from_date" VARCHAR		NOT NULL,
	"to_date" VARCHAR 		NOT NULL,
	"salary" VARCHAR	NOT NULL
);
CREATE TABLE "Dept_Manager" (
	 "dept_no" VARCHAR		NOT NULL,
	 "emp_no" INT	NOT NULL,
	 "from_date" VARCHAR	NOT NULL,
	 "to_date" VARCHAR 		NOT NULL
);
CREATE TABLE "Titles"(
	"emp_no" INT	NOT NULL,
	"title"  VARCHAR	NOT NULL,
	"from_date" VARCHAR NOT NULL,
	"to_date" VARCHAR 		NOT NULL
);

SELECT * FROM "departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Titles";
SELECT * FROM "Salaries_Two";
SELECT * FROM "Employees";
SELECT * FROM "dept_emp"

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Salaries_Two" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

