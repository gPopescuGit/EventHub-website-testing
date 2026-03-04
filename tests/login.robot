*** Settings ***
Resource    ../actors/user.resource
Resource    ../interactions/browser.resource
Resource    ../resources/variables.resource
Test Setup    Start Browser
Test Teardown    Stop Browser

*** Test Cases ***
Valid User Can Log In And Log Out
    Given User is on the homepage
    When User Logs In    ${EMAIL}    ${PASS}
    Then Discover page is visible
    When User Logs Out
    Then Homepage is visible

Invalid User Cannot Login
    Given User is on the homepage
    When User Logs In    ${EMAIL}    ${INVALID_PASS}
    Invalid Login Message Is Displayed
    And Homepage is visible

Email Validation Message Is Displayed
    Given User is on the homepage
    When User Logs In    ${INVALID_EMAIL}    ${PASS}
    Invalid Email Message Is Displayed
    And Homepage is visible

Password Validation Message Is Displayed
    Given User is on the homepage
    When User Logs In    ${EMAIL}    ${SHORT_PASS}
    Error Message Displayed Short Password
    And Homepage is visible