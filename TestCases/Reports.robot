*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Reports/Reports.robot
Resource    ../Resources/Common.robot

*** Test Cases ***
open page
        Common.Begin Web Test

Download The Order Report

        Reports.Add_Steps
        Reports.Download_Order_OneTimePlacement_Report
        Reports.Download_Order_OrderFullfillment_Report
        Reports.Download_Order_OrderCreationReport_Report
        Reports.Download_Order_OrderStatusDailyReport_Report
        Reports.Download_Order_ConsolidationDetailsReport_Report

Download The Trip Reports


        Reports.Download_TripReport_AverageTransporterRating_Report
        Reports.Download_TripReport_POD_UploadRation_Report
        Reports.Download_TripReport_InvoiceSubmissionRatio_Report
        Reports.Download_TripReport_DEPS_Report
        Reports.Download_TripReport_Milestone_Report

Download The Bid Reports

        Reports.Download_BidReport_Milestone_Report
        Reports.Download_BidReport_TransporterBidReport_Report

Download The Other Reports

        Reports.Download_OtherReports_IntracityLease_Report
        Reports.Download_OtherReports_PortalUtilizationData_Report
        Reports.Download_OtherReports_TransporterRevenue_Report
        Reports.Download_OtherReports_ContractRiskLevel_Report
        Reports.Download_OtherReports_ReturnLoadMonitoring_Report


close page
        Common.End Web Test
