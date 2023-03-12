*** Settings ***
Documentation   This is for UserManagement Module
Resource        ../Resources/Common.robot

#Below Resource file is for configuration
Resource    ../Resources/UserManagement/BolloreUser.robot
Resource    ../Resources/UserManagement/Transporter.robot

*** Variables ***


*** Test Cases ***
#TestCase For UserManagement Module

Open Browser
      Common.Begin Web Test

Test Transporter Onboarding
      Transporter.TestCase For Transporter
      Transporter.TestCase For Add_Company_Details
      Transporter.TestCase For Add_GST_Details
      Transporter.TestCase For Add_Bank_Details
      Transporter.TestCase For Add_Licence_Details
      Transporter.TestCase For Admin_Approval_Details

Test Bollore User
      BolloreUser.TestCase for BolloreUser
      BolloreUser.TestCase For ResetUser
      BolloreUser.TestCase For AddUser

Close Browser
      Common.End Web Test

