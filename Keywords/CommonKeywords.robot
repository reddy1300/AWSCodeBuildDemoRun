*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank  firefox
    get title
    log title



End Web Test
    close browser