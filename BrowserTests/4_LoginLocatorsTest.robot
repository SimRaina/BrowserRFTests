*** Settings ***
Library   Browser
Resource   ../resources/common_keywords.robot
Suite Setup     Open Browser To Login Page   ${BROWSER}  ${URL}
Suite Teardown  Close Context

*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com
${BROWSER}  chromium

*** Test Cases ***
Valid Login Test
    #Enter username
    Fill Text        input[name="username"]     Admin
    # Fill Text            xpath=//input[@name="username"]     Admin
    #Enter password
    Fill Text        input[name="password"]     admin123
    # Fill Text            xpath=//input[@name="password"]     admin123
    #Click on login button
    Click            //button[text()=" Login "]

