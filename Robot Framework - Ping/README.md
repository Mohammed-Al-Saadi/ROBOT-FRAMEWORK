# README: Webpages Ping Automation Script

## Overview

This Robot Framework script is designed to automate the process of reading a list of webpages from a text file, pinging each webpage, and recording the response times into an output file. It also performs conditional checks on the ping response times, logging whether the ping time is less than or greater than 50ms.

## Steps Covered in the Test Suite

1. **Read Text from File**:

   - The script reads a list of webpage URLs from a text file located at `/Users/mohammedali/Desktop/software_testing/webpages.txt`.
   - It splits the content into individual addresses for subsequent ping operations.

2. **Ping Webpages**:

   - The script pings each webpage listed in the text file, running the `ping` command with a count of 4 requests for each URL.
   - It captures the output and processes the ping time from the response.
   - The ping times and whether they are less than or greater than 50ms are logged and stored in a new output file (`example.txt`).

3. **Write to File**:
   - The results, including the extracted ping times, are appended to the file `example.txt`.
   - After all operations, the script verifies that the file exists and is not empty.

## Key Features

- **Ping Automation**: Automatically pings multiple webpages listed in a text file and logs the results.
- **Conditional Checking**: Compares ping times to a threshold (50ms) and logs whether the response time is below or above that value.
- **File Handling**: The script reads from a source text file and writes results to a separate output file.
- **Error Handling**: The script ensures the file exists and is not empty after processing all webpages.

## Tools and Libraries

- **Robot Framework**: Used for structuring and executing the test cases.
- **OperatingSystem Library**: Used for executing shell commands like `ping`.
- **String and Collections Libraries**: Used for string manipulation and list handling.

## How to Run

1. **Prepare the Input File**:

   - Ensure the text file `webpages.txt` is located at `/Users/mohammedali/Desktop/software_testing/` and contains the URLs or IP addresses of the webpages you wish to ping.

2. **Run the Script**:

   - To run the Robot Framework script:
     ```bash
     robot ping_webpages.robot
     ```

3. **Check Results**:
   - After the script runs, check the file `example.txt` in the same directory for the ping results and response times.

## Example File Content

- **webpages.txt**:
