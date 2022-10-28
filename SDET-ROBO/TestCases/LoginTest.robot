*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      chrome
${SiteUrl}      http://newtours.demoaut.com/
${user}      tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open my Browser      ${SiteUrl}    ${Browser}
    Enter UserName     ${user}
    Enter Password  ${pwd}
    Click SignIn
    sleep  3 seconds
    Verify Succesful Login
    close my browsers
