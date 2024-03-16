*** Settings ***
Library         RequestsLibrary
Library         robotframework-jsonlibrary
Library     JSONLibrary
Library         Collections
*** Variables ***
${Base_URL}                 http://thetestingworldapi.com/
${StudentID}                28
*** Test Cases ***
TC001_Get_Request
    create session          FetchData         ${Base_URL}
    ${response}     get on session             FetchData         api/studentsDetails/${StudentID}
    log to console      ${response.status_code}
    ${actual_result}    convert to string  ${response.status_code}
    should be equal     ${actual_result}         200
    log to console      ${response.content}
    ${Json_format}       To Json   ${response.content}
    @{status_list}       get value from json            ${Json_format}          status
    ${status}       get from list       ${status_list}         0
    log  ${status}





