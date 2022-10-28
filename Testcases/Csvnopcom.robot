*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Library  DataDriver  ../Testdata/LoginData.csv
Library  openpyxl
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***
LoginTestWithCSV using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input pwd  ${password}
    Click login button
    Error message Should be visible
