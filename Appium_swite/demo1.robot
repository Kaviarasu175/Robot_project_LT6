*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
TC1
    Open Application    remote_url=http://hub-cloud.browserstack.com/wd/hub
    ...     browserstack.user=kaviarasub_ryipUk
    ...     browserstack.key=cYyTztoP7HhBxS6XBKef
    ...     app=bs://e8a0751fdab1c20d84ccbffe43a233c8e037403f
    ...     device=Google Pixel 3
    ...     os_version=9.0
    ...     project=lt6_project
    ...     build=lt6_build
    ...     name=khanacademy test

    ${app_source}       Get Source
    Log   ${app_source}

    Close Application
