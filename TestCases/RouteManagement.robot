*** Settings ***

Resource    ../Resources/Common.robot
Resource    ../Resources/RouteManagement/Location.robot
*** Variables ***


*** Test Cases ***
open browser
            Common.Begin Web Test

Test Location
            Location.TestCase for Location
            Location.TestCase For Add_Location

close browser
            Common.End Web Test


*** Keywords ***
