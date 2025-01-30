*** Settings ***
Documentation        Cenários de teste do carrinho de compras

Resource        ../resources/Base.resource

Test Setup        Start session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve adicionar item no carrinho
    Submit login form        standard_user        secret_sauce

    Add item to cart and verify count
    Go to cart page
    Check item in cart page

# Deve visualizar detalhes do produto
#     [Tags]    Item
#     Submit login form        standard_user        secret_sauce

#     Click product and check details    

Deve remover item do carrinho
    [Tags]    Remove
    Submit login form        standard_user        secret_sauce

    Add item to cart and verify count
    Go to cart page
    
    Click    css=button#remove-sauce-labs-backpack

    Wait For Elements State    css=div.removed_cart_item    attached    5

Permitir que o produto seja adicionado ao carrinho diretamente na página do produto clicado
    [Tags]    Test
    Submit login form        standard_user        secret_sauce
    
    Click product and check details   
    
    Click    css=button#add-to-cart
    ${cart_value}=    Get Text    css=span[data-test="shopping-cart-badge"]
    Should Be Equal As Numbers    ${cart_value}    1

    Go to cart page
    Check item in cart page

*** Keywords ***
