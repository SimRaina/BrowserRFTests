*** Settings ***
Library   Browser

*** Variables ***
${EXPECTED_ERROR_MESSAGE}   Invalid credentials

*** Keywords ***
# Here we define our own custom keywords that are reusable
Open Maximized Browser
  [Arguments]  ${BROWSER}
  New Browser  browser=${BROWSER}  headless=false  args=["--start-maximized"]
  New Context  viewport=${None}

Open Webpage
  [Arguments]  ${URL}
  New Page     ${URL}


# Exercise: Create new custom keyword to create new browser and open webpage in one step
Open Browser To Login Page
    [Arguments]  ${BROWSER}  ${URL}
     New Browser  browser=${BROWSER}  headless=false  args=["--start-maximized"]
     New Context  viewport=${None}
     New Page     ${URL}

Invalid Login to OrangeHRM
    [Arguments]  ${USERNAME}  ${PASSWORD}
    Fill Text        input[name="username"]     ${USERNAME}
    Fill Text        input[name="password"]     ${PASSWORD}
    Click            //button[text()=" Login "]
    ${ERROR_MESSAGE}   Get Text      //p[contains(@class, 'alert')]
    Should Be Equal     ${ERROR_MESSAGE}   ${EXPECTED_ERROR_MESSAGE}