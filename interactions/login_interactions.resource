*** Settings ***
Library     Browser
Resource    ../resources/locators_login.resource

*** Keywords ***
Fill Username
    [Arguments]     ${username}
    Fill Text       ${USERNAME_FIELD}   ${username}

Fill Password
    [Arguments]     ${password}
    Fill Text       ${PASSWORD_FIELD}   ${password}

Click Login Button
    Click           ${LOGIN_BUTTON}

Click Logout Button
    Click           ${LOGOUT_BUTTON}

Error Invalid Login Displayed
    Wait For Elements State    ${INVALID_LOGIN}    visible    5s

Error Invalid Email Displayed
    Wait For Elements State    ${INVALID_EMAIL_FIELD}    visible    5s

Error Short Password Displayed
    Wait For Elements State    ${SHORT_PASS_FIELD}    visible    5s