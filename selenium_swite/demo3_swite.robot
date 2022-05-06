*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC3
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser     url=https://www.goto.com/meeting   browser=chrome
     Click Element   id=truste-consent-button
     Click Element   link=Try Free
     Input Text      name=FirstName      jhon
     Input Text      name=LastName       wick
     Input Text      name=Email          jhon@gmail.com
     Input Text      name=Password       kaviarasu12
    Select From List By Label      id=CompanySize    10 - 99
    Click Element    xpath=//button[@data-button="trial-submit"]