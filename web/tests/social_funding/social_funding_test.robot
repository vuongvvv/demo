*** Settings ***
Resource    ../../resources/init.robot
Resource    ../../keywords/social_funding/social_funding_common_keywords.robot
Resource    ../../keywords/social_funding/statistics_keywords.robot

*** Variables ***

*** Test Cases ***
social_funding_test
    Open Browser With Option    https://fundingsocieties.com/
    Click Top Navigation Menu    Statistics
    Verify Total Funded Displays
    Verify No Of Financing Displays
    Verify Default Rate Displays
    Verify Financing Fulfilment Rate Displays
    
    Verify Progress Tab Displays    General
    Verify Progress Tab Displays    Repayment
    Verify Progress Tab Displays    Disbursement