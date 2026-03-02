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
