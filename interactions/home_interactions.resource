*** Settings ***
Library     Browser
Resource    ../resources/locators_home.resource


*** Keywords ***
Click Logout Button
    Click           ${LOGOUT_BUTTON}