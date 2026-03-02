*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Complete File Handling

    Create File    sample.txt    First Line
    Append To File    sample.txt    \nSecond Line

    ${data}=    Get File    sample.txt
    Log    ${data}

    File Should Exist    sample.txt

    Remove File    sample.txt