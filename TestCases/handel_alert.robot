*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing alert
    Open Browser   https://testautomationpractice.blogspot.com/   chrome
    maximize browser window
    Click Button   //*[@id="alertBtn"]
    sleep   3
    Handle Alert  Accept

    Handle Alert   Leave
    Alert Should Be Present  I am an alert box!
 