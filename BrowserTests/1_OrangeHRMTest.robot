*** Settings ***
# Import libraries, custom libraries, resources, test templates
Library  Browser
Resource   ../resources/common_keywords.robot
Suite Setup     Open Maximized Browser  ${BROWSER}     #before all tests
Test Setup      Open Webpage    ${URL}                 #before each tests
Suite Teardown  Close Context                          # keep a single context

*** Variables ***
# Differnt types of variables can be stored here
# like browser types, url, etc.
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium
${EXPECTED_URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${EXPECTED_TITLE}  OrangeHRM

*** Test Cases ***
# Here we define one or more tests cases
Verify Current URL
   ${CURRENT_URL}  Get Url
   Log To Console    ${CURRENT_URL}
   # Validation of opened url
   Should Be Equal    ${CURRENT_URL}    ${EXPECTED_URL}

Verify Page Title
   Open Webpage    ${URL}
   ${PAGE_TITLE}  Get Title
   Log To Console    ${PAGE_TITLE}
   # Validation of title
   Should Be Equal    ${PAGE_TITLE}  ${EXPECTED_TITLE}

