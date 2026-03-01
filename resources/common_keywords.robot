*** Settings ***
Library   Browser

*** Variables ***
# Differnt types of variables can be stored here
# like browser types, url, etc.
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium

*** Keywords ***
# Here we define our own custom keywords that are reusable
Open Maximized Browser
  New Browser  browser=${BROWSER}  headless=false  args=["--start-maximized"]
  New Context  viewport=${None}
  New Page     ${URL}