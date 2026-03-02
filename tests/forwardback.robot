*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL1}    https://example.com
${URL2}    https://www.wikipedia.org
${BROWSER}    chrome

*** Test Cases ***
Forward And Backward Example
    Open Browser    ${URL1}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

    Go To    ${URL2}
    Sleep    2s

    Go Back
    Sleep    2s

    Close Browser