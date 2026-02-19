*** Settings ***
Test Setup       Start Application
Test Teardown    Close Application

*** Test Cases ***
Sample Test
    Log To Console    Executing Test Case

*** Keywords ***
Start Application
    Log To Console    Application Started

Close Application
    Log To Console    Application Closed
