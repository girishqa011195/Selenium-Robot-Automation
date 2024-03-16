*** Settings ***
Library         RequestsLibrary
Library         JSONLibrary
Library         Collections
*** Variables ***
${Base_URL}             http://thetestingworldapi.com/
*** Test Cases ***
Delete_Request
    create session      deleterecord        ${Base_URL}
    ${response}     delete request      deleterecord        api/studentsDetails/10
    log to console      ${response.status_code}
    log to console      ${response.content}
    ${status}   convert to string   ${response.status_code}
    should be equal     ${status}       200
    ${json_format}  to json     ${response.content}
     @{status_list}  get value from json     ${json_format}     status
     ${status}    get from list      ${status_list}       0
     should be equal    ${status}   true


