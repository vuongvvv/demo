*** Settings ***
Library    RequestsLibrary    
Library    DateTime
Library    Collections        
Library    ../../python_library/common/EncodeLibrary.py   

*** Keywords ***
Create Social Funding Session
    Create Session    ${SOCIAL_FUNDING_SESSION}    ${SOCIAL_FUNDING_HOST}    verify=true