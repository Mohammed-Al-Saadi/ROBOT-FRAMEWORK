*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     String
Library     XML


*** Test Cases ***
TC_open_verkkokaupa_01
    Open Browser    https://www.verkkokauppa.com    chrome
    Maximize Browser window
    Page Should Contain    Verkkokauppa.com

    Sleep    1s
    Click Button    xpath://*[@id="allow-cookies"]

    Sleep    1s

TC_Finding_EL_02
    # for this we will go to any product landing page and from there we check these two words
    # for this purpose, a random number is generated and used to go to a product category page
    Click Element    xpath://*[@id="app"]/div/header/div/label
    Sleep    2s
    ${num}=    Generate Random String    1    [NUMBERS]
    Log    ${num}
    Convert To Number    ${num}

    ${num}=    Evaluate    ${num}+1
    Sleep    3s

    Click Element    xpath://*[@id="app"]/div/div/aside/nav/div/div[2]/ul/li[${num}]/a/span[2]
    Sleep    3s

#now we will go to a product page using the same random num
    Click Element    xpath://*[@id="main"]/div[5]/div[2]/div/ol/li[${num}]/article/a
    Sleep    2s
    Execute Javascript    window.scrollTo(0, 1000)
    Sleep    2s

#now we will check if the page contains: "Esittely" and "Lisätiedot"
    Page Should Contain    Esittely
    Page Should Contain    Lisätiedot
    Sleep    3s

TC_create_account_03
    Click Element    id:account
    Sleep    1s
    Click Link    xpath://*[@id="app"]/div/header/div[2]/div[3]/div[3]/div/a[2]
    sleep    2s
    Click Element    xpath://*[@id="create-account-button"]
    Input Text    xpath://input[@id="create-account-form-email"]    mattivesaabs@gmail.com
    Textfield Should Contain    xpath://input[@id="create-account-form-email"]    mattivesaabs@gmail.com
    Sleep    3s
    Click Element    xpath://*[@id="create-account-form-password"]
    Input Text    xpath://input[@id="create-account-form-password"]    password12341234
    Textfield Should Contain    xpath://input[@id="create-account-form-password"]    password12341234
    sleep    1s
    Click Element    xpath://*[@id="create-account-form-first-name"]
    Input Text    xpath://input[@id="create-account-form-first-name"]    mattias
    Textfield Should Contain    xpath://input[@id="create-account-form-first-name"]    mattias
    Sleep    1s
    Click Element    xpath://*[@id="create-account-form-last-name"]
    Input Text    xpath://input[@id="create-account-form-last-name"]    vesa
    Textfield Should Contain    xpath://input[@id="create-account-form-last-name"]    vesa
    sleep    1s
    Click Element    xpath://*[@id="create-account-form-phone-mobile"]
    Input Text    xpath://input[@id="create-account-form-phone-mobile"]    12345
    Textfield Should Contain    xpath://input[@id="create-account-form-phone-mobile"]    12345
    Sleep    1s

    Click Element    name:language
    Select From List By value    name:language    fi
    List Selection Should Be    name:language    fi
    Sleep    1s
    Click Element    xpath://*[@id="app"]/div/div/div/div/form/fieldset/div[7]/label
    click button    xpath://*[@id="create-account-button"]
    Sleep    4s

TC_login_logout_04
    Click Element    id:account
    Sleep    2s
    Click Element    xpath://input[@name='email']
    Input Text    xpath://input[@name='email']    mattivesaabs@gmail.com
    Textfield Should Contain    xpath://input[@name='email']    mattivesaabs@gmail.com
    Sleep    1s
    Click Element    xpath://input[@name='password']
    Input Text    xpath://input[@name='password']    password12341234
    Textfield Should Contain    xpath://input[@name='password']    password12341234
    Sleep    1s
    Click Button    xpath://*[@id="login-button-modal"]
    Sleep    5s
    Click Element    //*[@id="account"]
    Sleep    1s
    #we need    the user to be logged in so we can add to favorite list otherwise we can't add to list
    #logout
    #Click Element    xpath://*[@id="main"]/div[1]/div/span
    sleep    4s

TC_Search_fifa_05
    Click Element    xpath://*[@id="app"]/div/header/div/nav/form/div/input
    Input Text    name:query    fifa
    Sleep    1s
    Click Button    name:submit
    Sleep    5s
    Click Element    xpath://*[@id="main"]/div/div[1]/div[2]/div[2]/button[3]
    Sleep    2s
    #Capture First Element Screenshot

    Capture Element Screenshot    xpath://*[@id="main"]/div/div[2]/div[1]/ol/li[1]/div/a
    
    #Execute Javascript    window.scrollTo(0, 1500)
    #Scroll page
    Scroll Element Into View    xpath://*[@id="main"]/div/div[2]/div[1]/ol/li[5]/div/a
    #check if there is match between product page and search key word
    Page Should Contain    fifa
    Sleep    5s

TC_Add_ITEM_TO_SHOPPING_CART_06
    Click Button    xpath://*[@id="main"]/div/div[2]/div[1]/ol/li[5]/div/div/button
    Sleep    2s
    Click Button    xpath://*[@id="main"]/div/div[2]/div[1]/ol/li[6]/div/div/button
    Sleep    2s


TC_add_item_to_favorite_list_07
    Click Button    xpath://*[@id="main"]/div/div[2]/div[1]/ol/li[5]/div/button
    Sleep    3s
    Execute Javascript    window.scrollTo(1000, 0)
    Sleep    1s
    Click Element    id:favorites
    Sleep    2s
    Click Element    id:favorites

    sleep    4s

TC_Check_If_All_Prodcats_Have_Icons_08
    Click Element    xpath://*[@id="app"]/div/header/div/label
    Sleep    1s
    ${count_categories}=    Get Element Count    xpath://*[@id="app"]/div/div/aside/nav/div/div[*]/ul/li[*]/a/span[1]

    ${count_categories_icons}=    Get Element Count
    ...    xpath://*[@id="app"]/div/div/aside/nav/div/div[*]/ul/li[*]/a/span[1]

    IF    ${count_categories} == ${count_categories_icons}
        Log    All have icons
    ELSE
        Log    Not all have icons
    END
    Sleep    3s
    Click Element    //*[@id="sidebar-header-main"]/label

    Sleep    1s

TC_filtering_Price_ofProduct_09    
#first we will search for a produc, here we use 'mobile' as search text
    Sleep    1s
    Click Element    xpath://*[@id="app"]/div/header/div/nav/form/div/input
    Sleep    1s
    Input Text    name:query    mobile
    Sleep    1s
    Click Button    name:submit
    Sleep    1s
    Wait Until Page Contains    Hakutulokset haulle "mobile"
    Sleep    1s

    #selecting Hinta(price) tab to filter search results
    Click Element    xpath://*[@id="main"]/div/div[1]/div[1]/div/span/div/button[3]
    Wait Until Element Contains    xpath://*[@id="search-filters"]    Suodattimet
    Sleep    1s


    #minimum range
    Click Element    xpath://*[@id="min"]
    Input Text    xpath://*[@id="min"]    50
    Textfield Should Contain    xpath://*[@id="min"]    50
    Sleep    1s

    #maximum range
    Click Element    xpath://*[@id="max"]
    Input Text    xpath://*[@id="max"]    60
    Textfield Should Contain    xpath://*[@id="max"]    60
    Sleep    3s

    #submitting
    Click Element    xpath://*[@id="search-filters"]/div/footer/button[2]

TC_Get_No.of_items_after_priceFiltering_10
    #loging the filtered search results
    ${filteredProducts}=    Get Text    xpath://*[@id="main"]/div/div[1]/div[1]/span/span[1]
    Log    ${filteredProducts}

    Sleep    9s

TC_sorting_products_page_price_and_ui_layout_11
    Execute Javascript    window.scrollTo(1500, 0)
    Sleep    1s

    Click Element    xpath://*[@id="main"]/div/div[1]/div[2]/div[2]/button[1]

    Select From List By value    name:sort    price:asc
    List Selection Should Be    name:sort    price:asc
    Sleep    2s
    click button    xpath://*[@id="main"]/div/div[1]/div[2]/div[2]/button[1]
    Sleep    6s

TC_proCat_landing_page_12
    FOR    ${index}    IN RANGE    1    14
        Click Element    xpath://*[@id="app"]/div/header/div/label
        Sleep    1s

        Click Element    xpath:/html/body/div[1]/div/div/aside/nav/div/div[2]/ul/li[${index}]/a
        Sleep    1s
    END

    Sleep    2s

    FOR    ${index}    IN RANGE    14    26
        Click Element    xpath://*[@id="app"]/div/header/div/label
        Sleep    1s

        Scroll Element Into View    xpath:/html/body/div[1]/div/div/aside/nav/div/div[2]/ul/li[29]/a
        Sleep    1s

        Click Element    xpath:/html/body/div[1]/div/div/aside/nav/div/div[2]/ul/li[${index}]/a
        Sleep    2s
    END
        Sleep    2s
    #Complement of TC_01, it will close the browser, after running all the tests
    close browser
