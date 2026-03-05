*** Settings ***
# Import libraries, custom libraries, resources, test templates
Library  Browser
Resource   ../resources/common_keywords.robot

*** Variables ***
# Differnt types of variables can be stored here
# like browser types, url, etc.
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium
${EXPECTED_URL}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
# Here we define one or more tests cases
Open OrangeHRM Page
   Open Maximized Browser  ${BROWSER}
   Open Webpage    ${URL}
   ${CURRENT_URL}  Get Url
   Log To Console    ${CURRENT_URL}
   # Validation of opened url
   Should Be Equal    ${CURRENT_URL}    ${EXPECTED_URL}


