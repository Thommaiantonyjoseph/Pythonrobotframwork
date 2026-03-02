*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Basic Drag And Drop
    Open Browser    https://demoqa.com/droppable    chrome
    Maximize Browser Window
    Set Selenium Speed    1s

    Drag And Drop    id=draggable    id=droppable

    Close Browser