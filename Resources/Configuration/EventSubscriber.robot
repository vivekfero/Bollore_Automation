*** Settings ***
Documentation   This is Configuration  EvenetSubscriber file which indicate the all the steps for EventSubscriber
Library        SeleniumLibrary

*** Variables ***
${AddEvent}              xpath://body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]/span[1]


*** Keywords ***
Perform EvenetSubscriber Steps
       click element       ${MainMenu}
       sleep               1s
       click element       ${Configuration}
       sleep               1s
       click element       ${Configuration}
       sleep               1s
       click element       ${EventSubscriber}
       sleep               1s
       click element       ${AddEvent}
       sleep               1s

Perform EventSubscriber Reset Steps
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[4]/div/div[2]/div/div
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[5]/div/div[2]/div             # //html/body/div/div/div/div[5]/div/div[1]/div/div
       sleep                1s
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[3]/button[1]
       sleep                1s

Add New EvenetSubscriber
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[4]/div/div[2]/div/div
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[5]/div/div[2]/div
       sleep                1s
       click button         Submit
       sleep  2s




