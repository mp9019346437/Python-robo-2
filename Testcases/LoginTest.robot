*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}  headlessChrome
${SiteUrl}  https://admin-demo.nopcommerce.com
${user}  admin@yourstore.com
${pwd}  admin

*** Test Cases ***
LoginTest
     Open my Browser  ${SiteUrl}  ${Browser}
     Enter UserName  ${user}
     Enter Password  ${pwd}
     Click SignIn
     sleep  7 seconds
     Verify Successful Login