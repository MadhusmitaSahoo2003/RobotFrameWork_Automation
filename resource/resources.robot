*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
launch browser
    [Arguments]    ${apputl}    ${appbrowser}
    Open Browser   ${apputl}    ${appbrowser}
    maximize browser window
    ${title}=  get title
    [Return]     ${title}