#selenium speed = set selenium speed   __ second
#selenium timeout
#implict wait
#sleep
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}   chrome
${url}      https://demowebshop.tricentis.com/register
*** Test Cases ***
regtest
    Open Browser   ${url}   ${browser}
    maximize browser window

   #bydefault how much time take  by selenium time out
   ${time}=  get selenium timeout
   log to console   ${time}
    set selenium timeout  10 seconds
    wait until page contains   Registeration

#    set selenium speed   3 second

    Select Radio Button  Gender  F
    Input Text   id=FirstName    Madhusmita
    Input Text   id=LastName     Sahoo
    Input Text   id=Email        msmadhusmitasahoo2003@gamil.com
    Input Text   id=Password     @Madhu2003
    Input Text   id=ConfirmPassword     @Madhu2003




*** Keywords ***
