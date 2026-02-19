*** Variables ***
${A}    15
${B}    25

&{USER}    name=Thommai    age=25    city=Chennai

@{FRUITS}    Apple    Banana    Mango

*** Test Cases ***
Addition Using Variables
    ${result}=    Evaluate    ${A} + ${B}
    Log To Console    Result is: ${result}

Dictionary Example
    Log To Console    ${USER}[name]
    Log To Console    ${USER}[age]

List Example
    Log To Console    ${FRUITS}[0]
    Log To Console    ${FRUITS}[1]
