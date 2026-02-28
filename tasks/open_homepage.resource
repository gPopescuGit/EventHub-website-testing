*** Settings ***
Resource    ../interactions/browser.resource
Resource    ../resources/variables.resource

*** Keywords ***
Perform Open Homepage
    New Page    ${BASE_URL}
