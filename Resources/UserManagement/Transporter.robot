*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${AddTransporter}       xpath://span[contains(text(),'Add Transporter')]


*** Keywords ***

TestCase For Transporter


     click element        ${MainMenu}
     sleep                1s

     #sleep                1s
     click element        ${UserManagement}
     sleep                1s
     click element        ${Transporter}
     sleep                1s
     click element        ${AddTransporter}
     maximize browser window
   #  sleep                1s

TestCase For Add_Company_Details

   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[2]/div/div/div/div[1]/input          C-W-ONE-CODE-1
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[3]/div/div/div/div[1]/input          MOIRA-CODE-1
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[4]/div/div/div/div[1]/input          CMPNY-VK-ORGANIC
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[5]/div/div/div/div[1]/input          TRSPTR-CIN-1
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[6]/div/div/div/div[1]/input          919898072304
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[7]/div/div/div/div[1]/input          AHMEDABAD-ISCON
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[8]/div/div/div/div[1]/input          PAN-QRTC928TRW
   input text           xpath://html/body/div/div/div/div/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[9]/div/div/div/div[1]/input          CMPNY11@GMAIL.COM

TestCase For Add_GST_Details

   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[12]/div/div/div/div[1]/input        GST-USY6354SFG781
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[13]/div/div/div/div[1]/input        15
 #  click element        xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[14]/div[1]/div/div[1]/div[1]/input
   click element        xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[14]/div[1]/div/div[1]/div[1]/input

 #  click element        xpath://html/body/div/div/div/div[2]/div/div/div/div/div[2]/div/div[2]
   click element        xpath://html/body/div[1]/div/div/div[2]/div/div/div/div/div[2]/div/div[2]
   sleep                1s




TestCase For Add_Bank_Details

   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[16]/div/div/div[1]/div[1]/input     VIVEK GHODASARA
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[17]/div/div/div/div[1]/input        BANK OF BARODA
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[18]/div/div/div[1]/div[1]/input        3529010005098
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[19]/div/div/div/div[1]/input        AHMEDBAD
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[20]/div/div/div/div[1]/input        IFSC-91823778

TestCase For Add_Licence_Details

   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[22]/div/div[2]/div/div/div/div[1]/input         LTS71625GS72
  # click element        xpath://label[contains(text(),'License Issue Date')]
   sleep                2s

TestCase For Admin_Approval_Details

   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[23]/div/div[2]/div/div/div[1]/div[1]/input       Admin_vivek
   input text           xpath://html/body/div/div/div/div[1]/main/div/div/div/div[2]/div[2]/div[1]/div/form/div/div[23]/div/div[3]/div/div/div[1]/div[1]/input       Admin
   click button         Reset
   sleep                3s

