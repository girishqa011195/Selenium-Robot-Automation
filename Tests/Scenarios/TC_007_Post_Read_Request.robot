*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Resource    ../../Tests/SupportSteps/UserDefinedKeyword.robot

*** Variables ***
${Base_URL}         http://thetestingworldapi.com/
*** Test Cases ***
Post_Request
    create session         AddData        ${Base_URL}
    ${body}     Fetch data from file
    ${header}   create dictionary  Content-Type=application/json
    ${response}        post request           AddData        api/studentsDetails       data=${body}     headers=${header}
    log to console      ${response.status_code}
    log to console      ${response.content}
    ${status}   convert to string   ${response.status_code}
    should be equal     ${status}       201
