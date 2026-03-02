*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To Alerts Page
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://demoqa.com/alerts
${BROWSER}    Chrome

*** Keywords ***
Open Browser To Alerts Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    3s

*** Test Cases ***

Simple Alert Should Accept
    [Documentation]    Click simple alert and accept it.
    Click Button    xpath=//button[@id='alertButton']
    ${msg}=    Handle Alert    ACCEPT
    Log    Simple Alert text: ${msg}

Timer Alert Should Appear And Accept
    [Documentation]    Click timer alert, wait, then accept.
    Click Button    xpath=//button[@id='timerAlertButton']
    # Wait for alert to appear (implicit wait helps)
    ${msg}=    Handle Alert    ACCEPT
    Log    Timer Alert text: ${msg}

Confirmation Alert Cancel
    [Documentation]    Click confirm alert and dismiss (Cancel).
    Click Button    xpath=//button[@id='confirmButton']
    ${msg}=    Handle Alert    DISMISS
    Log    Confirm dismiss text: ${msg}

Confirmation Alert Accept
    [Documentation]    Accept confirm alert and verify page text changes.
    Click Button    xpath=//button[@id='confirmButton']
    Handle Alert    ACCEPT
    ${result}=    Get Text    id=confirmResult
    Should Contain    ${result}    Ok

Prompt Alert Enter Text
    [Documentation]    Click prompt alert, enter text, accept, verify result.
    # Scroll down
    Execute JavaScript    window.scrollTo(0,300)
    Click Button    xpath=//button[@id='promtButton']
    Input Text Into Alert    Hello Robot    ACCEPT
    ${result}=    Get Text    id=promptResult
    Should Contain    ${result}    Hello Robot