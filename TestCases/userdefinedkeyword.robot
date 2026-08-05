*** Settings ***
Library   SeleniumLibrary
Resource    ../Resource/resources.robot


*** Variables ***
${url}       https://demo.guru99.com/
${browser}   chrome


*** Test Cases ***
userdefinedkeyword action
    ${pagetitle}=   launch browser  ${url}  ${browser}
    log to console  ${pagetitle}
    log     ${pagetitle}
    Input Text   name=emailid    madhu@gmail.com
