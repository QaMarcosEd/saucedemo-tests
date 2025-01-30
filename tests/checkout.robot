*** Settings ***
Documentation        Cenarios de teste checkout

Library    Collections
Library    ../utils/lista.py

Resource        ../resources/Base.resource


Test Setup        Start session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve validar o fluxo completo de checkout

    Submit login form        standard_user        secret_sauce

    Add item to cart and verify count
    Go to cart page

    Click    id=checkout

    Fill Text    id=first-name    Marcos
    Fill Text    id=last-name     Araujo
    Fill Text    id=postal-code   47740046

    Click    id=continue

    Click    xpath=//button[@name='finish']
    
    ${element}        Set Variable        css=.complete-header

    Wait For Elements State    
    ...    ${element}
    ...    visible    5

    Get Text    ${element}    equal    Thank you for your order!