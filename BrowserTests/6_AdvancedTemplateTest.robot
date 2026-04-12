*** Settings ***
Library    Browser
Resource   ../resources/common_keywords.robot
Suite Setup    Open Browser To Login Page    ${BROWSER}  ${URL}

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium
@{INVALID_CREDENTIALS}   Admin   admin    adm    admin123    adm    admin

*** Test Cases ***
Invalid Login Tests
  [Template]     Invalid Login to OrangeHRM
  FOR   ${USERNAME}  ${PASSWORD}  IN  @{INVALID_CREDENTIALS}
        ${USERNAME}  ${PASSWORD}  # run three times
  END




