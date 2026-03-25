*** Settings ***
Resource    ../actors/user.resource
Resource    ../interactions/browser.resource
Resource    ../resources/variables.resource
Test Setup    Start Browser
Test Teardown    Stop Browser

# missing test cases in relation with Login feature requirements
# user is redirected to event list page after successful login
# user should remain logged in until explicitly logged out
# password input masked as '*' during login process

*** Test Cases ***
Valid User Can Log In
    [Tags]  TC001_Valid_Login  SCN001   positive
    Given User is on the LoginPage
    When User Logs In    ${EMAIL}    ${PASS}
    Then HomePage is visible

Invalid User Cannot Login
    [Tags]  TC002_Invalid_Login  SCN002  negative
    Given User is on the LoginPage
    When User Logs In    ${EMAIL}    ${INVALID_PASS}
    Then Invalid Login Message Is Displayed
    And LoginPage is visible

Email Validation Message Is Displayed
    [Tags]  TC003_Email_Validation   SCN003  negative
    Given User is on the LoginPage
    When User Logs In    ${INVALID_EMAIL}    ${PASS}
    Then Invalid Email Message Is Displayed
    And LoginPage is visible

Password Validation Message Is Displayed
    [Tags]  TC004_Password_Validation    SCN003  negative
    Given User is on the LoginPage
    When User Logs In    ${EMAIL}    ${SHORT_PASS}
    Then Error Message Displayed Short Password
    And LoginPage is visible

#
Session Persists After Login
    [Tags]  TC005_Session_Persistence    SCN004    positive
    Given User is on the LoginPage
    When User Logs In    ${EMAIL}    ${PASS}
    Then HomePage is visible
    When User Refreshes The Page
    Then HomePage is visible
    User Is Still Authenticated After 1 Minute


Logout Ends Session
    [Tags]  TC006_Logout_Ends_Session    SCN005    positive
    Given User is on the LoginPage
    When User Logs In    ${EMAIL}    ${PASS}
    Then HomePage is visible
    When User Logs Out
    Then LoginPage is visible
