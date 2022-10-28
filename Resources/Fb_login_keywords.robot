*** Settings ***
Library  SeleniumLibrary
Variables  ../Pageobjects/FbLocators.py

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


Click Signin
     Click button  ${btn_sign}



Verify Successful Login
     title should be   (3) Facebook

Error message should be visible
    page should contain  Login was unsuccessful
