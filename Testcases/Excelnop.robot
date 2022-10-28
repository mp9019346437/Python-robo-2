*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../Testdata/Book-nop.xlsx  sheet_name=Sheet1
Library  openpyxl
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input pwd  ${password}
    Click login button
    Error message Should be visible
