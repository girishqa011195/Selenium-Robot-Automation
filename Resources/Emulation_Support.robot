*** Settings ***
Library     Selenium2Libray

*** Keywords ***
mobile emulation
    [Arguments]     ${device}       ${url}
    ${mobile emulation}=    Create Dictionary       deviceName=${device}
    ${chrome options}=  Evaluate      sys.modules['selenium.webdriver'].ChromeOptions()       sys, selenium.Webdiver
    Call Method     ${chrome options}       add_experimental_options        mobileEmulation     ${mobile emulation}
    Create Webdriver        Chrome      chrome_options=${chrome options}
    go to   ${url}


tablet landscape orientations
    [Arguments]     ${url}
    ${device metrics}=   Create Dictionary      width=${1024}       height${768}        pixelRatio=${3.0}
    ${mobile emulation}=    Create Dictionary       deviceMetrics=${device metrics}
    ${chrome options}=  Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()       sys, selenium.webdriver
    Call Method     ${chrome options}       add_experimental_options        mobile emulation    ${mobile emulation}
    Create Webdriver        chrome      chrome_options=${chrome options}
    go to   ${url}