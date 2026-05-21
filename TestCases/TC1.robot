*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}    https://demo.nopcommerce.com/login?returnUrl=%2F
${email}    msmadhusmitasahoo2003@gmail.com
${password}    @Madhu2003
*** Test Case ***
LoginTest

    open browser    ${url}   ${browser}
    Maximize Browser Window
#    Wait Until Element Is Visible  xpath=//a[@class='ico-login']    10s
#    click link  xpath=//a[@class='ico-login']
    Login To Application
    close browser

*** Keywords ***

Login To Application
    Wait Until Element Is Visible    id=Email    10s
    Input Text    id=Email        ${email}
    Input Text    id=Password     ${password}
    Click Element    xpath=//button[text()='Log in']





