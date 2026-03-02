*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser To DemoQA
Suite Teardown    Close Browser

*** Variables ***
${URL}    https://demoqa.com/automation-practice-form
${BROWSER}    chrome
${dateOfBirthInput}     id=dateOfBirthInput

*** Keywords ***
Open Browser To DemoQA
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5 seconds

Fill Practice Form
    Input Text    id=firstName    John
    Input Text    id=lastName     Doe
    Input Text    id=userEmail    john.doe@test.com
    Click Element    xpath=//label[text()='Male']
    # Scroll down
    Execute JavaScript    window.scrollTo(0,500)
    Input Text    id=userNumber    9876543210
    # Date of Birth
    Click Element    id=dateOfBirthInput
    Select From List By Value    class=react-datepicker__month-select    5
    Select From List By Value    class=react-datepicker__year-select     1995
    Click Element    xpath=//div[@class='react-datepicker__day react-datepicker__day--015']

    # Subject
    Input Text    id=subjectsInput    Maths
    Press Keys    id=subjectsInput    ENTER

    # Hobby
    Click Element    xpath=//label[text()='Sports']

    # Address
    Input Text    id=currentAddress    Chennai, India

    # State and City
    Click Element    id=state
    Click Element    xpath=//div[text()='NCR']

    Click Element    id=city
    Click Element    xpath=//div[text()='Delhi']

Submit Form
    Click Button    id=submit

Verify Submission
    Wait Until Page Contains    Thanks for submitting the form

*** Test Cases ***
Submit DemoQA Practice Form Successfully
    Fill Practice Form
    Submit Form
    Verify Submission