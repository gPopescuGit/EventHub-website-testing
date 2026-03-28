*** Settings ***
Test Setup    Start Browser
Test Teardown    Stop Browser

*** Test Cases ***
#REQ: As an authenticated user, I want to navigate between Home, Events, My Bookings, and Admin pages via the header menu.
#Authenticated User Can Navigate Between Home and Events

#Authenticated User Can Navigate Between Home and My Bookings

#Authenticated Admin Can Navigate Between Home and Admin Manage Events

#Authenticated Admin Can Navigate Between Home and Admin Manage Bookings

#REQ: As an authenticated user, I should see the currently active page highlighted in the navigation bar.
#Active Page Is Highlighted In Navigation Bar

#REQ: As an authenticated user, I can log out of the application using the Logout button.
#Authenticated User Can Log Out
#    Given User is on the HomePage
#    When User Logs Out
#    Then LoginPage is visible