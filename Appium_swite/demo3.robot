*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=kaviarasub_ryipUk
    ...     browserstack.key=cYyTztoP7HhBxS6XBKef
    ...     app=bs://907b2e5c7f88123e8c37da2688a06ec21452dec5
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=zomato test

    ${app_source}       Get Source
    Log   ${app_source}
    Sleep    5s
    Click Element    xpath=//*[@text='Deny']
    Close Application

