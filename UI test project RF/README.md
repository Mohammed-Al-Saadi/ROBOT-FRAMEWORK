# README: Verkkokauppa Automation Testing Suite

## Overview

This project is an automated test suite for **Verkkokauppa.com**, an e-commerce website. The test suite uses **Robot Framework** and **SeleniumLibrary** to automate different interactions and validate the website's functionality. The script covers scenarios such as account creation, product search, filtering, adding items to the cart and favorites, and more.

## Key Features

- **Browser Automation**: Automates various web interactions on Verkkokauppa.com using Selenium.
- **Product Search & Filtering**: Simulates product searches and applies filters to narrow down results.
- **Form Submission**: Automates the process of filling in account creation forms and logging into the system.
- **Cart & Favorites**: Tests adding products to the shopping cart and the favorites list.
- **Price Range Filtering**: Allows testing product filtering based on price.
- **Product Categories**: Navigates through product categories and validates that each category has icons.

## Tools and Libraries Used

- **Robot Framework**: Used for writing and organizing test cases.
- **SeleniumLibrary**: A library used to interact with web browsers.
- **String and Collections Libraries**: Utilized for string manipulation and managing collections.
- **XML Library**: Used for XML data handling where necessary.

## Test Cases

1. **TC_open_verkkokaupa_01**: Opens the Verkkokauppa homepage, accepts cookies, and verifies the page content.
2. **TC_Finding_EL_02**: Navigates to a random product category and checks for the presence of "Esittely" (Description) and "Lisätiedot" (Details) on the product page.

3. **TC_create_account_03**: Automates account creation by filling in required fields and submitting the form.

4. **TC_login_logout_04**: Logs into the account with valid credentials and logs out.

5. **TC_Search_fifa_05**: Searches for the term "fifa" and checks if the product results match the search.

6. **TC_Add_ITEM_TO_SHOPPING_CART_06**: Adds selected items to the shopping cart.

7. **TC_add_item_to_favorite_list_07**: Adds an item to the favorites list and verifies that it appears there.

8. **TC_Check_If_All_Prodcats_Have_Icons_08**: Validates that all product categories have icons.

9. **TC_filtering_Price_ofProduct_09**: Searches for a product and applies a price range filter to the results.

10. **TC_Get_No.of_items_after_priceFiltering_10**: Logs the number of products found after applying the price filter.

11. **TC_sorting_products_page_price_and_ui_layout_11**: Sorts products by price in ascending order and validates the sorting behavior.

12. **TC_proCat_landing_page_12**: Iterates through product categories and clicks each category to verify its functionality.

## How to Run

1. **Setup**:

   - Install **Robot Framework** and **SeleniumLibrary**.
   - Ensure that you have a working **Chrome WebDriver** installed.

2. **Execution**:

   - Run the following command to execute the test suite:
     ```bash
     robot verkkokauppa_test_suite.robot
     ```

3. **Test Results**:
   - After execution, Robot Framework will generate an HTML report (`report.html`) and log file (`log.html`) summarizing the test results.

## Example Commands

- **Run all tests**:
  ```bash
  robot verkkokauppa_test_suite.robot
  ```
