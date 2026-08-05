*** Settings ***
Library    SeleniumLibrary
Resource  ../resource/login_resourse.robot
Suite Setup  open my browser
Suite Teardown  close browser
Test Template  invalid login

*** Variables ***

*** Test Cases ***
Right user empty pass     admin@yourstore.com     $[empty}
Right user wrong pass     admin@yourstore.com      xyz
wrong user right pass     admi@yourstore.com       admin
wrong user empty pass     admi@yourstore.com       xyz


*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    go to login page
    Wait Until Element Is Visible   id=Email
    Input Username      ${username}
    Input password      ${password}
    click log in button
    error mrssage should be displayed
