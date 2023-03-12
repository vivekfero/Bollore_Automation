*** Settings ***
Resource    ../Resources/Common.robot

*** Variables ***
${AddContainerType}         xpath://span[contains(text(),'Add Container Type')]

*** Keywords ***

TestCase For Container

        click element           ${MainMenu}
        sleep                   1s
        click element           ${ProductManagement}
        sleep                   1s
        click element           ${Container}
        sleep                   1s
        click element           ${AddContainerType}
        sleep                   1s

TestCase For Reset_Container_Type

        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input          FCL 21 Feet STD
        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div/div[1]/input             3
        click button            Reset

TestCase For Add_Container_Type

        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input          FCL 10 Feet
        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div/div[1]/input             3
        click element           xpath://label[contains(text(),'Temperature Controlled')]
        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[4]/div/div/div[1]/div[1]/input          17
        input text              xpath://html/body/div[1]/div/div/div[3]/div/div/div[2]/form/div/div[5]/div/div/div/div[1]/input             27
        click button            Submit
        sleep                   3s
