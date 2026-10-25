*** Keywords ***

Go to Portal login page
    Open Browser   ${portal_url}     ${browser}
    Maximize Browser Window
    Wait Until Page Does Not Contain Element        ${blUiLoading}                     timeout=20
    Wait Until Page Contains Element                ${username_input}                 timeout=20

Input email
    [Arguments]     ${username}
    Input Text      ${username_input}     ${username}
    Sleep   1s

Input password
    [Arguments]     ${password}
    Wait Until Page Contains Element                ${password_input}                 timeout=20
    Input Text      ${password_input}         ${password}
    Sleep   1s

Click on login button
    Wait Until Element Is Enabled       ${login_button}    timeout=30
    Click Element                       ${login_button}
    Sleep    1s
    Wait Until Element Is Enabled       //button[@id='react-burger-menu-btn']    timeout=5