*** Settings ***
Documentation  This Teacses For Support Module
Resource    ../Resources/Common.robot
Resource    ../Resources/Support/Support.robot

*** Test Cases ***
OpenBrowser
            Common.Begin Web Test

TestSupportModule
            Support.Click Operation
            Create Support Ticket For Rate Enquiry Module
            Create Support Ticket For Trip Module
            Create Support Ticket For Invoice Module

closeBrowser
            Common.End Web Test