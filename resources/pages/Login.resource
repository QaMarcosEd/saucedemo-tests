*** Settings ***
Documentation        Ações e elementos da página de Login

Library        Browser

*** Keywords ***
Submit login form
    [Arguments]        ${username}        ${password}

    Fill Text    xpath=//input[@id='user-name']    ${username}
    Fill Text    xpath=//input[@id='password']     ${password}
        
    Click    xpath=//input[@id='login-button']

Verify Products Page Loaded
    Wait For Elements State    
    ...    text=Products    
    ...    visible    5

Notice should be
    [Arguments]        ${output_message}

    Wait For Elements State    //h3[@data-test='error']    visible

    ${actual_message}=    Get Text    //h3[@data-test='error']

    Should Be Equal    ${actual_message}    ${output_message}