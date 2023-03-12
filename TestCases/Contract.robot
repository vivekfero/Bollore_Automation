*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Commericials/Contract.robot

*** Variables ***


*** Test Cases ***
login
    Common.Begin Web Test

contract
        Contract.Add_Steps
        Contract.Add_Contract

close
    Common.End Web Test
