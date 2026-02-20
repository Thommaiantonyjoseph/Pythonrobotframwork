*** Test Cases ***
Check Number
    ${num}=    Set Variable    3

    IF    ${num} > 5
        Pass Execution    Number is valid
    END

    Fail    Number is invalid