*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing frame
    Open Browser   https://www.selenium.dev/selenium/docs/api/java/index    chrome
    maximize browser window

    Select Frame  packageListFrame
    Click Link   org.openqa.selenium
    Unselect Frame
    sleep  3


    Select Frame  packageFrame
    Click Link   WebDriver
    Unselect Frame
    sleep  3

    Select Frame  classFrame
    Click Link   Help
    Unselect Frame

    Close Browser





