*** Settings ***
Library     SeleniumLibrary

*** Variable ***


*** Test Cases ***
Fill Practice Form
    Open Browser    https://demoqa.com/automation-practice-form     chrome
    Input Text      id:firstName    thommai
    Input Text      id:lastName     v
    Input Text      id:userEmail    thommai.v143@gmail.com
    Input Text

*** Keywords ***
