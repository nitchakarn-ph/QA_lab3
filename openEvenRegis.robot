*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    localhost:7272
${BROWSER}    Chrome
${WELCOME URL}    http://${SERVER}/Lab3/Registration.html

*** Test Cases ***
Open Event Registration Page
    Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}