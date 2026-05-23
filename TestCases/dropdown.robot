*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${browser}      chrome
${url}       https://testautomationpractice.blogspot.com/?utm_source=chatgpt.com&m=1

*** Test Cases ***
Testing dropdown
    Open Browser  ${url}  ${browser}
    maximize browser window
    #dropdown
    Select From List By Label   country     Canada
    sleep   5
    Select From List By Index   country     1
    #listbox
    Select From List By Label   colors    Red
*** Keywords ***
