*** Settings ***
Resource    ../Resources/Common.robot


*** Variables ***
${AddRoute}             xpath://span[contains(text(),'Add Route')]

*** Keywords ***

Steps_for_Route

            click element       ${MainMenu}
            sleep               1s
            click element       ${RouteManagement}
            sleep               1s
            click element       ${Routes}
        #    maximize browser window
            sleep               1s

Add_New_Route

            maximize browser window
            click element       ${AddRoute}
            sleep               1s
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[1]/span/div/div/div[1]/div[1]/textarea
            sleep               1s
            click element       xpath://div[contains(text(),'Dubai Gate 1')]
            sleep               1s

Select_Destination

            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[3]/span/div/div/div[1]/div[1]/textarea
            sleep               1s
            click element       xpath://html/body/div/div/div/div[2]/div/div[2]/div/div[2]/div[2]/div
            sleep               1s
