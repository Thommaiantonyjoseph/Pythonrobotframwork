*** Settings ***
Library    ../MyFile.py

*** Test Cases ***
Function Library Example
    ${result}=    Add    10    20
    Log To Console    Result: ${result}

    ${msg}=    Greet    Thommai
    Log To Console    ${msg}
