*** Keywords ***

Go to portal report page
    Go To           ${portal_reporturl}
    Wait Until Page Does Not Contain Element        ${blUiLoading}                     timeout=20
    Wait Until Page Contains Element                ${employee}                 timeout=20

Get report employee value
    ${employee_value}=    Get Text    //div[normalize-space(text())='Total Employees']/following-sibling::div[1]
    log many    ${employee_value}