*** Settings ***
Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common.robot
Resource    ../../keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Test Cases ***
valid_page_param_should_return_valid_page
    Get List Users    page=2
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    .page    ${2}
    Verify Property Value    data    NOT EMPTY
    
pagination_out_range_should_return_empty_data
    Get List Users    page=5
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    data    []
    
no_parameter_should_return_first_page
    Get List Users
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    .page    ${1}