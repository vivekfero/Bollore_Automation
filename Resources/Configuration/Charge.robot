*** Settings ***
Documentation   This is Configuration Charge Details file which indicate all the steps for Charge
Library     SeleniumLibrary
*** Variables ***
${AddCharges}            xpath://body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]/span[1]


*** Keywords ***
Perform Charge Steps
       click element       ${MainMenu}
       sleep               1s
       click element       ${Configuration}
       sleep               1s
       click element       ${Configuration}
       sleep               1s
       Click element       ${Charge}
       sleep               1s
       Click element       ${AddCharges}
       sleep               1s

Add New Charge
       input text         xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input      CRG1234123
       input text         xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div[1]/div[1]/input      This is for Demo
       click button       Submit
       sleep              1s




