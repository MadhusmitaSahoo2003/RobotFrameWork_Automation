*** Settings ***
Library   SeleniumLibrary
Variables    ../pageobj/locators.py
*** Variables ***
*** Test Cases ***
*** Keywords ***
Open my Browser
      [Arguments]  ${url}  ${browser}
      Open browser   ${url}  ${browser}
      Maximize Browser Window
Enter UserName
      [Arguments]  ${username}
      Input Text  ${txt_loginUserName}   ${username}

Enter Password
      [Arguments]  ${password}
      Input Text  ${txt_loginPassword}   ${password}
Click signin
      Click Signin    ${btn_signIn}
verify sucessful login
      Title Should Be Find A Flight : Mercury Tours:
Close My Browser
      Close All Browsers