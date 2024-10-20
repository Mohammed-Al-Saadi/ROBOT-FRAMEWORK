# README: Age Categorization Program with Test-Driven Development (TDD)

## Overview

This project implements a Python program that categorizes a person based on their age input. The program is developed using **Test-Driven Development (TDD)** principles, ensuring each functionality is thoroughly tested. The core logic categorizes a person as a child, adult, or pensioner based on their age, and this logic is tested using the `unittest` framework.

## Files

- **assi2utils.py**: This file contains the function `cheakinput(myAge)` that categorizes the person based on their age.
- **app.py**: The main application that prompts the user for their name and age and prints the category returned by `cheakinput(myAge)`.
- **test_age.py**: A test suite built using Python's `unittest` framework to validate the functionality of `cheakinput`.

## Key Features

- **Age Categorization**: The `cheakinput` function returns one of three responses based on the user's age:
  - "You are a child" if the age is less than 18.
  - "You are an adult" if the age is between 18 and 70.
  - "You are a pensioner" if the age is greater than 70.
- **Error Handling**: The program ensures that the user inputs a valid integer for the age. If the input is invalid, an error message is shown.

- **TDD Approach**: The program uses unit tests to ensure the categorization logic is correct for different age ranges.

## How to Run

### Main Application:

1. **Run the Application**:
   - To run the main program, use:
     ```bash
     python app.py
     ```
   - The user will be prompted to input their name and age. Based on the input, the program will print whether the person is a child, adult, or pensioner.

### Unit Tests:

1. **Run the Unit Tests**:
   - To validate the `cheakinput` function with unit tests:
     ```bash
     python -m unittest test_age.py
     ```
   - The tests check for different age values and validate the correct categorization.

## Example Usage

### Input:

- Name: John
- Age: 25

### Output:
