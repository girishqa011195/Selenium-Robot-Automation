*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}         https://postman-echo.com/get?foo1=bar1&foo2=bar2
*** Test Cases ***
Post_Request
    ${auth}         create list     postman     password
    create session         basicauth        ${Base_URL}
    ${params}       create dictionary       foo1=bar1       foo2=bar2
    ${header}       create dictionary       Authorization= Basic cG9zdG1hbjpwYXNzd29yZA==
    ${response}     get request           basicauth     headers=${header}       params=${params}    auth=${auth}
    log to console      ${response.content}
    log to console      ${response.status_code}

#ToolsQA
#TestPassword
