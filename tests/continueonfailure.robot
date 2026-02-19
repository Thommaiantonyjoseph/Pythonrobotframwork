*** Test Cases ***
Continue On Failure Example
    Run Keyword And Continue On Failure    Should Be Equal    5    6
    Log To Console    This line will execute

*** Test Cases ***
Multiple Validations
    Run Keyword And Continue On Failure    Should Be Equal    10    11
    Run Keyword And Continue On Failure    Should Be Equal    20    21
    Run Keyword And Continue On Failure    Should Be Equal    30    30
    Log To Console    All validations executed
