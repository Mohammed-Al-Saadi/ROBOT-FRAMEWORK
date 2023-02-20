*** Settings ***
Library     SeleniumLibrary
Library     String


*** Test Cases ***
Open google and do search
    Open Browser    http://blazedemo.com/    Chrome
    Sleep    1s
    Maximize Browser window

    Page Should Contain    Welcome to the Simple Travel Agency!

insert city and set variable
#filling starting city
    Click Element    name:fromPort
    Select From List By value    name:fromPort    Boston
    List Selection Should Be    name:fromPort    Boston
    ${var}=    Set Variable    Boston
    Sleep    1s

insert destination
#filling the form destination
    Click Element    name:toPort
    Select From List By value    name:toPort    Cairo
    List Selection Should Be    name:toPort    Cairo
    ${var1}=    Set Variable    Cairo
    Sleep    1s


submit form and check if page says Flights from Boston to Cairo
#submit the form
    Submit Form
#Check that the page says Flights from Boston to Cairo
    Page Should Contain    Flights from Boston to Cairo:
#get the length of the rows
#Check that you have at least one flight choice visible
    ${length}=    Get WebElements    xpath:/html/body/div[2]/table/tbody/tr[*]

    Should Not Be Empty    ${length}
select the first,second flight and storing Variables
#select the first flights
    Click Element    xpath:/html/body/div[2]/table/tbody/tr[1]/td[1]/input
    ${price}=    Set Variable    472.56
    ${airline}=    Set Variable    Virgin America
    ${flight}=    Set Variable    43
    Set Global Variable    ${price}
    Set Global Variable    ${airline}
    Set Global Variable    ${flight}
    Sleep    1s


#storing page 2 variable
    ${price2}=    Get Text    xpath:/html/body/div[2]/p[3]
    ${airline2}=    Get Text    xpath:/html/body/div[2]/p[1]
    ${flight2}=    Get Text    xpath:/html/body/div[2]/p[2]

    Set Global Variable    ${price2}
    Set Global Variable    ${airline2}
    Set Global Variable    ${flight2}

check that the price, airline, and flight number
# check that the price, airline, and flight number of the trip you stored in the variables can be found on the page

    IF    ('${price}' == '${price2}') and ('${airline}' == '${airline2}') and ('${flight}' == '${flight2}')
        Log    information is same on both the pages
    ELSE
        Log    information is not same on both pages
    END

# Store the total price of the flight in a new variable
    ${totalprice}=    Get Text    xpath:/html/body/div[2]/p[5]/em

    Set Global Variable    ${totalprice}

Fill in the passenger information
#Fill in the passenger information
    Click Element    xpath://*[@id="inputName"]
    Input Text    xpath://*[@id="inputName"]    Mohammed
    Textfield Should Contain    xpath://*[@id="inputName"]    Mohammed
    Sleep    1s

    Click Element    xpath://*[@id="address"]
    Input Text    xpath://*[@id="address"]    katu 21
    Textfield Should Contain    //*[@id="address"]    katu 21
    Sleep    1s
    Click Element    xpath://*[@id="city"]
    Input Text    xpath://*[@id="city"]    Tampere
    Textfield Should Contain    //*[@id="city"]    Tampere
    Sleep    1s

    Click Element    xpath://*[@id="state"]
    Input Text    xpath://*[@id="state"]    state
    Textfield Should Contain    //*[@id="state"]    state

    Sleep    1s

    Click Element    xpath://*[@id="zipCode"]
    Input Text    xpath://*[@id="zipCode"]    4343
    Textfield Should Contain    //*[@id="zipCode"]    4343
    Sleep    1s

    Select From List By Index    name:cardType    2
    Sleep    1s

    Click Element    xpath://*[@id="creditCardNumber"]
    Input Text    xpath://*[@id="creditCardNumber"]    3234444343333
    Textfield Should Contain    //*[@id="creditCardNumber"]    3234444343333
    Sleep    1s

    Click Element    xpath://*[@id="creditCardMonth"]
    Input Text    xpath://*[@id="creditCardMonth"]    jun
    Textfield Should Contain    //*[@id="creditCardMonth"]    jun
    Sleep    1s

    Click Element    xpath://*[@id="creditCardYear"]
    Input Text    xpath://*[@id="creditCardYear"]    2022
    Textfield Should Contain    //*[@id="creditCardYear"]    2022
    Sleep    1s

    Click Element    xpath://*[@id="nameOnCard"]
    Input Text    xpath://*[@id="nameOnCard"]    Mohammed
    Textfield Should Contain    //*[@id="nameOnCard"]    Mohammed
    Sleep    1s

    Select Checkbox    xpath://*[@id="rememberMe"]

    Sleep    1s
    Click Button    xpath:/html/body/div[2]/form/div[11]/div/input
    Sleep    1s
    Wait Until Page Contains    Thank you for your purchase today!
    Sleep    1s

    ${totalpriceinlastpage}=    Set Variable    xpath:/html/body/div[2]/div/table/tbody/tr[3]/td[2]
    Set Global Variable    ${totalpriceinlastpage}

    Sleep    1s

check if the price is the same 
    IF    '${totalprice}' == '${totalpriceinlastpage}'
        Log    Final price    is equal
    ELSE
        Log    Final price    is different
    END
    Close Browser
