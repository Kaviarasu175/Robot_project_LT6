*** Settings ***
Library   OperatingSystem
*** Test Cases ***
TC1
   Create File   path=D:\\hello.txt
   ${files}   List Files In Directory    path=D:\\c-users
   Log To Console    ${files}
