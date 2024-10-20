# README: Rock, Paper, Scissors Game with Test-Driven Development (TDD)

## Overview

This project implements a simple **Rock, Paper, Scissors** game where a user plays against the computer (AI). The game is developed using the **Test-Driven Development (TDD)** approach, and includes a unit test suite to ensure that the game logic works correctly.

The player chooses between rock, paper, or scissors, and the computer randomly selects its choice. The winner is determined based on the standard rules of the game:

- Rock beats Scissors
- Scissors beats Paper
- Paper beats Rock

## Files

- **assi4utils.py**: Contains the game logic in the `game` function, which takes the computer's choice and the player's choice and determines the winner.
- **app.py**: The main application that allows the player to play Rock, Paper, Scissors against the computer.
- **test_rps.py**: A test suite using Python's `unittest` framework to validate the game logic for different scenarios (win, loss, draw).

## Key Features

- **Game Logic**: The `game` function compares the player's choice and the AI's choice, and returns one of the following outcomes:
  - "Draw" if both choices are the same.
  - "User Won" if the player beats the computer.
  - "Computer won" if the computer beats the player.
- **Random AI Choice**: The computer's choice is randomly generated using Python's `random.randint` function.
- **TDD Approach**: The program includes unit tests that validate the outcomes for different game scenarios (win, loss, draw).

## How to Run

### Main Application:

1. **Run the Application**:
   - To run the game and play against the computer:
     ```bash
     python app.py
     ```
   - The player will be prompted to input "Rock", "Paper", or "Scissors". The computer will make a random choice, and the result (win, loss, draw) will be displayed.

### Unit Tests:

1. **Run the Unit Tests**:
   - To validate the `game` function with unit tests:
     ```bash
     python -m unittest test_rps.py
     ```
   - The tests check for different game scenarios:
     - Player and AI choose the same → Draw
     - Player beats AI → "User Won"
     - AI beats Player → "Computer won"

## Example Usage

### Game Play:

- Input: `rock`
- Output:
