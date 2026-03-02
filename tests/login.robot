*** Settings ***
Resource    ../actors/user.resource
Resource    ../interactions/browser.resource
Resource    ../resources/variables.resource
Test Setup    Start Browser
Test Teardown    Stop Browser

*** Test Cases ***
User Can Log In And Out
    User Logs In    ${EMAIL}    ${PASS}
    Wait for Elements State     //h1[contains(., "Discover")]       visible
    User Logs Out
    Wait for Elements State     //h1[contains(., "Sign in")]       visible
