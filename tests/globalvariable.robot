*** Test Cases ***
Scope Example
    Set Test Variable    ${TEST_VAR}    TestValue
    Set Suite Variable   ${SUITE_VAR}   SuiteValue
    Set Global Variable  ${GLOBAL_VAR}  GlobalValue
    Print Variables

*** Keywords ***
Print Variables
    Log    Test: ${TEST_VAR}
    Log    Suite: ${SUITE_VAR}
    Log    Global: ${GLOBAL_VAR}