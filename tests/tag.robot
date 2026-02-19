*** Test Cases ***
Login Test
    [Tags]    smoke    login
    Log To Console    Login Test Executed

Payment Test
    [Tags]    regression    payment
    Log To Console    Payment Test Executed

Profile Test
    [Tags]    smoke    profile
    Log To Console    Profile Test Executed

*** Settings ***
Documentation    Sample Suite for Understanding Documentation

*** Test Cases ***
Addition Test
    [Documentation]    This test verifies addition of two numbers.
    ${result}=    Evaluate    10 + 20
    Log To Console    Result: ${result}

*** Keywords ***
Print Message
    [Documentation]    Prints a simple message to console.
    Log To Console    Hello Thommai
