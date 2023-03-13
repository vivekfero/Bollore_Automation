*** Settings ***

Resource    ../Resources/Common.robot
Resource    ../Resources/RouteManagement/Location.robot
Resource    ../Resources/RouteManagement/Route.robot
*** Variables ***


*** Test Cases ***
open browser
            Common.Begin Web Test

#Test Location
          #  Location.TestCase for Location
          #  Location.TestCase For Add_Location

Test Routes

             Route.Steps_for_Route
             Route.Add_New_Route
             Route.Select_Destination

close browser
            Common.End Web Test


*** Keywords ***
