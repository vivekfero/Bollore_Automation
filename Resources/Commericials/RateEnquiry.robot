*** Settings ***
Documentation  This file is contain for all the xpath for Rate Enquiry Module
Library  SeleniumLibrary
Resource  ..Resources/Common.robot

*** Keywords ***
Add_Steps

        click element       ${MainMenu}
        sleep               1s
        click element       ${Commercials}
        sleep               1s
        click element       ${RateEnquiry}
        sleep               1s
        maximize browser window
        sleep               1s
        click element       ${CreateRateEnquiry}
        sleep               1s

Add_RateEnquiry

        #Select All Branch
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/div[1]
        click element       xpath://div[contains(text(),'Select All')]

        #Select Movement Type
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div[1]/div[1]/input[1]
        click element       xpath://div[contains(text(),'LOOSE')]

        #Select Product
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Flatbed 13.5 mtr')]

        #Select Origin Location
        input text          xpath://input[@id='sourceLocation']         RajkotGujarat, India
        sleep               1s
        click element       xpath://html/body/div[2]/div[2]/span[2]/span

        #Select Destination Location
        input text          xpath://input[@id='destinationLocation']        JNPT
        sleep               1s
        click element       xpath://html/body/div[4]/div[2]/span[2]/span

        #Select Nature of Cargo
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[5]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Ad-Hoc')]

        #Select Nature of Commodity
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[6]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Non-Temperature')]

        #Select Loading Pattern
        click element       xpath://html/body/div[1]/div/div/div/main/div/div/div/form/div/div[7]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Non-Stackable')]

        #Select Movement Segment
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Import')]

        #Select Service Requested
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[9]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Consolidation')]

        #Select Business Unit
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[10]/div/div/div/div[1]/input[1]
        click element       xpath://div[contains(text(),'Sales')]

        #Enter Target Price
        input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[11]/div/div/div/div[1]/input      2400

        #Enter Customer Name
        input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[12]/div/div/div/div[1]/input      Vivek

        #Enter Name of Consignee/Shipper and click on Submit button
        input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[13]/div/div/div/div[1]/input      Vivek Ghodasara
        click button        Submit
        sleep               3s







