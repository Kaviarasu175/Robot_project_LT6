*** Test Cases ***
TC1
   Log To Console    kaviarasu
   Log To Console    robot session
TC2
   Log To Console    HI

TC3
  ${my_name}     Set Variable    kavi
  Log To Console   ${my_name}
  Log   ${my_name}
TC4
   ${radius}    set variable   10
   ${output}    Evaluate    3.14*${radius}*${radius}
   Log To Console  ${output}

TC5
   ${base}    Set Variable   25
   ${height}  set variable   1
   ${output}  Evaluate    1/2*${base}*${height}
   Log To Console    ${output}

TC6
   ${base1}   Set Variable  25
   ${base2}   Set Variable  2.56
   ${height}  Set Variable   70
   ${output}  Evaluate    (${base1}+${base2})/2*${height}
   Log To Console    ${output}

   
      
   


