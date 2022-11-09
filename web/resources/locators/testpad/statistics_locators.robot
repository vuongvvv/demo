*** Variables ***
${lbl_total_funded}    xpath://div[normalize-space()='Total funded']//preceding-sibling::font
${lbl_no_of_financing}    xpath://div[@class='detailCaption'][contains(text(),"No. of")]//preceding-sibling::font
${lbl_default_rate}    xpath://div[@class='detailCaption'][contains(text(),"Default")]//preceding-sibling::font
${lbl_financing_fulfilment_rate}    xpath://div[@class='detailCaption'][contains(text(),"Financing")]//preceding-sibling::font

# DYNAMIC
${tab_progress_by_name}    xpath://button[contains(@class,"tab-button")][contains(text(),"General")]