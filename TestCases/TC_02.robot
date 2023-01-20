*** Settings ***
Library    SeleniumLibrary
Resource   TestCases/TC_04.robot
Library  SeleniumLibrary
Resource    TestCases/TC_04.robot
*** Variables ***
${BROWSER_NAME}  firefox

*** Test Cases ***
RahulShettyWebsiteLaunch
    [Documentation]  This test case will print RahulShetty website home page title
    open browser  https://rahulshettyacademy.com/  browser=${BROWSER_NAME}
    get title
    log title
    close browser
    