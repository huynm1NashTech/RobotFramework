*** Settings ***
Library    SeleniumLibrary
Resource    ../pageobjects/login.robot
Resource    ../pageobjects/reportvalue.robot
Library    DataDriver     ../data/login_data.xlsx      sheet_name=Sheet5
Test Template    Get Report Value Full Flow

*** Variables ***
${portal_url}               https://www.saucedemo.com/
${portal_reporturl}               https://assertqa.com/practice/webtables
${browser}                        chrome
${blUiLoading}                      css:div.block-ui-wrapper.block-ui-main.active
${username_input}             //input[@id='user-name']
${password_input}              //input[@id='password']
${login_button}              //input[@id='login-button']
${employee}              //div[normalize-space(text())='Total Employees']/following-sibling::div[1]

*** Test Cases ***
Login to Portal_Get employee value    using ${username}    ${password}

*** Keywords ***

Get Report Value Full Flow
    [Arguments]     ${username}    ${password}
    Login page        ${username}    ${password}
    Get employee value

Login page
    [Arguments]     ${username}    ${password}
    login.Go to Portal login page
    login.Input email    ${username}
    login.Input password    ${password}
    login.Click on login button
    
Get employee value
    reportvalue.Go to portal report page
    reportvalue.Get report employee value