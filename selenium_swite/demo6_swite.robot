*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC6
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser                  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    Click Element    link=phpMyAdmin »
    Switch Window    phpMyAdmin
    Input Text    name=pma_username    admin
    Input Text    name=pma_password    admin123
    Click Element  id=input_go
    Element Should Contain    xpath=(//div[@role='alert'])[3]    Access denied for user
    Close Window
    Close Browser
