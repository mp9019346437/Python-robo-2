*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Fb_login_keywords.robot

*** Variables ***
${Browser}  Chrome
${SiteUrl}  https://facebook.com
${user}  mpreddympreddy80@gmail.com
${pwd}  Polireddy@789

*** Test Cases ***
LoginTest
     Open my Browser  ${SiteUrl}  ${Browser}
     Enter UserName  ${user}
     Enter Password  ${pwd}
     Click SignIn
     sleep  7 seconds
     Verify Successful Login