*** Settings ***
Resource    ../tasks/open_homepage.resource
Resource    ../tasks/login.resource

*** Keywords ***
User is on the homepage
    Perform Open Homepage

User Logs In
    [Arguments]    ${username}    ${password}
    Perform Login    ${username}    ${password}

User Logs Out
    Perform Logout

Discover page is visible
    Wait for Elements State     //h1[contains(., "Discover")]       visible

Homepage is visible
    Wait for Elements State     //h1[contains(., "Sign in")]       visible

Invalid Login Message Is Displayed
    Error Message Displayed Invalid Login

Invalid Email Message Is Displayed
    Error Message Displayed Invalid Email

Short Password Message Is Displayed
    Error Message Displayed Short Password