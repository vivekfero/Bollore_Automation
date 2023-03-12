*** Settings ***

Resource    ../Resources/Common.robot

*** Variables ***
${AddTrailerType}           xpath://span[contains(text(),'Add Trailer Type')]


*** Keywords ***

TestCase For Trailer

            click element       ${MainMenu}
            sleep               1s
            click element       ${ProductManagement}
            sleep               1s
            click element       ${ProductManagement}
            sleep               1s
            click element       ${Trailer}
            sleep               1s
            click element       ${AddTrailerType}
            sleep               1s

TestCase For Add_Trailer_Type

            input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div/div/div/div/div[1]       43ft Low bed
            sleep               1s
            click button        Submit
