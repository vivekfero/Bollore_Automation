*** Settings ***
Documentation   This is Configuration Charge Details file which indicate all the steps for Charge
Resource    ../Resources/Common.robot
*** Variables ***


*** Keywords ***

Add_Steps
       click element       ${MainMenu}
       sleep               1s
       click element       ${Analytics}
       sleep               1s
       click element       ${Reports}
       maximize browser window
       sleep               1s
       click button        Create Report
       sleep               1s

Download_Order_OneTimePlacement_Report

       #Click On Order Reports
       click element       xpath://p[contains(text(),'Order Reports')]
       sleep               1s

       #Click And Select Report
       click element      css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'On Time Placement')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s

Download_Order_OrderFullfillment_Report

       #Click on Report
       click button        Create Report
       sleep               1s

      #Click On Order Reports
       click element       xpath://p[contains(text(),'Order Reports')]
       sleep               1s

       #Click And Select Report
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'Order Fulfillment Ratio')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s

Download_Order_OrderCreationReport_Report

       #Click on Report
       click button        Create Report
       sleep               1s

      #Click On Order Reports
       click element       xpath://p[contains(text(),'Order Reports')]
       sleep               1s

       #Click And Select Report
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'Order Creation Report')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s

Download_Order_OrderStatusDailyReport_Report

      #Click on Report
       click button        Create Report
       sleep               1s

      #Click On Order Reports
       click element       xpath://p[contains(text(),'Order Reports')]
       sleep               1s

       #Click And Select Report
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'Order Status Daily Report')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s

Download_Order_ConsolidationDetailsReport_Report

      #Click on Report
       click button        Create Report
       sleep               1s

      #Click On Order Reports
       click element       xpath://p[contains(text(),'Order Reports')]
       sleep               1s

       #Click And Select Report
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'Consolidation Details Report')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s


Download_TripReport_AverageTransporterRating_Report

      #Click on Report
      # click button        Create Report
      # sleep               1s

      #Click On Order Reports
       click element       xpath://p[contains(text(),'Trip Reports')]
       sleep               1s

       #Click And Select Report
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(1) > div > div
       click element       xpath://div[contains(text(),'Average Transporter Rating')]

       #Select Start Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(3)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(2) > td:nth-child(6) > button
       sleep               1s

       #Select End Date
       click element       css=#app > div.v-dialog__content.v-dialog__content--active > div > div > div.v-card__text.pa-2 > form > div > div:nth-child(4)
       click element       css=#app > div.v-menu__content.theme--light.v-menu__content--fixed.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
       click button        Submit
       sleep               1s



