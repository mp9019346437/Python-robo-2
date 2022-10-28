*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${LOGIN URL}  https://admin-demo.nopcommerce.com
${BROWSER}  chrome
*** Keywords ***
Open my Browser
    open browser  ${LOGIN URL}  ${BROWSER}
    Maximize Browser Window

Close Browsers
    Close Browser

Open Login Page
    go to  ${LOGIN URL}
Input username
    [Arguments]  ${username}
    input text  id:Email  ${username}
Input pwd
    [Arguments]  ${password}
    input text  id:Password  ${password}
Click login button
    click element  xpath://button[text()='Log in']
Click logout link
    click link logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard

