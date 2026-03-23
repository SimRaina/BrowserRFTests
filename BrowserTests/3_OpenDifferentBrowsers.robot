*** Settings ***
Library   Browser

*** Variables ***
${URL}     https://demo.nopcommerce.com/

*** Test Cases ***
Open Chrome Browser
  New Browser  chromium  headless=false
  New Page    ${URL}

Open Edge Browser
  New Browser  chromium  channel=msedge  headless=false
  New Page    ${URL}

Open Firefox Browser
  New Browser  firefox  headless=false
  New Page   ${URL}