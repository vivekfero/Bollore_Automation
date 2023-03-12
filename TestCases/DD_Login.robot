*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup         login browser
Suite Teardown      End browser
Test Template       Invalid Login


*** Test Cases ***
Right user empty pwd        admin@yourstore.com        ${EMPTY}
Right user wrong pwd        admin@yourstore.com        fero112
Wrong user right pwd        admin@youstore.com         admin
Wrong user empty pwd        admin@yourtore.com         ${EMPTY}
Wrong user wrong pwd        admin@yourtore.com         xyz

*** Keywords ***
Invalid Login
        [Arguments]     ${username}      ${password}
        input username      ${username}
        input password      ${password}
        click login button
        error message should be visible
