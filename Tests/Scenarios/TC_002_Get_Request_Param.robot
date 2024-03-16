*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections

*** Variables ***
${Base_URL}             https://reqres.in/
*** Test Cases ***
Get_Request_param
    create session      get_param    ${Base_URL}
    &{param}            create dictionary   page=2
    ${response}  GET On Session         get_param   /api/users      params=${param}
    log to console      ${response.status_code}
    log to console      ${response.content}
    ${statuscode}       CONVERT TO STRING   ${response.status_code}
    should be equal     ${statuscode}       200
    ${jsonformat}            to json         ${response.content}
    @{name_list}     get value from json        ${jsonformat}       data[0].first_name
    ${name}     get from list   ${name_list}    0
    log to console      ${name}


