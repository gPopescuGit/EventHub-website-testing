*** Settings ***
Resource    ../interactions/login_interactions.resource
Resource    ../resources/locators_login.resource
Resource    ../interactions/browser.resource

*** Keywords ***
Perform Login
    [Arguments]     ${username}     ${password}
    New Page        ${LOGIN_URL}
    Fill Username   ${username}
    Fill Password   ${password}
    Click Login Button

Perform Logout
    Click Logout Button