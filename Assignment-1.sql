-- 1.
CREATE TABLE countries (country_id INT,country_name VARCHAR(20),  region_id INT );

-- 2.
CREATE TABLE countries (country_id INT, country_name VARCHAR(20), region_id INT);

-- 3.
CREATE TABLE dup_countries LIKE countries;

-- 4.
CREATE TABLE dup_countries AS 
  SELECT * FROM countries;

-- 5.
CREATE TABLE countries (
    country_id INT NOT NULL,
    country_name VARCHAR(20),
    region_id INT NOT NULL
);

-- 6.
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(50),
    min_salary FLOAT,
    max_salary FLOAT,
    CHECK (max_salary <= 25000)
);

-- 7.
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(10),
    region_id INT,
    CHECK (country_name IN ('Italy', 'India', 'China'))
);

-- 8.
CREATE TABLE job_history (
    employee_id INT,
    start_date DATE,
    end_date DATE,
    job_id INT,
    department_id INT
);

-- 9.
CREATE TABLE countries (
    country_id INT UNIQUE,
    country_name VARCHAR(20),
    region_id INT
);

-- 10.
CREATE TABLE jobs (
    job_id INT,
    job_title VARCHAR(35) NOT NULL DEFAULT ' ',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

-- 11.
CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(20),
    region_id INT
);

-- 12.
CREATE TABLE countries (
    country_id INT UNIQUE AUTO_INCREMENT,
    country_name VARCHAR(20),
    region_id INT
);

-- 13.
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(20),
    region_id INT,
    UNIQUE (country_id, region_id)
);

-- 14.
CREATE TABLE job_history (
    employee_id INT UNIQUE,
    start_date DATE,
    end_date DATE,
    job_id INT,
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
) ENGINE=InnoDB;

-- 15.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id INT,
    salary DECIMAL(8,2),
    commission DECIMAL(4,2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id, manager_id)
        REFERENCES departments(department_id, manager_id)
) ENGINE=InnoDB;

-- 16.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    email VARCHAR(25),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id INT,
    salary DECIMAL(8,2),
    commission DECIMAL(4,2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
) ENGINE=InnoDB;

-- 17.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB;

-- 18.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT
) ENGINE=InnoDB;

-- 19.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT NULL,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE SET NULL
        ON UPDATE SET NULL
) ENGINE=InnoDB;

-- 20.
CREATE TABLE employees (
    employee_id INT UNIQUE,
    first_name VARCHAR(20),
    last_name VARCHAR(25),
    job_id INT,
    salary DECIMAL(8,2),
    FOREIGN KEY (job_id)
        REFERENCES jobs(job_id)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
) ENGINE=InnoDB;
