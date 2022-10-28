*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***
Right user empty pass  admin@youstore.com   ${EMPTY}
Right user wrong pass  admin@youstore.com   xyz
Right user right pass  admin@youstore.com   admin
Right user empty pass  admin@youstore.com   ${EMPTY}
Wrong user wrong pass  admin@youstore.com   xyz

*** Keywords ***
Invalid login
    [Arguments]  ${username}  ${password}
    Input username  ${username}
    Input pwd  ${password}
    Click login button
    Error message Should be visible


