*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
*** Variables ***
${Base_URL}             http://thetestingworldapi.com/
*** Test Cases ***
End to End Scenario
    create session      E2E     ${Base_URL}
    ${body}     create dictionary  first_name=robot     middle_name=framework   last_name=tutorials     date_of_birth=01/11/1995
    ${header}   create dictionary  Content-Type=application/json
    ${response}     post request        E2E     api/studentsDetails        data=${body}    headers=${header}
    ${json_response}     to json    ${response.content}
    @{id_list}      get value from json     ${json_response}    id
    ${id}           get from list   ${id_list}      0
    log to console  ${response.status_code}
    log to console  ${id}
    ${body1}    create dictionary   id=${id}    first_name=selenium     middle_name=robot   last_name=tutorials     date_of_birth=01/11/1995
    ${response1}    put request     E2E     api/studentsDetails/${id}   data=${body1}       headers=${header}
    log to console  ${response1.content}
    log to console  ${response1.status_code}
    ${response3}    get request  E2E    api/studentsDetails/${id}
    log to console  ${response3.content}
    log to console  ${response3.status_code}
    ${response4}    delete request  E2E    api/studentsDetails/${id}
    log to console  ${response4.status_code}
    ${json_format}      to json     ${response4.content}
    @{status_list}       get value from json  ${json_format}     status
    ${status}   get from list   ${status_list}      0
    log    ${status}


