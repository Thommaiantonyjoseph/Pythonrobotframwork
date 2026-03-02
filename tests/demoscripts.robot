*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary

*** Variables ***
${URL}        https://demoqa.com/text-box
${BROWSER}    chrome
${USER_NAME}  id:userName
${USER_EMAIL}   id:userEmail
${C_ADD}      id:currentAddress
${P_ADD}      id:permanentAddress
${SUBMIT}     id:submit
${V_NAME}     id:name
${V_EMAIL}    id:email
${C_VALUE}    //p[@id="currentAddress"]
${P_VALUE}    //p[@id="permanentAddress"]


*** Test Cases ***
Fill THE Form
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s
    ${json_data}=    Load JSON From File    data/testdata.json
    ${name}=    Get Value From JSON    ${json_data}    $.name
    ${email}=   Get Value From JSON    ${json_data}    $.email
    ${cur}=     Get Value From JSON    ${json_data}    $.current_address
    ${perm}=    Get Value From JSON    ${json_data}    $.permanent_address

    Input Text    ${USER_NAME}    ${name}[0]
    Input Text    ${USER_EMAIL}   ${email}[0]
    # Scroll down
    Execute JavaScript    window.scrollTo(0,300)
    Sleep    2s
    Input Text    ${C_ADD}    ${cur}[0]
    Input Text    ${P_ADD}  ${perm}[0]
    Sleep    2s
    Click Button    ${SUBMIT}
    Sleep    3s

    Element Should Contain    ${V_NAME}    ${name}[0]
    Element Should Contain    ${V_EMAIL}   ${email}[0]
    Element Should Contain    ${C_VALUE}    ${cur}[0]
    Element Should Contain    ${P_VALUE}    ${perm}[0]

    Close Browser