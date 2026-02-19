*** Test Cases ***
Hard Assert Example
    Should Be Equal    10    10
    Should Be Equal    5     5
    Log To Console     This line will NOT execute

Soft Assert Example
    Run Keyword And Continue On Failure    Should Be Equal    8    8
    Log To Console    This line WILL execute

*** Test Cases ***
Multiple Soft Validations
    Run Keyword And Continue On Failure    Should Be Equal    10    11
    Run Keyword And Continue On Failure    Should Be Equal    20    21
    Run Keyword And Continue On Failure    Should Be Equal    30    30
    Log To Console    All validations executed
