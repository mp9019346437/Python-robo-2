*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      headlessfirefox
${SiteUrl}      http://newtours.demoaut.com/
${user}      tutorial
${pwd}      tutorial

*** Test Cases ***
LoginTest
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter UserName  ${user}
    Enter Password  ${pwd}
    Click SignIn
    sleep  3 seconds
    Verify Succesfull Login
    close my browsers