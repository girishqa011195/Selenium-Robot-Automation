*** Settings ***
Library     JSONLibrary
Library     RequestsLibrary
Library     Collections
*** Variables ***
${Base_URL}                 http://thetestingworldapi.com/
*** Test Cases ***
put_request
    create session          updaterecord        ${Base_URL}
    ${body}     create dictionary       id=1149195  first_name=sample   middle_name=test    last_name=format    date_of_birth=01/11/1995
    ${header}   create dictionary       Content-Type=application/json
    ${response}     put request            updaterecord         api/studentsDetails/1149195     data=${body}    headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}
    ${status}       convert to string       ${response.status_code}
    should be equal     ${status}       200
    ${response1}    get request     updaterecord         api/studentsDetails/1149195
    log to console  ${response1.content}
