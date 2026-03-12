*** Settings ***
Library  Browser

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium

*** Test Cases ***
Open New Page
  # Browser and Context set by default values
  New Page   ${URL}

Open OrangeHRM Page
   Open Browser     ${URL}  ${BROWSER}  headless=false