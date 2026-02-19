*** Settings ***
Resource    ../resources/common_keywords.robot

*** Test Cases ***
User Information Test
    Print Details    Thommai    25

User Details
    Print Details    Thommai    26

*** Keywords ***
Print Details
    [Arguments]    ${name}    ${age}
    Log To Console    Name: ${name}
    Log To Console    Age: ${age}
