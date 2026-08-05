*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
Scrolling test
    Open Browser   https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome
    maximize browser window
    sleep   3
#    Execute Javascript  window.scrollTo(0,1500 )
#    sleep  5

#    Scroll Element into view   xpath://*[@id="ct-list"]/table[1]/tbody/tr[86]/td[1]/img
    sleep  5
    execute javascript   window.scrollTo(0,document.body.scrollHeight)
    sleep  4
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)


