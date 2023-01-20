*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary


*** Variables ***

*** Test Cases ***
YoutubeWebsiteLaunch
    [Documentation]  This test case will print Youtube website home page title
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    open browser    Chrome    chrome_options=${chrome_options}
    Set Window Size    1920    1080
    Go To   https://www.youtube.com
    get title
    log title
    close browser

*** Keywords ***









