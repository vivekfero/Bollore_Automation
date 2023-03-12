*** Settings ***
Documentation   This is Configuration Branch Details file which indicate all the steps for Branch
Library     SeleniumLibrary
*** Variables ***
${AddBranch}             xpath://html/body/div/div/div/div/main/div/div/div/div[1]/div[2]/button/span

*** Keywords ***
Perform Branch Steps
       click element       ${MainMenu}
       sleep               1s
       click element       ${Configuration}
       sleep               1s
       click element       ${Branch}
       sleep               1s
       click element       ${addbranch}
       sleep               1s

Add New Branch
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input         BRAN0201
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input         DEPSDASODS012
  #     input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div/div[1]/input            NHSFD
   #    input text          xpath://html/body/div/div/div/div[4]/div/div/div[2]/form/div/div[4]/div/div/div/div[1]/input            91 9897867676
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[5]/div/div/div[1]/div[1]/input         GSTIN129121343
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[6]/div/div/div[1]/div[1]/textarea      DEHRADUN
       click element       xpath://html/body/div/div/div/div[3]/div/div/div[3]/button[2]
       sleep               1s






