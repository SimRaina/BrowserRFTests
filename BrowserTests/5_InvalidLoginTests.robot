*** Settings ***
Library    Browser
Resource   ../resources/common_keywords.robot
Suite Setup    Open Browser To Login Page    ${BROWSER}  ${URL}
Test Template  Invalid Login to OrangeHRM

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium

*** Test Cases ***
Invalid Password                 Admin   admin

Invalid Username                 adm     admin123

Invalid Username and Password    adm     admin



