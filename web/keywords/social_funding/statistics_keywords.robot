*** Settings ***
Resource    ../../resources/locators/testpad/statistics_locators.robot

Resource    ../common/web_common.robot
*** Keywords ***
Verify Total Funded Displays
    ${total_funded_value}    Get Element Text    ${lbl_total_funded}
    Should Not Be Empty    ${lbl_total_funded}
    
Verify No Of Financing Displays
    ${return_value}    Get Element Text    ${lbl_no_of_financing}
    Should Not Be Empty    ${return_value}
    
Verify Default Rate Displays
    ${return_value}    Get Element Text    ${lbl_default_rate}
    Should Not Be Empty    ${return_value}
    
Verify Financing Fulfilment Rate Displays
    ${return_value}    Get Element Text    ${lbl_financing_fulfilment_rate}
    Should Not Be Empty    ${return_value}
    
Verify Progress Tab Displays
    [Arguments]    ${tab_name}
    ${tab_element}    Generate Element From Dynamic Locator    ${tab_progress_by_name}    ${tab_name}
    Verify Element Is Visible    ${tab_element}