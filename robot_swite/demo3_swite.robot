*** Settings ***
Library   SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${MY_NAME}   Kaviarasu    #global variable
${ROLE}       Owner     #control from terminal
@{COLORS}     red   green   blue

*** Test Cases ***
TC1
   Log To Console    ${MY_NAME}
   Log To Console    ${ROLE}
   Log To Console    ${COLORS}
   Log To Console    ${COLORS}[0]

TC2
   @{fruits}   Create List   apple   berry   cherry  plumbs
   Log To Console    ${fruits}[1]
   Append To List   ${fruits}  pineapple
   Log To Console    ${fruits}
   Remove From List    ${fruits}    0
   Log To Console    ${fruits}
   Insert Into List    ${fruits}     1   grapes
   Log To Console    ${fruits}

TC2
   @{fruits}   Create List   apple  berry  grapes  cherry
   FOR    ${i}    IN RANGE    0    3    1                     #based on index point
       Log    ${fruits}[${i}]
   END

TC3
    @{fruits}   Create List   apple  berry  grapes  cherry
    FOR    ${kavi}    IN    @{fruits}
        Log    ${kavi}

    END