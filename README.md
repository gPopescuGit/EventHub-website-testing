**Tech stack:**
* Python 3.12
* Robot Framework 7.4.1 [test automation]
* Playwright 1.58.2 [web automation]
* Github for version control
* Github Actions for CI/CD
* Ollama3 as AI assistant [In work]


**Setup (Bash)**
- Navigate into the project folder     
  cd EventHub-website-testing   
- Install Python dependencies   
    pip install robotframework  
    pip install robotframework-browser   
- Install Playwright browser binaries   
    rfbrowser init   
- Set the required environment variables     
    - On Windows:   
      set TEST_USER_EMAIL=your_email   
      set TEST_USER_PASSWORD=your_password   
    - On macOS/Linux:  
      export TEST_USER_EMAIL=your_email  
      export TEST_USER_PASSWORD=your_password   
- Run the test suite   
    robot --outputdir results tests/   
- Open the test report   
    results/report.html    
    results/log.html   
  
**Why store environment variables**   
The test suite uses environment variables to load login credentials securely.   
In CI, these values come from GitHub Secrets.   
Locally, you must set them yourself because secrets are not stored in the repository.   
