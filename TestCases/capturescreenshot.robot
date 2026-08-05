*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Testing frame
    Open Browser   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    maximize browser window
    sleep  5

    Input Text   name=username  admin
    Input Text   name=password   admin123


    Capture Element Screenshot  xpath=//div[@class="orangehrm-login-container"]    C:\\Users/Admin/PycharmProjects//PythonProject9/logo.png
    Capture Page Screenshot    C:/Users/Admin/PycharmProjects/PythonProject9/logintc.png