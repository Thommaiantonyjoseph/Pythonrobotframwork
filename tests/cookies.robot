*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Get All Browser Cookies
    Open Browser    https://example.com    chrome
    Maximize Browser Window
    ${cookies}=    Get Cookies
    Log    ${cookies}
    Close Browser