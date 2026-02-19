*** Test Cases ***
Addition Test
    ${result}=  Evaluate    10 + 20
    Log To Console    Result is: ${result}

Subraction Test
    ${result}=  Evaluate    20-12
    Log To Console  Result is: ${result}

Multiplication Test
    ${result}=   Evaluate    20*3
    Log To Console  Result is: ${result}

Division
    ${result}=  Evaluate    6/2
    Log To Console  Result is: ${result}