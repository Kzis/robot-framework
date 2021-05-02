*** Settings ***
Documentation  Amazon web automate tests
Library  Selenium2Library

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  Can open with Google Chrome
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Wait Until Page Contains  Customer Service
    Close Browser

*** Keywords ***
