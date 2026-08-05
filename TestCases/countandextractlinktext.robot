*** Settings ***
Library   SeleniumLibrary
*** Variables ***

*** Test Cases ***
mouse action
    Open Browser   https://demo.guru99.com/    chrome
    maximize browser window
    ${alllinkcount}=  Get Element Count  xpath://a
    log to console    ${alllinkcount}

    @{linkitem}    create list
    FOR  ${i}  IN RANGE    1   ${alllinkcount}
        ${linktext}=  Get Text  xpath=(//a)[${i}]
        Log To Console    ${linktext}
    END

