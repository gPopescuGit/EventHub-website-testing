*** Settings ***

*** Keywords ***
Refresh Page
    Reload

One Minute Passed
    Sleep    60s

Logout Visible
    Wait For Elements State    [data-testid="logout-btn"]    visible    timeout=5s