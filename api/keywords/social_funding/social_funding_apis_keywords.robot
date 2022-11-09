*** Variables ***
&{content_type}    Content-Type=application/json

*** Keywords ***
Get List Users
    [Arguments]    ${parameter}
    ${RESP}    Get Request    ${SOCIAL_FUNDING_SESSION}    /api/users?${parameter}
    Set Test Variable    ${RESP}
    
Get Single User
    [Arguments]    ${id}
    ${RESP}    Get Request    ${SOCIAL_FUNDING_SESSION}    /api/users/${id}
    Set Test Variable    ${RESP}
    
Get List Resource
    ${RESP}    Get Request    ${SOCIAL_FUNDING_SESSION}    /api/unknown
    Set Test Variable    ${RESP}
    
Get Single Resource
    [Arguments]    ${id}
    ${RESP}    Get Request    ${SOCIAL_FUNDING_SESSION}    /api/unknown/${id}
    Set Test Variable    ${RESP}

Get Delayed Response
    [Arguments]    ${delay}=3
    ${RESP}    Get Request    ${SOCIAL_FUNDING_SESSION}    /api/users?delay=${delay}
    Set Test Variable    ${RESP}
        
Post Create User
    [Arguments]    ${data}
    ${RESP}=    Post Request    ${SOCIAL_FUNDING_SESSION}    /api/users    data=${data}
    Set Test Variable    ${RESP}

Post Register
    [Arguments]    ${data}
    ${RESP}=    Post Request    ${SOCIAL_FUNDING_SESSION}    /api/register    data=${data}    headers=${content_type}
    Set Test Variable    ${RESP}

Post Login
    [Arguments]    ${data}
    ${RESP}=    Post Request    ${SOCIAL_FUNDING_SESSION}    /api/login    data=${data}    headers=${content_type}
    Set Test Variable    ${RESP}
    
    
Put Update User
    [Arguments]    ${id}    ${data}
    ${RESP}=    Put Request    ${SOCIAL_FUNDING_SESSION}    /api/users/${id}    data=${data}
    Set Test Variable    ${RESP}
    
Patch Update User
    [Arguments]    ${id}    ${data}
    ${RESP}    Patch Request    ${SOCIAL_FUNDING_SESSION}    /api/users/${id}    data=${data}
    Set Test Variable    ${RESP}
    
Delete User
    [Arguments]    ${id}
    ${RESP}    Delete Request    ${SOCIAL_FUNDING_SESSION}    /api/users/${id}
    Set Test Variable    ${RESP}