*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://demoqa.com/checkbox
${BROWSER}    chrome



*** Test Cases ***
SELECT THE CHECKBOX
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2s

    #Expand the tree
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    Sleep    1s
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    Sleep    1s
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    Sleep    1s
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    # Scroll down
    Execute JavaScript    window.scrollTo(0,300)
    Sleep    1s
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    Sleep    1s
    Click Element    //div[@role='treeitem']/span[contains(@class,'rc-tree-switcher_close')]
    Sleep    1s
    Click Based On Title    Notes
    Close Browser


*** Keywords ***
#Check checkboxes
Click Based On Title
    [Arguments]    ${title}
    Click Element    xpath=//span[@title="${title}"]/preceding-sibling::*[1]

