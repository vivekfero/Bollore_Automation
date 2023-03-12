*** Settings ***

Documentation  This is some basic info about the whole suite
Library     SeleniumLibrary

Library  SeleniumLibrary

#run the script:
#robot -d results TestCases/crm.robot


*** Variables ***


*** Test Cases ***

Should be able to add new customer

    [Documentation]         This is the basic info about the test
    [Tags]                  106     Smoke       Contacts

    #Initialize Selenium
    set selenium speed      .2x
    set selenium timeout    10s


    #open the browser
    log                              Starting the test case!
    open browser                     https://automationplayground.com/crm/   chrome

    #resize browser window for recording
     set window position             x=241   y=169
     set window size                 width=1935  height=1090
     page should contain             Customers Are Priority One!

     #LogIn
     click link                      css=#SignIn
     page should contain             Login
     input text                      id=email-id            vivekghodasara11@gmail.com
     input text                      id=password            vivek11
     click button                    Submit
     page should contain             Our Happy Customers

     #Click on New Customer
     click element                   id=new-customer
     page should contain             Add Customer

     #Enter Registrtion Details
     input text                      id=EmailAddress         vivekpatel@gmail.com
     input text                      id=FirstName            Vivek
     input text                      id=LastName             Ghodasara
     input text                      id=City                 Ahmedabad
     select from list by value       id=StateOrRegion        TX
     select radio button             gender      male
     select checkbox                 name=promos-name
     click button                    Submit

     sleep                           3s
     close browser




*** Keywords ***




