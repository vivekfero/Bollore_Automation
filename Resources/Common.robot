*** Settings ***
Documentation  This is Common file for Begin Or End Web Test
Library  SeleniumLibrary



*** Variables ***

${Browser}               https://sit.fast.bollore.fero.ai/
${url}                   chrome
${MainMenu}              xpath://header/div[1]/button[1]

    #Variables for Order Module

${Order}                 xpath://div[contains(text(),'Orders')]
${PendingOrder}          xpath://div[contains(text(),'Pending Order')]
${DeliveryAdvice}        xpath://div[contains(text(),'Delivery Advices')]
${OrderConsolidation}    xpath://div[contains(text(),'Order Consolidation')]
${TripList}              xpath://div[contains(text(),'Trip List')]
${IntracityMovement}     xpath://div[contains(text(),'Intracity Movement')]

    #Variables for Configuration Module

${Configuration}         xpath://div[contains(text(),'Configuration')]
${Branch}                xpath://html/body/div/div/div/div/nav/div[1]/div/div[10]/div/div[2]/a[1]/div[2]/div
${Department}            xpath://div[contains(text(),'Department')]
${EventSubscriber}       xpath://div[contains(text(),'Event Subsciber')]
${Charge}                xpath://div[contains(text(),'Charge')]

    #Variables for Reports Module
${Analytics}             xpath://div[contains(text(),'Analytics')]
${Reports}               xpath://div[contains(text(),'Reports')]


    #Variables for User Management
${UserManagement}        xpath://div[contains(text(),'User Management')]
${Transporter}           xpath://div[contains(text(),'Transporters')]
${BolloreUser}           xpath://div[contains(text(),'Bollore Users')]


    #Variables for Route Management
${RouteManagement}       xpath://div[contains(text(),'Route Management')]
${Location}              xpath://div[contains(text(),'Location')]
${Routes}                xpath://div[contains(text(),'Routes')]


    #Variables for Product Management
${ProductManagement}       xpath://div[contains(text(),'Product Management')]
${Product}                 xpath://div[contains(text(),'Products')]
${Container}               xpath://div[contains(text(),'Container Types')]
${Trailer}                 xpath://div[contains(text(),'Trailer Types')]
${Vehicle}                 xpath://div[contains(text(),'Vehicle Types')]


    #Variables for Support
${Support}                xpath://div[contains(text(),'Support')]

    #Variables for commercial
${Commercials}             xpath://div[contains(text(),'Commercials')]
    #Variables for ShortTermBidding
${ShortTermBidding}        xpath://div[contains(text(),'Short Term Bidding')]
${CreateBid}               xpath://span[contains(text(),'Create Bid')]
    #Variables for LongTermRFQ
${LongTermRFQ}             xpath://div[contains(text(),'Long Term RFQ')]
${CreateRFQ}               xpath://span[contains(text(),'Create LRFQ')]
    #Variables for Contract
${Contract}                xpath://div[contains(text(),'Contract')]
${AddContract}             xpath://span[contains(text(),'Add Contract')]
    #Variables for Lease
${LeaseRequest}            xpath://div[contains(text(),'Lease Request')]
${CreateLeaseRequest}      xpath://span[contains(text(),'Create Lease Rate Request')]
    #Variables for RateEnquiry
${RateEnquiry}             xpath://div[contains(text(),'Rate Enquiry')]
${CreateRateEnquiry}       xpath://html/body/div[1]/div/div/div[1]/main/div/div/div/div[1]/div[2]/button/span/span


    #Variables for Pending Order
${PendingOrder}            xpath://div[contains(text(),'Pending Order')]
${CreateOrder}             xpath://span[contains(text(),'Create Order')]



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