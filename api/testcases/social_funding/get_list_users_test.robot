*** Settings ***
Documentation    GET LIST USERS

Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common.robot
Resource    ../../keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Variables ***

*** Test Cases ***
pagination
    Get List Users    page=2
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    .page    ${2}
    Verify Property Value    .data    NOT EMPTY
    
pagination_out_range
    Get List Users    page=5
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    .data    EMPTY