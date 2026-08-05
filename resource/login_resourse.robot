*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${login url}  https://demowebshop.tricentis.com/register

${browser}   chrome

*** Keywords ***
open my browser
    Open Browser    ${login url}   ${browser}
    maximize browser window
    sleep  15s

close browser
    close All Browsers

go to login page
    Go To  ${login url}
    Wait Until Element Is Visible   id=Email   10s

Input Gender
    [Arguments]   ${gender}
    Run Keyword If    '${gender}'=='male'      Click Element    id=gender-male
    Run Keyword If    '${gender}'=='female'    Click Element    id=gender-female

Input Firstname
    [Arguments]   ${firstname}
    Input Text    id=FirstName    ${firstname}
Input Lastname
    [Arguments]   ${lastname}
    Input Text    id=LastName    ${lastname}
Input Gmail
    [Arguments]   ${gmail}
    Input Text    name=Email    ${gmail}
Input Password
    [Arguments]   ${password}
    Input Text    id=Password    ${password}
Input ConformPassword
    [Arguments]   ${c-password}
    Input Text    id=ConfirmPassword    ${c-password}
click register button
    click Element   xpath://*[@id="register-button"]
error mrssage should be displayed
    page should contains   Login was unsuccessful
dashbord message should be displayed
    page should contains  Dashboard

