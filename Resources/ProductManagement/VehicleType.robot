*** Settings ***

Resource    Resources/Common.robot
*** Variables ***
${AddVehicleType}           xpath://span[contains(text(),'Add Vehicle Type')]

*** Keywords ***

TestCase For Vehicle

                click element       ${MainMenu}
                sleep               1s
                click element       ${ProductManagement}
                sleep               1s
                click element       ${ProductManagement}
                sleep               1s
                click element       ${AddVehicleType}
                sleep               1s

TestCase For Reset_Vehicle

                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div[1]/div[1]/input        CTL Movement
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input           5
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div/div[1]/input           5
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[6]/div/div/div/div[1]/input           75
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[7]/div/div/div/div[1]/input           75
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div/div[1]/input           75
                click button        Reset

TestCase For Add_Vehicle


                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[2]/div/div/div[1]/div[1]/input        CTL Movement
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input           5
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[4]/div/div/div/div[1]/input           5
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[6]/div/div/div/div[1]/input           75
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[7]/div/div/div/div[1]/input           75
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div/div[1]/input           75
                click element       xpath://label[contains(text(),'Temperature Controlled')]
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[10]/div/div/div/div[1]/input          20
                input text          xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/form/div/div[11]/div/div/div/div[1]/input          30
                sleep               3s


