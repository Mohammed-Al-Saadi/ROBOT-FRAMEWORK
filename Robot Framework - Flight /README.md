# README: BlazeDemo Automation Testing with SeleniumLibrary

## Overview

This code is an automated test script using **Robot Framework** and **SeleniumLibrary** to perform a flight booking test on the **BlazeDemo** website. It simulates a complete user journey from selecting departure and destination cities, choosing a flight, filling in personal and payment information, and verifying the final purchase confirmation page.

## Steps Covered in the Test

1. **Open the Website**: The test begins by opening the BlazeDemo website in a Chrome browser and maximizing the browser window.

2. **Selecting Cities**:

   - The user selects a starting city (Boston) and a destination city (Cairo).
   - These selections are stored in variables for later validation.

3. **Submit the Form**:

   - The user submits the form to proceed to the flight selection page.
   - The test checks if the page contains the text "Flights from Boston to Cairo".

4. **Select a Flight**:

   - The script selects the first flight option available from the list.
   - It stores the flight details such as price, airline, and flight number in variables for comparison later.

5. **Validate Flight Information**:

   - The test compares the stored flight information from the selection page with the details shown on the next page to ensure they match.

6. **Store Total Price**:

   - The total price for the flight is retrieved and stored in a global variable for later comparison.

7. **Fill in Passenger Information**:

   - The test fills in passenger details, including name, address, city, state, zip code, credit card information, and name on the card.
   - It selects the payment card type and checks the "Remember me" checkbox before proceeding with the booking.

8. **Complete Booking and Validate Total Price**:

   - After submitting the payment form, the test waits for a confirmation message: "Thank you for your purchase today!"
   - It retrieves the total price from the final page and compares it with the previously stored price to ensure consistency.

9. **Close Browser**: Once all validations are complete, the browser is closed.

## Key Features

- **Form Filling Automation**: The script automates the process of filling in multiple forms, from selecting flight details to completing the payment.
- **Variable Handling**: Key details such as flight prices and user information are stored in variables and checked across different pages to ensure data consistency.
- **Conditional Checks**: The test includes conditional statements to log whether the flight information and total prices match between pages.

## Tools and Libraries Used

- **Robot Framework**: A test automation framework used for writing the test cases.
- **SeleniumLibrary**: A library used to interact with the browser and automate user interactions with web pages.
- **Chrome WebDriver**: The browser driver used for executing the automated browser interactions.
