*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common.robot

*** Variables ***
${Single}       xpath://div[contains(text(),'Single')]

*** Keywords ***
Add_Steps
        click element       ${MainMenu}
        sleep               1s
        click element       ${Commercials}
        sleep               1s
        click element       ${Contract}
        sleep               1s
        maximize browser window
        click element       ${AddContract}
        sleep               1s
        click element       ${Single}
        sleep               1s

Add_Contract

        #Select Product
        click element         xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input[1]
        click element         xpath://div[contains(text(),'Flatbed 13.5 mtr')]

        #Select Origin Location
        click element         xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[3]/span/div/div/div/div[1]/textarea
        click element         xpath://div[contains(text(),'Dubai Gate 1')]

        #Select Destination Location
   #     click element         xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[4]/span/div/div/div/div[1]/textarea
   #     click element          css=#list-item-2038

        #Select Transporter
        click element         xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[5]/div/div/div/div[1]/input[1]
        click element         xpath://div[contains(text(),'CompanyDemoTest')]

        #Select Start Date
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[6]/div[1]/div/div/div/input
        click element       css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light

        #Select End Date
        click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[7]/div[1]/div/div[1]/div/input
        click element       css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
        click element       css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(5) > td:nth-child(6) > button

        #Enter Rate & Remarks and Click on The Reset
        input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div[1]/div[1]/input       2500
        input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[9]/div/div/div/div[1]/input          HelloTransporter
        click button        Reset
        sleep               2s

