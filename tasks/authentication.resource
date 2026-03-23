*** Settings ***
Resource    ../interactions/login_interactions.resource
Resource    ../resources/locators_login.resource
Resource    ../interactions/browser.resource

*** Keywords ***
Open LoginPage
    New Page    ${BASE_URL}

Perform Login
    [Arguments]     ${username}     ${password}
    New Page        ${LOGIN_URL}
    Fill Username   ${username}
    Fill Password   ${password}
    Click Login Button

Perform Logout
    Click Logout Button

Error Message Displayed Invalid Login
    Error Invalid Login Displayed

Error Message Displayed Invalid Email
    Error Invalid Email Displayed

Error Message Displayed Short Password
    Error Short Password Displayed

