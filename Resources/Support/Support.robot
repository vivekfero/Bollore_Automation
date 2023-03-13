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
            #Select Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            click element       xpath://div[contains(text(),'Rate Enquiry')]
            #Select Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            click element       xpath://div[contains(text(),'Low')]
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            click button        Submit
            sleep               3s
            wait until page contains     Ticket created successfully!

Create Support Ticket For Trip Module

            click element       ${AddTicket}
            #Enter Title Name
            input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/input           Delivery Advise
            #Selct Trip Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            click element       xpath://html/body/div/div/div/div[2]/div/div[3]/div/div
            #Select High Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            click element       xpath://div[contains(text(),'High')]
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            click button        Submit
            sleep               6s
            wait until page contains     Ticket created successfully!

Create Support Ticket For Invoice Module

            click element       ${AddTicket}
            #Enter Title Name
            input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[1]/div/div/div/div[1]/input           Delivery Advise
            #Select Invoice Module
            click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
            click element       xpath://html/body/div/div/div/div[2]/div/div[5]/div
            #Select Critical Priority
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input[1]
            click element       xpath://div[contains(text(),'Critical')]
            #Description
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div[1]/div[1]/textarea        Testing
            click button        Submit
            wait until page contains     Ticket created successfully!


