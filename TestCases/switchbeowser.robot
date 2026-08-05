*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing frame
    Open Browser   https://www.google.com/    chrome
    maximize browser window

    sleep  3

    Open Browser   https://www.bing.com/    chrome
    maximize browser window


    Switch Browser  1
    ${title}=   get title
    log to console  ${title}


    Switch Browser  2
    ${title}=   get title
    log to console  ${title}



