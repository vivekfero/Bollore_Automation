*** Settings ***

Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Select Date and Time

                    open browser      https://demoqa.com/date-picker        chrome
                    maximize browser window
                    click element     id=datePickerMonthYearInput
                 #   click next month
                  #  click back month
                    click element       xpath://div[contains(text(),'21')]
                  #  click element     //div[@class='react-datepicker__month-container']/div[6]/div[1]
                    sleep             5s
                    close browser

*** Keywords ***
click next month
      #  Wait Unitl Element Is Visible       //button[@class='react-datepicker__navigation react-datepicker__navigation--next']
        click element                       //button[@class='react-datepicker__navigation react-datepicker__navigation--next']

click back month
    #    Wait Until Element Is Visible       //button[@class='react-datepicker__navigation react-datepicker__navigation--previous']
        click element                       //button[@class='react-datepicker__navigation react-datepicker__navigation--previous']
