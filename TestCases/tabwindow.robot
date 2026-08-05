*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing frame
    Open Browser   https://demo.automationtesting.in/Windows.html    chrome
    maximize browser window
    Click Element     //*[@id="Tabbed"]/a/button
    Switch Window    title=Selenium
    Click Element   //*[@id="main_navbar"]/ul/li[2]/a/span
    sleep  2
    Close all browsers