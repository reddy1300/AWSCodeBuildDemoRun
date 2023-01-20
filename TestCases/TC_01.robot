*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***
${BROWSER_NAME}  chrome

*** Test Cases ***
YoutubeWebsiteLaunch
    [Documentation]  This test case will print Youtube website home page title
    open browser  https://www.youtube.com/  browser=${BROWSER_NAME}
    get title
    log title
    close browser

*** Keywords ***









