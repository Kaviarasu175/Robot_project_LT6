*** Settings ***
Library   DatabaseLibrary
Test Setup    Connect To Database      dbapiModuleName=pymysql     dbName=dbfree_db   dbUsername=dbfree_db    dbPassword=12345678     dbHost=db4free.net     dbPort=3306
Test Teardown   Disconnect From Database
*** Test Cases ***
TC1
   ${row_count}     Row Count    select * from Products
   Log To Console    ${row_count}
   Log   ${row_count}
TC2
   Table Must Exist    Products
   Row Count Is Equal To X    select * from Products    81

TC3
   Execute Sql String    Insert into Products (product_id,productname,description) values ('112','kavi','domestic')
   Row Count Is Equal To X    select * from Products where Product_id=115  1

TC4
   Execute Sql String    update Products set productname='kavi' where product_id=35656
   Row Count Is Equal To X    select * from products where Product_id=115     1

TC5
   ${a}   Query    select * from Products where Product_id=115
   Log To Console    ${a}
   Log    ${a}


