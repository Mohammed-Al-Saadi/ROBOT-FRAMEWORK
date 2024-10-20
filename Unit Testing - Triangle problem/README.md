# README: Triangle Classification Program with Test-Driven Development (TDD)

## Overview

This project implements a Python program that determines the type of a triangle based on the lengths of its three sides. The triangle can be classified as **equilateral**, **isosceles**, or **irregular** based on the side lengths. The project follows the **Test-Driven Development (TDD)** approach, ensuring that the logic is tested thoroughly for correctness.

## Files

- **assi3utils.py**: Contains the function `cheaklength(side1, side2, side3)` that classifies the triangle based on the provided side lengths.
- **app.py**: The main application where users can input the three side lengths of a triangle and receive the classification.
- **test_triangle.py**: A test suite built using Python's `unittest` framework to validate the triangle classification logic.

## Key Features

- **Triangle Classification**: The `cheaklength` function checks the side lengths and returns:
  - "equilateral" if all three sides are equal.
  - "isosceles" if two sides are equal.
  - "irregular" if no sides are equal.
- **Error Handling**: The program handles exceptions and prompts users to input valid integers for side lengths.
- **TDD Approach**: The project includes unit tests to ensure that each triangle type (equilateral, isosceles, and irregular) is classified correctly.

## How to Run

### Main Application:

1. **Run the Application**:
   - To run the program and classify a triangle based on user input:
     ```bash
     python app.py
     ```
   - The user will be prompted to input the three sides of the triangle, and the program will return the classification.

### Unit Tests:

1. **Run the Unit Tests**:
   - To validate the `cheaklength` function with unit tests:
     ```bash
     python -m unittest test_triangle.py
     ```
   - The tests check for different triangle types (equilateral, isosceles, and irregular) and validate the classification logic.

## Example Usage

### Input:

- Side1: 17
- Side2: 17
- Side3: 17

### Output:
