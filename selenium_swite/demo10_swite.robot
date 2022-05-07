*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC8
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser                  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://smallpdf.com/pdf-to-word
    Click Element    xpath=//span[text()='Got it']
    Choose File    xpath=//input[@type='file']    D:\\Batch 15.pdf