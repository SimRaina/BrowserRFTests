*** Settings ***
Library   Browser

*** Keywords ***
# Here we define our own custom keywords that are reusable
Open Maximized Browser
  [Arguments]  ${BROWSER}
  New Browser  browser=${BROWSER}  headless=false  args=["--start-maximized"]
  New Context  viewport=${None}

Open Webpage
  [Arguments]  ${URL}
  New Page     ${URL}