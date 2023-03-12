*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}               https://sit.fast.bollore.fero.ai/
${url}                   chrome


*** Keywords ***
Begin Web Test

       open browser              ${Browser}      ${url}

       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[1]/div/div/div[1]/div[1]/input       admin_vivek
       input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[2]/div/div/div/div[1]/input         fero@1234
       click element             xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[3]/button
       wait until page contains  Orders   30s
       page should contain       Orders


End Web Test
       close browser