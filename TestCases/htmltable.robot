*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
test html table
    Open Browser   https://testautomationpractice.blogspot.com/    chrome
    maximize browser window
    ${rows}=  Get Element Count  //table[@name='BookTable']/tbody/tr
    ${cols}=  Get Element Count  //table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${rows}
    log to console    ${cols}

    ${data}=  Get Text  xpath://table[@name='BookTable']/tbody/tr[5]/td
    log to console    ${data}

    Table Column Should Contain    xpath://table[@name='BookTable']  2  Author
    Table Row Should Contain     xpath://table[@name='BookTable']  4  Learn JS
    Table Cell Should Contain    xpath://table[@name='BookTable']  5  2  Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']   BookName