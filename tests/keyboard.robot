*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Keyboard Actions Example
    Open Browser    https://demoqa.com/text-box    chrome
    Maximize Browser Window
    Set Selenium Speed    1s

    Input Text    id=userName    Thommai
    Press Keys    id=userName    CTRL+A
    Press Keys    id=userName    DELETE
    Input Text    id=userName    Joseph
    Press Keys    id=userName    TAB

    Close Browser