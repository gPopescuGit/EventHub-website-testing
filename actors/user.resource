*** Settings ***
Resource    ../tasks/authentication.resource

*** Keywords ***
User is on the LoginPage
    Open LoginPage

User Logs In
    [Arguments]    ${username}    ${password}
    Perform Login    ${username}    ${password}

User Logs Out
    Perform Logout
#TODO: use locators from home resource files
HomePage is visible
    Wait for Elements State     //h1[contains(., "Discover")]       visible
#TODO: use locators from login resource files
LoginPage is visible
    Wait for Elements State     //h1[contains(., "Sign in")]       visible

Invalid Login Message Is Displayed
    Error Message Displayed Invalid Login

Invalid Email Message Is Displayed
    Error Message Displayed Invalid Email

Invalid Password Message Is Displayed
    Error Message Displayed Short Password