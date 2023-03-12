*** Settings ***

Resource    ../Resources/Common.robot
*** Variables ***
${AddLocation}          xpath://span[contains(text(),'Add Location')]



*** Keywords ***
TestCase for Location

                click element       ${MainMenu}
                sleep               1s
                click element       ${RouteManagement}
                sleep               1s
                click element       ${Location}
                sleep               1s
                click element       ${AddLocation}
                sleep               1s

TestCase For Add_Location

                input text          xpath://input[@id='autocomplete']      Dubai Gate, Old BowenpallySecunderabad, Telangana, India
                sleep               3s
                click element       xpath://html/body/div[2]/div[1]/span[2]/span

                sleep                1s
                click button         Submit
                sleep                5s
