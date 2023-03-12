*** Settings ***
Library     Seleniumlibrary

*** Variables ***
${URL}           https://admin-demo.nopcommerce.com/
${Browser}       chrome


*** Keywords ***
login browser
       open browser     ${URL}      ${Browser}
       maximize browser window

End browser
       close browser

input username
       [Arguments]      ${username}
       input text                xpath://input[@id='Email']       ${username}
     #  input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[1]/div/div/div[1]/div[1]/input        ${username}

input password
        [Arguments]     ${password}
        input text                xpath://input[@id='Password']     ${password}
     #   input text                xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[2]/div/div/div/div[1]/input           ${password}

click login button
       click element            xpath://button[contains(text(),'Log in')]
    #   click element             xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div[3]/button

error message should be visible
       page should contain      Login was unsuccessful.
     #  page should contain      Unable to log in with provided credentials.

dashboard should be visible
       page should contain      Dashboard
     #  page should contain      Dashboard



