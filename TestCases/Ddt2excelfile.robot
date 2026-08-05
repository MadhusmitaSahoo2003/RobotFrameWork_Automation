*** Settings ***
Library    SeleniumLibrary
Resource  ../resource/login_resourse.robot
Library    DataDriver  ../Testdata/loginexcel.xlsx   sheet_name=Sheet1
Suite Setup  open my browser
Suite Teardown  close browser
Test Template  invalid login
*** Variables ***

*** Test Cases ***
logintestwithexcel using    ${gender}   ${firstname}  ${lastname}  ${gmail}  ${password}  ${c-password}

*** Keywords ***
invalid login
    [Arguments]  ${gender}   ${firstname}  ${lastname}  ${gmail}  ${password}  ${c-password}
    sleep  3
    Input Gender    ${gender}
    sleep  3
    Input Firstname    ${firstname}
    Input Lastname   ${lastname}
    Input Gmail    ${gmail}
    Input Password   ${password}
    Input ConformPassword   ${c-password}

    click register button
    error mrssage should be displayed
