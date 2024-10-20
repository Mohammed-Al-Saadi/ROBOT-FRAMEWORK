# README: Database Column Management Automation with Robot Framework

## Overview

This project is an automation test suite designed to manage and validate database column modifications using **Robot Framework**. The test suite interacts with a MySQL database to automate tasks such as adding a column, checking if a column exists, dropping a column, and handling wrong data types during inserts.

## Steps Covered in the Test Suite

1. **Add New Column**:

   - The script establishes a connection to the MySQL database and executes an SQL query to add a new `grades` column to the `module` table.

2. **Check if Column Exists**:

   - The script checks whether the `grades` column exists in the `module` table by querying the `information_schema` for columns in the table. It logs whether the column exists or not.

3. **Drop Column**:

   - This test case drops the `grades` column from the `module` table, ensuring the table is reverted to its original structure.

4. **Insert Wrong Data Type**:
   - The script tests inserting an incorrect data type (a string) into the `grades` column, expecting an error since the column only accepts integers.

## Key Features

- **Database Automation**: The suite automates various database schema and data management tasks.
- **Error Handling**: The test suite includes validation to handle incorrect data insertions, ensuring robustness.
- **Variable and Keyword Usage**: The suite uses variables to manage database connections and keywords to execute common tasks such as connecting to the database and running SQL queries.

## Tools and Libraries Used

- **Robot Framework**: A test automation framework used to define the test cases.
- **DatabaseLibrary**: Used to manage database connections and execute SQL queries.
- **PyMySQL**: A Python library used to connect to MySQL databases from Robot Framework.
- **SeleniumLibrary**: Used for testing web interactions when necessary (can be omitted in this specific suite).

## How to Run

1. **Setup the Database**:

   - Ensure that the MySQL server is running and the database `${dbname}` (e.g., `robodb`) is available.
   - Set up the `module` table with the necessary fields, except for the `grades` column.

2. **Run the Script**:

   - Use the following command to execute the tests:
     ```bash
     robot database_test_suite.robot
     ```

3. **Check Results**:
   - After the test execution, Robot Framework will generate an HTML report (`report.html`) and a log file (`log.html`) that detail the outcomes of each test case.

## Project Structure

- **Test Cases**: Defines different operations such as adding, dropping columns, and checking schema changes.
- **Keywords**: Contains custom reusable keywords for connecting to the database and performing SQL operations.

"""

# Save it to a file

with open("/mnt/data/README_Database_Testing.md", "w") as file:
file.write(readme_content)

"/mnt/data/README_Database_Testing.md"
