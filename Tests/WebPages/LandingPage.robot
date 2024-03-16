*** Settings ***
Library     BuiltIn
Resource    D:/robot framework/Data/Dev/Data.robot
Library     SeleniumLibrary
*** Variables ***
${Title_text}               Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in
*** Keywords ***
end user launches the browser
    Open Browser        ${amazon_url}           chrome
    capture page screenshot
maximize window
    Maximize Browser Window
    capture page screenshot
Verify that user should able to see the title of webpage
    ${Title}            Get Title
    ${verify}       run keyword and return status   should be equal       ${Title}    ${Title_text}
    run keyword if      '${verify}'=='true'     log     ${Title}
