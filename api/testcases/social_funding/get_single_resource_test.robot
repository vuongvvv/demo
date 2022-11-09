*** Settings ***
Documentation    GET LIST USERS

Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common.robot
Resource    ../../keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Variables ***
${expected_color}    \#C74375

*** Test Cases ***
valid_id
    Get Single Resource    2
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    data.id    ${2}
    Response Property Should Be    data.name    fuchsia rose
    Response Property Should Be    data.year    ${2001}
    Response Property Should Be    data.color    ${expected_color}
    Response Property Should Be    data.pantone_value    17-2031
    
not_found_id
    Get Single Resource    99
    Response Correct Code    ${NOT_FOUND_CODE}