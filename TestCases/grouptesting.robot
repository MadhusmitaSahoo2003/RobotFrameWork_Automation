*** Settings ***
*** Test Cases ***
TC1 User RegistrationTest
   [Tags]  sanity
   log to console  This is user registration test
   log to console  user registration test over
TC2 LoginTest
   [Tags]  regression
   log to console  This is login test
   log to console  Login test is over

TC1 Chnage User settings
   [Tags]  regression
   log to console  This is changing user setting test
   log to console  chamge use settings test is over

TC1 logout test
    [Tags]   sanity
    log to console   This is logout tedt case


