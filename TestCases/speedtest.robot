#selenium speed = set selenium speed   __ second=time taken to execute automated test
#selenium timeout =  we are wait for some specific condition to meet before falling
#implict wait= when the locator take time to locate the element
or if there is having any sync problem we use implicity wait
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

 # selenium timeout
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
