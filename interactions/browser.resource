*** Settings ***
Library    Browser

*** Keywords ***
Start Browser
    New Browser    chromium    headless=${False}
    New Context

Stop Browser
    Close Browser
