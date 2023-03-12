*** Settings ***
Library     SeleniumLibrary
Resource    ../Resource/Common.robot

*** Variables ***
${AddTicket}            xpath://html/body/div/div/div/div/main/div/div/div/div[1]/div[2]/button/span/span

*** Keywords ***
Click Operation
            click element       ${MainMenu}
            sleep               1s
            click element       ${Support}
            sleep               1s
            maximize browser window
            click element       ${AddTicket}
            sleep               1s

Create Support Ticket For Rate Enquiry Module
            #Enter Title Name
            input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/input           Orders
            sleep               1s
            #Select Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            sleep               1s
            click element       xpath://div[contains(text(),'Rate Enquiry')]
            sleep               1s
            #Select Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            sleep               1s
            click element       xpath://div[contains(text(),'Low')]
            sleep               1s
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            sleep               1s
            click button        Submit
            sleep               3s

Create Support Ticket For Trip Module
            #Enter Title Name
            input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/input           Delivery Advise
            sleep               1s
            #Selct Trip Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            sleep               1s
            click element       xpath://html/body/div/div/div/div[2]/div/div[3]/div/div
            sleep               1s
            #Select High Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            sleep               1s
            click element       xpath://div[contains(text(),'High')]
            sleep               1s
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            sleep               1s
            click button        Reset
            sleep               3s

Create Support Ticket For Invoice Module
            #Enter Title Name
            input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/input           Delivery Advise
            sleep               1s
            #Select Invoice Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            sleep               2s
            click element       xpath://html/body/div/div/div/div[2]/div/div[5]/div
            sleep               5s
            #Select Critical Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            sleep               1s
            click element       xpath://div[contains(text(),'Critical')]
            sleep               1s
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            sleep               1s
            click button        Reset
            sleep               3s


