*** Settings ***
Library     ../Resources/ReadJsonContent.py

*** Keywords ***
Fetch data from file
    ${jsonbody}     read request content
    [return]    ${jsonbody}
