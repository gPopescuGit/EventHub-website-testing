*** Settings ***
Variables    ../healer_agent/credentials_provider.py

*** Variables ***
${BASE_URL}     https://eventhub.rahulshettyacademy.com/
${INVALID_EMAIL}        fooEmail
${INVALID_PASS}         fooPassword
${SHORT_PASS}           fooP

# hardcoded credentials removed to enable:
# - local execution using healer_credentials
# - CI execution using environment variables from Github Secrets
# ${EMAIL}        %{TEST_USER_EMAIL}
# ${PASS}         %{TEST_USER_PASSWORD}
