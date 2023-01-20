*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TC-01 Launch Youtube Website
    ${chrome_options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Create Webdriver    Chrome    chrome_options=${chrome_options}
    Set Window Size    1400    600
    Go To   https://www.youtube.com
    Sleep  5s
    ${title}   Get Title
    Log    ${title}
    Close Browser
