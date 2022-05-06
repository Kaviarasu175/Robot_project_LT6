*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC5
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser                  browser=chrome
    Set Selenium Implicit Wait    30s
    Go To                         url=https://www.medibuddy.in/
    Click Element                 id=wzrk-cancel
    Click Element                 link=For Employer
    Switch Window                 MediBuddy LaunchPad
    Input Text     id=getInTouchName   kavi
    Input Text     id=getInTouchEmail    kavi@gmail.com
    Input Text     name=getInTouchMobile    12345678
    Input Text     name=getInTouchDesignation    trainer
    Input Text     name=getInTouchEmpCount    40
    Click Element  xpath=//button[@class='btn-primary mt-10 w-full']
    Element Text Should Be    xpath=//div[contains(@class,'text-red')]    Mobile Number should be 10 digits