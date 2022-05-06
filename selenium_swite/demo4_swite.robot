*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases  ***
4
   Append To Environment Variable  path    C:\\Users\\kavit\\Downloads\\driver\\chromedriver_win32
    Open Browser     url=https://www.salesforce.com/in/form/signup/freetrial-sales/   browser=chrome
    Input Text                   name=UserFirstName        kavi
    Input Text                   name=UserLastName         Arasu
    Input Text                  name=UserEmail             kavi@gmail.com
    Select From List By Label   name=UserTitle             IT Manager
    Input Text                  name=CompanyName           DOXY
    Select From List By Label   name=CompanyEmployees        101 - 500 employees
    Select From List By Label   name=CompanyCountry          United Kingdom
    Click Element               xpath=//div[@class="checkbox-ui"]
    Click Element               name=start my free trial
    Element Text Should Be    xpath=//span[contains(@id,'userphone')]    1234567891