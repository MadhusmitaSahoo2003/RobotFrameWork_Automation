*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}    chrome

${url}     https://testautomationpractice.blogspot.com/?utm_source=chatgpt.com&m=1

*** Test Cases ***
Testing radio button and check box
    Open Browser      ${url}    ${browser}
    maximize browser window
    #selectig radio button
    Select Radio Button    gender      female
    #selecting checkbox
    Select Checkbox      thursday


*** Keywords ***

