*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/Lab3/Registration.html
${SUCCESS URL}    http://${SERVER}/Lab3/Success.html
${FNAME}    Somsri
${LNAME}    Sodsai
${EMAIL}    somsai@kkumail.com
${PHONE}    081-001-1234

*** Test Cases ***
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Register Success
    Open Browser    ${WELCOME URL}    ${BROWSER}
    Input Text    firstname    Somsri
	Input Text    lastname    Sodsai
	Input Text    organization    CS KKU
	Input Text    email    somsri@kkumail.com
	Input Text    phone    081-001-1234
	Click Button    Register
	Location Should Contain    ${SUCCESS URL}
	Title Should Be    Success
	Wait Until Page Contains    Success
	Wait Until Page Contains    Thank you for participating in our event
	
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
Register Success No Organization Info
    Input Text    firstname    ${FNAME}
	Input Text    lastname    ${LNAME}
	Input Text    email    ${EMAIL}
	Input Text    phone    ${PHONE}
	Click Button    Register
	Location Should Contain    ${SUCCESS URL}
	Title Should Be    Success
	Wait Until Page Contains    Success
	Wait Until Page Contains    Thank you for participating in our event
	