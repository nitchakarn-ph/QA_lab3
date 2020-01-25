*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/Lab3/Registration.html
${SUCCESS URL}    http://localhost:7272/Lab3/Success.html
${FNAME}    Somsri
${LNAME}    Sodsai
${EMAIL}    somsai@kkumail.com
${PHONE}    081-001-1234

*** Test Cases ***
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
	
Empty First Name
    Input Text    lastname    ${LNAME}
	Input Text    organization    CS KKU
	Input Text    email    ${EMAIL}
	Input Text    phone    ${PHONE}
	Click Button    Register
	Location Should Contain    ${WELCOME URL}
	Wait Until Page Contains    *Please enter your first name!!

Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Empty Last Name
    Input Text    firstname    ${FNAME}
	Input Text    organization    CS KKU
	Input Text    email    ${EMAIL}
    Input Text    phone    ${PHONE}
    Click Button    Register
    Location Should Contain    ${WELCOME URL}
    Wait Until Page Contains    *Please enter your last name!!    
	
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
Empty First Name and Last Name
    Input Text    organization    CS KKU
	Input Text    email    ${EMAIL}
	Input Text    phone    ${PHONE}
	Click Button    Register
	Location Should Contain    ${WELCOME URL}
	Wait Until Page Contains    *Please enter your name!!
	
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Empty Email
    Input Text    firstname    ${FNAME}
	Input Text    lastname    ${LNAME}
	Input Text    organization    CS KKU
	Input Text    phone    ${PHONE}
	Click Button    Register
	Location Should Contain    ${WELCOME URL}
	Wait Until Page Contains    Please enter your email!!
	
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
Empty Phone Number
    Input Text    firstname    ${FNAME}
	Input Text    lastname    ${LNAME}
	Input Text    organization    CS KKU
	Input Text    email    ${EMAIL}
	Click Button    Register
	Location Should Contain    ${WELCOME URL}
	Wait Until Page Contains    Please enter your phone number!!
	
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
Invalid Phone Number
    Input Text    firstname    ${FNAME}
	Input Text    lastname    ${LNAME}
	Input Text    organization    CS KKU
	Input Text    email    ${EMAIL}
	Input Text    phone    1234
	Click Button    Register
	Location Should Contain    ${WELCOME URL}
	Wait Until Page Contains    Please enter a valid phone number!!
	
    