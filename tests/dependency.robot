*** Test Cases ***
Login Test
    ${status}=    Run Keyword And Return Status    Should Be Equal    5    5
    Set Suite Variable    ${LOGIN_STATUS}    ${status}

Dashboard Test
    IF    not ${LOGIN_STATUS}
        Skip    Login failed
    END
    Log To Console    Dashboard Running