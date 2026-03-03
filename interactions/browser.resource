*** Settings ***
Library    Browser

*** Keywords ***
Start Browser
    New Browser    chromium    headless=${True}
    New Context

Stop Browser
    Close Browser
