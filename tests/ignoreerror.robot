*** Test Cases ***
Ignore Error Example
    Run Keyword And Ignore Error    Should Be Equal    5    6
    Log To Console    Execution Continues

Ignore Error With Return
    ${status}    ${message}=    Run Keyword And Ignore Error    Should Be Equal    5    6
    Log To Console    Status: ${status}
    Log To Console    Message: ${message}


Try Except Example
    TRY
        Should Be Equal    5    6
    EXCEPT
        Log To Console    Error Occurred But Ignored
    END
