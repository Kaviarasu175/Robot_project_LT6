*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC1
    Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser     url=https://www.facebook.com/   browser=chrome
    Input Text       id=email                        kavi@gmail.com
    Input Password   id=pass                         welcome
    Click Element    name=login
