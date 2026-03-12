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


# Exercise: Create new custom keyword to create new browser and open webpage in one step
