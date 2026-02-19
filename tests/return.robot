*** Test Cases ***
Check Keyword Status
    ${status}=    Run Keyword And Return Status    Should Be Equal    5    5
    Log To Console    Status is: ${status}

Check With Condition
    ${status}=    Run Keyword And Return Status    Should Be Equal    5    3

    IF    ${status}
        Log To Console    Keyword Passed
    ELSE
        Log To Console    Keyword Failed
    END
