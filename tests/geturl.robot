*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://demoqa.com
${BROWSER}   chrome

*** Test Cases ***
Get URL Test Case
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    ${current_url}=    Get Location
    Log To Console    Current URL is: ${current_url}

    Close Browser