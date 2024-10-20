# README: Collatz Sequence Program with Test-Driven Development (TDD)

## Overview

This project implements a Python program based on the **Collatz Conjecture**. The program takes a user input (a number) and generates a sequence of numbers following these rules:

- If the number is even, divide it by two.
- If the number is odd, multiply it by three and add one.
  The sequence continues until the number becomes 1.

The program is developed using the **Test-Driven Development (TDD)** approach, with a utility module (`assi5utils.py`) containing the core logic, and a separate test suite using the `unittest` framework to ensure correctness.

## Files

- **assi5utils.py**: This file contains the function `check_number(num)` that generates the Collatz sequence for a given number.
- **test_collatz.py**: Contains unit tests for the `check_number` function using Python's `unittest` framework.
- **main.py**: This script allows the user to input a number and prints the Collatz sequence.

## Key Features

- **Collatz Conjecture**: The program implements the Collatz sequence algorithm, ensuring correct handling of even and odd numbers.
- **Error Handling**: The program raises an exception if the input is not a positive integer.
- **TDD Approach**: The project follows the TDD methodology, where unit tests were written before the function implementation to ensure correctness.

## How to Run

1. **Run the Main Program**:

   - To run the main program and get the Collatz sequence for a user input number:
     ```bash
     python main.py
     ```
   - The user will be prompted to input a number, and the program will print the sequence.

2. **Run the Tests**:
   - To run the unit tests and ensure the function works as expected:
     ```bash
     python -m unittest test_collatz.py
     ```

## Example Usage

- Input: 12
- Output: `[12, 6, 3, 10, 5, 16, 8, 4, 2, 1]`

## Tools and Libraries

- **Python**: The program is implemented in Python.
- **unittest**: Used for creating and running unit tests.
- **TDD Approach**: The project follows the Test-Driven Development methodology to ensure reliable and maintainable code.

## How to Contribute

Feel free to fork the repository and submit pull requests. Ensure to write tests for any new functionality following the TDD approach.
"""

# Save it to a file

with open("/mnt/data/README_Collatz_Sequence_TDD.md", "w") as file:
file.write(readme_content)

"/mnt/data/README_Collatz_Sequence_TDD.md"
