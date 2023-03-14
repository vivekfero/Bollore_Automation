*** Settings ***
Resource    ../Resources/Commericials/RateEnquiry.robot
Resource    ../Resources/Common.robot

*** Variables ***


*** Test Cases ***
open browser
        Common.Begin Web Test

click steps
        RateEnquiry.Add_Steps

        RateEnquiry.Add_Loose_RateEnquiry
        RateEnquiry.Add_FCL_RateEnquiry

close browser
        Common.End Web Test





