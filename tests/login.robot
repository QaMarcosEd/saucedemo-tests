*** Settings ***
Documentation        Cénarios de teste de Login Usuário

Resource        ../resources/Base.resource

Test Setup        Start session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve logar como usuário
    Submit login form        standard_user        secret_sauce
    Verify Products Page Loaded

Tentativa de login com dados incorretos
    [Tags]    incorrect
    
    [Template]    Login with verify notice
    ${EMPTY}                ${EMPTY}            Epic sadface: Username is required
    standard_user           ${EMPTY}            Epic sadface: Password is required
    ${EMPTY}                secret_sauce        Epic sadface: Username is required
    locked_out_user         secret_sauce        Epic sadface: Sorry, this user has been locked out.

*** Keywords ***
Login with verify notice
    [Arguments]    ${username}    ${password}    ${output_message}

    Submit login form       ${username}    ${password}
    Notice should be        ${output_message}
