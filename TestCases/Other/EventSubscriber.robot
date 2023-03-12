*** Settings ***
*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${Browser}               https://sit.fast.bollore.fero.ai/
${url}                   chrome
${MainMenu}              xpath:/html/body/div/div/div/div[1]/header/div/button[1]
${Configuration}         xpath://div[contains(text(),'Configuration')]
${Event}                 xpath://div[contains(text(),'Event Subsciber')]
${AddEvent}              xpath://body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]/span[1]

*** Test Cases ***
TestCaseForEventSubscriber

       open browser             ${Browser}       ${url}
       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[1]/div/div/div[1]/div[1]/input       admin_vivek
       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[2]/div/div/div/div[1]/input         fero@1234
       click element             xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[3]/button
       wait until page contains  Orders   30s
       page should contain       Orders


       #TestCases For Evenet Subscriber

       click button           ${MainMenu}
        sleep  1s
       click element        ${Configuration}
       sleep  1s
       click element           ${event}
       sleep  1s
       click element           ${addevent}
       #Select Evenet for Reset
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[4]/div/div[2]/div/div
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[5]/div/div[1]/div/div             #  //html/body/div/div/div/div[5]/div/div[2]/div
       sleep                1s
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[3]/button[1]
       sleep                1s
       #Select Event for Add
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[4]/div/div[2]/div/div
       click element        xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div/div[1]/input[1]
       sleep                1s
       click element        xpath://html/body/div/div/div/div[5]/div/div[1]/div/div             #  //html/body/div/div/div/div[5]/div/div[2]/div
       sleep                1s
       click button         Submit       # xpath://html/body/div/div/div/div[3]/div/div/div[3]

       sleep  5s








*** Keywords ***
