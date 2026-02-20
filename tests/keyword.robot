*** Settings ***
Library    BuiltIn

*** Test Cases ***
Login Test
    Perform Login

*** Keywords ***
Perform Login
    Open Browser
    Enter Username
    Enter Password
    Click Login Button

Open Browser
    Log    Browser Opened

Enter Username
    Log    Username Entered

Enter Password
    Log    Password Entered

Click Login Button
    Log    Login Button Clicked