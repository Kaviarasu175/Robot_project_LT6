*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC2
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser     url=https://www.facebook.com/   browser=chrome
    Click Element    link=Create New Account
    Set Selenium Implicit Wait    30s
    Input Text       name=firstname                  Kavi
    Input Text       name=lastname                   Arasu
    Input Text       name=reg_email__                kaviarasu@gmail.com
    Input Text      name=reg_email_confirmation__   kaviarasu@gmail.com
    Input Text      name=reg_passwd__               123456
    Select From List By Label    id=day            20
    Select From List By Label    id=month          Jun
    Click Element    xpath=//input[@value='-1']
    Click Element    name=websubmit
