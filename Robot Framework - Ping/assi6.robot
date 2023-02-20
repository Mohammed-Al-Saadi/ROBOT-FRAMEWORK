
*** Variables ***

${address}    ping /softwere testing/robotframework/webpages.txt    
*** Settings ***
Library    OperatingSystem
Library    String
Library    Collections

*** Test Cases ***
read text from file webpages
    ${file}=    Set Variable    /Users/mohammedali/Desktop/softwere testing/webpages.txt
    ${newfile}=    Get File    ${file}
    @{address}=    Split String    ${newfile}
    Set Global Variable    ${address}

*** Test Cases ***
ping webpages

    ${path}=    Set Variable    /Users/mohammedali/Desktop/softwere testing/
    Create File    ${path}example.txt
    ${length}=    Get Length    ${address}

    ${count}=    Set Variable    ${length} 
    FOR    ${index}    IN RANGE    ${count}
       ${Output}=    Run and return Rc and Output    ping ${address}[${index}] -c 4 
       Log    ${Output}
       ${var}=    Convert To String    ${Output}
       ${var1}=    Split String    ${var}
       ${var2}=    Get From List    ${var1}    3
       ${var3}=    Get From List    ${var1}    49
       ${var4}=    Convert To String    ${var2} ${var3}
       Append To File    ${path}example.txt    ${var4}
       ${var5}=    Get From List    ${var1}    26
       ${var6}=    Remove String    ${var5}    time=
       ${tar}=    Convert To String    ${var6}

       
       ${var7}=    Set Variable    50
       ${var8}=    Convert To Integer    ${var7}
       ${var9}=    Convert To Number    ${tar}
       IF    ${tar} < ${var8}
           ${message}=    Set Variable    ping time less than 50
       ELSE
           ${message}=    Set Variable    ping time more than 50

          
           
       END


    END
    File Should Exist    ${path}example.txt
    File Should Not Be Empty    ${path}example.txt    

         

  
        
    