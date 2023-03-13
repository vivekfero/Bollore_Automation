*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common.robot
*** Variables ***


*** Test Cases ***
Create Order

             open browser              ${Browser}      ${url}
          #
           input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[1]/div/div/div[1]/div[1]/input       admin_vivek
           input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[2]/div/div/div/div[1]/input         fero@1234
           click element             xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[3]/button
          wait until page contains  Orders   30s
         page should contain       Orders
          sleep                     3s

            click element       ${MainMenu}

            sleep               1s
            click element       xpath://div[contains(text(),'Orders')]
            sleep               1s
            click element       xpath://div[contains(text(),'Pending Order')]
            sleep               1s
            click element       xpath://span[contains(text(),'Create Order')]
            sleep               1s
               maximize browser window
               sleep            3s
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[1]/div/div/div[1]/div[1]/input                     JOBNO625
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[2]/div/div/div[1]/div[1]/input                     BTN82634
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[3]/div/div[4]/div/div/div[1]/div[1]/input[1]
            click element       xpath://div[contains(text(),'Standard')]
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[4]/div/div/div[1]/div[1]/input                     Food
            click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[7]/div/div/div/div[1]/input
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[8]/div/div/div[1]/div[1]/input                    35
            input text          xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[9]/div/div/div/div[1]/input                       Hello
            click element       xpath://html/body/div/div/div/div/main/div/div/div/form/div[1]/div[11]/div/div[1]/div[1]/div/div[1]/div/input
            click element       xpath://html/body/div/div/div/div/main/div/div/div/form/div[1]/div[11]/div/div[1]/div[1]/div/div[1]/div/input
            click element       css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div:nth-child(1) > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light
            click element       css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div:nth-child(1) > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light > table > tbody > tr:nth-child(5) > td:nth-child(5) > button > div


           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[2]/div[1]/div/div[1]/div/input
           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[2]/div[1]/div/div[1]/div/input
           click element        css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div:nth-child(1) > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light

           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[3]/div[1]/div/div[1]/div/input
           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[3]/div[1]/div/div[1]/div/input
           click element        css=#app > div.v-menu__content.theme--light.menuable__content__active > div > div > div:nth-child(1) > div > div.v-picker__body.theme--light > div > div.v-date-picker-table.v-date-picker-table--date.theme--light


           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[12]/div/div/div/div[1]/input[1]
           click element        xpath://div[contains(text(),'Pickup')]

           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[14]/div/div/div/div[1]/input[1]
           click element        xpath://div[contains(text(),'Logistics 4 PL')]

           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[2]/div/div[1]/div/div/div/div[1]/input        CFSG5342
           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[2]/div/div[2]/div/div/div/div[1]/input[1]
           click element        xpath://div[contains(text(),'Kgs')]
           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[2]/div/div[3]/div/div/div[1]/div[1]/input     35


           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[1]/div/div/div[1]/div[1]/input         Origin Test Demo
           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[4]/div/div/div[1]/div[1]/input         OOC Code Demo
           click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[5]/div/div/div[1]/div[1]/input[1]
           click element        xpath://div[contains(text(),'LocalCartageCTO')]

           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[6]/div/div/div[1]/div[1]/input         Loading Unloading Test Demo
           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[9]/div/div/div[1]/div[1]/input         LOU Code Demo


           input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[2]/div[4]/div/div[11]/div/div/div[1]/div[1]/input        Destination Test Demo


            sleep               5s


       #     click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[1]
      #      sleep               1s
      #      click element       xpath://html/body/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[4]
         #   click element        xpath://input[@id='input-87']
            sleep                2s
    #        click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[1]/div[1]/div/div[1]/div/input
       #     sleep                1s
      #      click element       xpath://html/body/div/div/div/div[2]/div/div/div[1]/div/div[2]/div/div[2]/table/tbody/tr[4]/td[4]/button/div
       #     sleep                 1s
      #      click element       xpath:/html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[2]/div[1]/div/div/div/input
       #     sleep                2s

          #  click element       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[1]/div[1]/div/div[1]/div/input
         #   click element       xpath://html/body/div[1]/div/div/div[2]/div/div/div[1]/div/div[2]/div/div[1]
        #   sleep               1s
        #    click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[2]/div[1]/div/div[1]/div/input
        #   click element       xpath://html/body/div/div/div/div[6]/div/div/div[1]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[5]/button/div
        #   click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[11]/div/div[3]/div[1]/div/div[1]/div/input
        #    click element       xpath://html/body/div/div/div/div[7]/div/div/div[1]/div/div[2]/div/div[2]/table/tbody/tr[1]/td[5]/button/div
        #   click element       xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div[1]/div[12]/div/div/div/div[1]/input[1]
        #   click element       xpath://div[contains(text(),'Pickup')]
         #   sleep               5s
            close browser

*** Keywords ***
