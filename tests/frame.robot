*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://demoqa.com/frames
${EXPECTED_TEXT}    This is a sample page

*** Test Cases ***
Handle DemoQA Frames Properly
    Open Browser    ${URL}    chrome
    Maximize Browser Window

    Wait Until Page Contains Element    //iframe[@id="frame1"]    15s

    # ---- Frame 1 ----
    Select Frame    xpath=//iframe[@id="frame1"]
    ${text1}=    Get Text    //h1
    Should Be Equal As Strings    ${text1}    ${EXPECTED_TEXT}
    Unselect Frame

    # ---- Frame 2 ----
    Wait Until Page Contains Element    //iframe[@id="frame2"]    15s
    Select Frame    xpath=//iframe[@id="frame2"]
    ${text2}=    Get Text    //h1
    Should Be Equal As Strings    ${text2}    ${EXPECTED_TEXT}
    Unselect Frame

    Close Browser