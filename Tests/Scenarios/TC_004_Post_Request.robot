*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}         http://thetestingworldapi.com/
*** Test Cases ***
Post_Request
    create session         AddData        ${Base_URL}
    ${body}     create dictionary      first_name=sample    middle_name=data    last_name=format    date_of_birth=01/11/1995
    ${header}   create dictionary  Content-Type=application/json
    ${response}        post request           AddData        api/studentsDetails       data=${body}     headers=${header}
    log to console      ${response.status_code}
    ${status}   convert to string   ${response.status_code}
    should be equal     ${status}       201



