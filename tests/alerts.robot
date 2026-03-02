*** Settings ***
Library     SeleniumLibrary
Suite Setup     Open Browser Alerts Accepts

*** Variables ***
${URL}      https://demoqa.com/alerts
${BROWSER}      chrome

*** Test Cases ***
Alerts Accept
    Click Button    xpath=//button[@id='alertButton']
    ${msg}=    Handle Alert    ACCEPT
    Log    Simple Alert text: ${msg}

*** Keywords ***
Open Browser Alerts Accepts
    OpenBrowser     ${URL}      ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait      3s


