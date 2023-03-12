*** Settings ***
Documentation  This File is showing TestCases For Add New Bollore User
#Resource    ../Resources/Common.robot
Library  SeleniumLibrary

*** Variables ***
${AddUser}          xpath://span[contains(text(),'Add User')]


*** Keywords ***

TestCase for BolloreUser
      click element           ${MainMenu}
      sleep                   1s
      click element           ${UserManagement}
      sleep                   1s
      click element           ${BolloreUser}
      sleep                   1s
      click element           ${AddUser}
      sleep                   1s

TestCase For ResetUser
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[1]/div/div/div[1]/div[1]/input       User_Vivek
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input          fero@1234
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input          Vivek
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[4]/div/div/div/div[1]/input          Ghodasara
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[5]/div/div/div/div[1]/input[1]
    click element           xpath://html/body/div/div/div/div[2]/div/div/div/div
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[6]/div[1]/div/div/div[1]/input[1]
    click element           xpath://html/body/div/div/div/div[3]/div/div/div/div

    input text              xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[6]/div[2]/div/div/div[1]/input      9664992001
    input text              xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[7]/div/div/div/div[1]/input         vivekghodasara12@gmail.com
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div/div[1]/input[1]

    click element           xpath://html/body/div/div/div/div[4]/div/div[1]/div/div
    click button            Reset

TestCase For AddUser

    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[1]/div/div/div[1]/div[1]/input       User_Vivek
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[2]/div/div/div/div[1]/input          fero@1234
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[3]/div/div/div/div[1]/input          Vivek
    input text              xpath://html/body/div/div/div/div/main/div/div/div/form/div/div[4]/div/div/div/div[1]/input          Ghodasara
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[5]/div/div/div/div[1]/input[1]
    click element           xpath://html/body/div/div/div/div[2]/div/div/div/div
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[6]/div[1]/div/div/div[1]/input[1]
    click element           xpath://html/body/div/div/div/div[3]/div/div/div/div
    input text              xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[6]/div[2]/div/div/div[1]/input      9664992001
    input text              xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[7]/div/div/div/div[1]/input         vivekghodasara12@gmail.com
    click element           xpath://html/body/div/div/div/div[1]/main/div/div/div/form/div/div[8]/div/div/div/div[1]/input[1]
    click element           xpath://html/body/div/div/div/div[4]/div/div[1]/div/div
    click button            Submit
    sleep                   2s
