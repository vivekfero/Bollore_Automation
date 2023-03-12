
*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Browser}               https://sit.fast.bollore.fero.ai/
${MainMenu}              xpath://html/body/div/div/div/div[1]/header/div/button[1]/span/i
${Configuration}         xpath://html/body/div/div/div/div/nav/div[1]/div/div[10]/div/div[1]/div[2]/div
${Branch}                xpath://html/body/div/div/div/div/nav/div[1]/div/div[10]/div/div[2]/a[1]/div[2]/div
${AddBranch}             xpath://html/body/div/div/div/div/main/div/div/div/div[1]/div[2]/button/span
${SubmitBranch}          xpath://html/body/div/div/div/div[3]/div/div/div[3]/button[2]
${Charges}               xpath://div[contains(text(),'Charge')]
${AddCharges}            xpath://body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]/span[1]
${SubmitCharges}         xpath://span[contains(text(),'Submit')]
${Event}                 xpath://div[contains(text(),'Event Subsciber')]
${AddEvent}              xpath://body[1]/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[2]/button[1]/span[1]/span[1]
${url}               chrome


*** Test Cases ***
 LoginToWebsite


       open browser             ${Browser}       ${url}
       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[1]/div/div/div[1]/div[1]/input       admin_vivek
       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[2]/div/div/div/div[1]/input         fero@1234
       click element             xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[3]/button
       wait until page contains  Orders   30s
       page should contain       Orders


       #Perform Operation on Branch

      click element        ${mainmenu}
      sleep                1s
      click element        ${configuration}
       sleep                1s
       click element        ${branch}
      sleep                1s
       click element        ${AddBranch}
       sleep                1s
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input         JNDT65774
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[2]/div/div/div[1]/div[1]/input          Jamnagar1
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[5]/div/div/div[1]/div[1]/input         GS147683
       input text          xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[6]/div/div/div[1]/div[1]/textarea      Morbi
      click element       ${SubmitBranch}
      sleep               1s

       #Perform Operation on Charges

     click element      ${mainmenu}
       sleep               1s
      click element      ${Configuration}
       sleep               1s
       click element      ${configuration}
       sleep               1s
      click element      ${charges}
       sleep               1s
      click element      ${AddCharges}
       sleep               1s
     input text         xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[1]/div/div/div[1]/div[1]/input      C08376533
     input text         xpath://html/body/div/div/div/div[3]/div/div/div[2]/form/div/div[3]/div/div/div[1]/div[1]/input     This is for testing
      sleep              1s
       click element      ${SubmitCharges}
       sleep              3s


     # click element     ${mainmenu}
     #  sleep             1s
      # click element     ${configuration}
      # sleep             1s
     # click element     ${Configuration}
     # sleep             1s
     # click element     ${event}
      #sleep             1s
      #click element    ${AddEvent}
      # sleep           1s

       close browser

*** Keywords ***










