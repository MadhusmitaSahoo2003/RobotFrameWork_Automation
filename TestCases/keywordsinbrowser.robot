*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing frame
    Open Browser   https://www.google.com/    chrome
    maximize browser window
    ${loc}=   get location
    log to console  ${loc}
    sleep  3

    go to  https://www.bing.com/
    ${loc}=   get location
    log to console  ${loc}
    sleep  3
    go back
    ${loc}=   get location
    log to console  ${loc}
