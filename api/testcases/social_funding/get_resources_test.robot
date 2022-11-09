*** Settings ***
Documentation    GET LIST USERS

Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common.robot
Resource    ../../keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Variables ***

*** Test Cases ***
list_resource
    Get List Resource
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    data..id    NOT EMPTY
    Verify Property Value    data..name    NOT EMPTY
    Verify Property Value    data..year    NOT EMPTY
    Verify Property Value    data..color    NOT EMPTY
    Verify Property Value    data..pantone_value    NOT EMPTY