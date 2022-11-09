*** Settings ***
Resource    ../../resources/locators/testpad/social_funding_common_locators.robot

*** Keywords ***
Click Top Navigation Menu
    [Arguments]    ${menu}
    ${menu_element}    Generate Element From Dynamic Locator    ${mnu_top_navigation_by_name}    ${menu}
    Click Visible Element    ${menu_element}