*** Variables ***
&{MY_DETAILS}  name=kavi   role=owner  location=coimbatore

*** Test Cases ***
TC1
   Log To Console    ${MY_DETAILS}[name]
   Log To Console    ${MY_DETAILS}[role]
