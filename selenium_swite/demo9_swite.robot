*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
TC8
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser                  browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    name=authUser    admin
    Input Text    name=clearPass   pass
    Select From List By Label  name=languageChoice    English (Indian)
    Click Element  id=login-button
    Click Element   xpath=//div[text()='Messages']
    Select Frame    xpath=//iframe[@name='msg']
    Click Element    xpath=//a[@class='btn btn-primary btn-add']
    Select From List By Label    id=form_note_type  Pharmacy
    Select From List By Label    id=form_message_status    New
    Select From List By Index    id=users     1
    Input Text    id=note    hello
    Click Element    id=newnote
    Element Should Contain    id=error_reply_to     Please choose a patient
    Unselect Frame
    Close Browser
