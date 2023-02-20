*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem
Library    Collections
Library    String

*** Variables ***
${dbname}    robodb
${dbuser}    root
${dbpass}    password
${dbhost}    localhost
${dbport}    6033
${initialdbname}    mysql
${path}    /Users/mohammedali/Desktop/softwere testing/robotframework/

*** Keywords ***
make connection
  [Arguments]    ${dbtoconnect}     
  connect to Database    pymysql    ${dbtoconnect}    ${dbuser}    ${dbpass}    ${dbhost}    ${dbport}  

*** Test Cases ***
add new column
  Make Connection    ${initialdbname}
  Execute Sql String    use ${dbname}
  ${query}     Execute Sql String      ALTER TABLE module ADD grades int not null ;


***Test cases***
Check if column exist
  Make Connection    ${initialdbname}
  Execute Sql String    use ${dbname}

  ${query}     Execute Sql String      select grades from module ;
    IF    ${query} != 0
  ${message}=    Set Variable    column is exist
  ELSE
    ${message}=    Set Variable    column not exist
  END


 
***Test cases***

drop column
  Make Connection    ${initialdbname}
  Execute Sql String    use ${dbname}
  ${query}     Execute Sql String       ALTER TABLE module DROP COLUMN grades;
  Set Global Variable    ${query}



***Test cases***

Enter the wrong type of data 
  Make Connection    ${initialdbname}
  Execute Sql String    use ${dbname};
  ${query}     Execute Sql String       INSERT INTO module (modulenbr, name, responsible_lecturer,grades)VALUES ('10', 'mohammed', 'h190','dd');




 


              
