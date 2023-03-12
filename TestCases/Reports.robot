*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Reports/Reports.robot
Resource    ../Resources/Common.robot

*** Test Cases ***
open page
        Common.Begin Web Test

#Download The Order Report
    #    Reports.Add_Steps
    #    Reports.Download_Order_OneTimePlacement_Report
    #    Reports.Download_Order_OrderFullfillment_Report
    #     Reports.Download_Order_OrderCreationReport_Report
    #    Reports.Download_Order_OrderStatusDailyReport_Report
    #    Reports.Download_Order_ConsolidationDetailsReport_Report

Download The Trip Reports
\
        Reports.Add_Steps
        Reports.Download_TripReport_AverageTransporterRating_Report


close page
        Common.End Web Test
