*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
mouse action
    #right click action/context menu action
    Open Browser   https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    maximize browser window
    Open Context Menu   //span[@class='context-menu-one btn btn-neutral']
    sleep  3
    # double click action
    Go to   https://testautomationpractice.blogspot.com/
    maximize browser window
    Double Click Element   //button[normalize-space()='Copy Text']
    sleep  3
    #drag and drop
    Go to   https://codepen.io/EpsilonDeltaCriterion/pen/jLoPgE
    maximize browser window
    Select Frame  id=result
    Drag And Drop     id=box5     id=box105
    Unselect Frame
    sleep  3

    Close Browser