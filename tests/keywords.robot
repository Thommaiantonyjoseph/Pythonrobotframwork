*** Test Cases ***
Check Status Example
    ${status}=    Run Keyword And Return Status    Should Be Equal    5    5
    Log To Console    Status is: ${status}