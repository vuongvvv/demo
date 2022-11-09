*** Settings ***
Documentation    GET LIST USERS

Resource    ../../../../api/resources/init.robot
Resource    ../../../../api/keywords/social_funding/social_funding_common.robot
Resource    ../../../../api/keywords/social_funding/social_funding_apis_keywords.robot

Test Setup    Create Social Funding Session
Test Teardown     Delete All Sessions

*** Variables ***

*** Test Cases ***
register_success
    Post Register    { "email": "eve.holt@reqres.in", "password": "pistol" }
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    id    NOT EMPTY
    Verify Property Value    token    NOT EMPTY
    
register_unsuccess
    Post Register    { "email": "sydney@fife" }
    Response Correct Code    ${BAD_REQUEST_CODE}
    Response Property Should Be    error    Missing password
    
login_success
    Post Login    { "email": "eve.holt@reqres.in", "password": "pistol" }
    Response Correct Code    ${SUCCESS_CODE}
    Verify Property Value    token    NOT EMPTY
    
login_unsuccess
    Post Login    { "email": "peter@klaven" }
    Response Correct Code    ${BAD_REQUEST_CODE}
    Response Property Should Be    error    Missing password