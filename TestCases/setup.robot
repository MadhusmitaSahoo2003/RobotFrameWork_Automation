*** Settings ***
Suite Setup    Log To Console  open browser
Suite Teardown   Log To Console  closing browesr


Test Setup   Log To Console  login application
Test Teardown  Log To Console  log out from applicaion

*** Test Cases ***
Tc1 prepaid recharge
  Log To Console   this is prepaid recharge
Tc2 postpaid recharge
  Log To Console  this is postpaid recharge
Tc3 search
  Log To Console  this is search testcase

