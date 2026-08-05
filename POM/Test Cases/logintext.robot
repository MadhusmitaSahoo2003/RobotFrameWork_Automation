*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/loginkey.robot

*** Variables ***
${browser}   Chrome
${url}    https://www.softwaretestingclass.com/exercise2-add-steps-to-the-flightfinder-action-and-selectflight-action-uftqtp-training-tutorial-10-1/mercury-tours-website-welcome-page/
${user}   tutorial
${pwd}    tutorial

*** Test Cases ***
logintest
   Open my Browser  ${url}  ${browser}
   Enter UserName   ${user}
   Enter Password   ${pwd}
   Click signin
   sleep   3   seconds
   verify sucessful login
   Close My Browser


