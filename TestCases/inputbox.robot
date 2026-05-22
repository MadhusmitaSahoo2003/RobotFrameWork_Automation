*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${browser}   chrome
${url}    https://demo.nopcommerce.com/login?returnUrl=%2F
*** Test Cases ***
TestingInputBox
    Open Browser   ${url}   ${browser}
    maximize browser window
#    Title Should Be    nopCommerce demo store. Home page title
#    Click Link    xpath://a[@class='ico-login']
    Wait Until Element Is Visible    id=Email    timeout=15s
    ${email_text}   set variable   id=Email


    element should be visible     ${email_text}
    element should be enabled    ${email_text}


    Input Text   ${email_text}    msmadhusmitasahoo2003@gmail.com
    sleep   5
    clear element text    ${email_text}
    sleep   3
    Close Browser


*** Keywords ***
