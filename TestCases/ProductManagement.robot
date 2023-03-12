*** Settings ***
Documentation   This is for ProductManagement Module
Resource    ../Resources/Common.robot
Resource    ../Resources/ProductManagement/ContainerType.robot
Resource    ../Resources/ProductManagement/TrailerType.robot
Resource    ../Resources/ProductManagement/VehicleType.robot


*** Test Cases ***
Open Browser
        Common.Begin Web Test

Test ContainerType

        ContainerType.TestCase For Container
        ContainerType.TestCase For Add_Container_Type

Test TrailerType

        TrailerType.TestCase For Trailer
        TrailerType.TestCase For Add_Trailer_Type

Test VehicleType

        VehicleType.TestCase For Vehicle
        VehicleType.TestCase For Reset_Vehicle
        VehicleType.TestCase For Add_Vehicle

Close Browser
        Common.End Web Test




