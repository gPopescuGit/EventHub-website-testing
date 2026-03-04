*** Variables ***
${LOGIN_URL}        https://eventhub.rahulshettyacademy.com/login
${USERNAME_FIELD}   //input[@id="email"]
${PASSWORD_FIELD}   //input[@id="password"]
${LOGIN_BUTTON}     //button[@id="login-btn"]
${LOGOUT_BUTTON}     //button[@id="logout-btn"]
${INVALID_LOGIN}    //div[contains(@class,'bg-red-50') and .//p[normalize-space()='Invalid email or password']]
${INVALID_EMAIL_FIELD}    //p[normalize-space()='Enter a valid email']
${SHORT_PASS_FIELD}     //p[normalize-space()='Password must be at least 6 characters']