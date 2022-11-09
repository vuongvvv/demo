*** Settings ***
Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common.robot
Resource    ../../keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Test Cases ***
valid_id_return_correct_data
    Get Single User    1
    Response Correct Code    ${SUCCESS_CODE}
    Response Property Should Be    data.id    ${1}
    
invalid_id_return_not_found
    Get Single User    9999
    Response Correct Code    ${NOT_FOUND_CODE}