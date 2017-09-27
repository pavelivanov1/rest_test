*** Settings ***
Documentation    Suite description

Documentation           This is a simple test with Robot Framework

Library                 Selenium2Library

Resource                resource.robot

Suite Setup       Open Browser To Login Page
Suite Teardown    Close All Browsers
Test Setup        Go To Login Page
#Test Teardown     User logs out



*** Variables ***
${SERVER URL}           https://cloud.vidyocloudqa.com
${LOGIN PAGE URL}       ${SERVER URL}/login-widget
${BROWSER}              Chrome
${DELAY}                2
#${SIGNUP PAGE URL}      https://free.vidyocloudstaging.com/admin/login.html
${FREEUSER}             ecommerce.freemium@gmail.com
${FREEUSER PASSWORD}    V!dy0433

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations


*** Keywords ***
Provided precondition
    Setup system under test