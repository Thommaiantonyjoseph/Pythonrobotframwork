*** Settings ***
Library    DataDriver    file=../data/login.csv
Test Template    Login Test

*** Test Cases ***
Login Test Using CSV
    [Documentation]    This test runs multiple times using CSV data

*** Keywords ***
Login Test
    [Arguments]    ${username}    ${password}
    Log To Console    Username: ${username}
    Log To Console    Password: ${password}
    Log To Console    -------------------------
