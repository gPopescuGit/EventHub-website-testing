*** Settings ***
Resource    ../tasks/open_homepage.resource
Resource    ../tasks/login.resource

*** Keywords ***
User Opens Homepage
    Perform Open Homepage

User Logs In
    [Arguments]    ${username}    ${password}
    Perform Login    ${username}    ${password}

User Logs Out
    Perform Logout
