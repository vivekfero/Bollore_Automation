*** Settings ***
Documentation   This is for Configuration Branch Module
Resource    ../Resources/Common.robot

#Below Resource file is for configuration
Resource    ../Resources/Configuration/Branch.robot
Resource    ../Resources/Configuration/EventSubscriber.robot
Resource    ../Resources/Configuration/Charge.robot


#Suite Setup     Begin Web Test
#Test Setup      Begin Web Test
#Test Teardown   End Web Test
#Suite Teardown  End Web Test

*** Variables ***

*** Test Cases ***
#TestCases For Configuration Module

Open Browser
      Common.Begin Web Test

Test Branch
      Branch.Perform Branch Steps
      Branch.Add New Branch

Test Charge
      Charge.Perform Charge Steps
      Charge.Add New Charge

Test EventSubscriber
      EventSubscriber.Perform EvenetSubscriber Steps
      EventSubscriber.Perform EventSubscriber Reset Steps
      EventSubscriber.Add New EvenetSubscriber

Close Browser
      Common.End Web Test






*** Keywords ***



