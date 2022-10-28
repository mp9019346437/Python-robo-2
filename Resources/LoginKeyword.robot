*** Settings ***
Library  SeleniumLibrary
Variables  ../Pageobjects/locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser  ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter UserName
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}  ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_password}  ${password}

Click SignIn
     Click button  ${btn_sign}


Verify Successful Login
     title should be  Dashboard / nopCommerce administration

Close my Browsers
     Close Browser