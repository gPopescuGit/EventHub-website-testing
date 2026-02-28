*** Settings ***
Resource    ../actors/user.resource
Resource    ../interactions/browser.resource
Test Setup    Start Browser
Test Teardown    Stop Browser

*** Test Cases ***
Homepage Loads
    User Opens Homepage
