*** Settings ***
Library    Browser

*** Test Cases ***
Succesful To Add Cookie
    New Browser    headless=${HEADLESS}
    New Page    http://localhost:8070
    Fill Text    id=message    Test Cookie!
    Click    css=type#submit
    Get Text    css=div#output    Cookie Added!
    
*** Variables ***
${HEADLESS}=    ${TRUE}
