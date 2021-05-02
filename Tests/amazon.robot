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
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  id=nav-search-submit-button
    Wait Until Page Contains  results for "Ferrari 458"
    Click Link  xpath=//*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/h2/a
    Wait Until Page Contains  Back to results
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart
    Click Link  xpath=//*[@id="hlb-ptc-btn-native"]
    Wait Until Page Contains  Sign-In
    Close Browser

*** Keywords ***
