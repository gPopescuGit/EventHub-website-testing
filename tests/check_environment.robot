*** Settings ***
Library    Browser

*** Test Cases ***
Environment Check
    New Browser    chromium
    New Page    https://eventhub.rahulshettyacademy.com/
    Get Title    ==    EventHub — Discover & Book Events
    Close Browser
