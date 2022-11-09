*** Settings ***
Documentation    GET LIST USERS

Resource    ../../../../api/resources/init.robot
Resource    ../../../../api/keywords/social_funding/social_funding_common.robot
Resource    ../../../../api/keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Variables ***

*** Test Cases ***
create
    # create
    Post Create User    { "name": "morpheus", "job": "leader" }
    Response Correct Code    ${CREATED_CODE}
    Fetch Property From Response    id    CREATED_USER_ID
    
    # Delayed Response
    Get Delayed Response
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    data..id    NOT EMPTY
    Verify Property Value    data..email    NOT EMPTY
    Verify Property Value    data..first_name    NOT EMPTY
    Verify Property Value    data..last_name    NOT EMPTY
    Verify Property Value    data..avatar    NOT EMPTY
    
    # put update
    Put Update User    ${CREATED_USER_ID}    { "name": "morpheus", "job": "zion resident" }
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    updatedAt    NOT EMPTY
    
    # patch update
    Patch Update User    ${CREATED_USER_ID}    { "name": "vuong", "job": "QA Engineer" }
    Response Correct Code    ${SUCCESS_CODE}
    
    # delete user
    Delete User    ${CREATED_USER_ID}
    Response Correct Code    ${NO_CONTENT_CODE}