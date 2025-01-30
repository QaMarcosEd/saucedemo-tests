*** Settings ***
Documentation        Ações e elemento da página Inventory

Library        Browser

*** Keywords ***
Add item to cart and verify count
    # Clicando para adicionar item no carrinho
    Click    id=add-to-cart-sauce-labs-backpack

    # Primeira verificação no icone do carrinho, se foi adicionado o produto    
    ${cart_value}=    Get Text    css=span[data-test="shopping-cart-badge"]
    Should Be Equal As Numbers    ${cart_value}    1

Check item in cart page
    # Verificando se o item está presente na página do carrinho
    Wait For Elements State    css=div.cart_item    visible    5
    ${item_in_cart}=    Get Text    css=div.cart_item_label
    Should Contain    ${item_in_cart}    Sauce Labs Backpack

Click product and check details
    Click    xpath=//div[text()="Sauce Labs Backpack"]

    Wait For Elements State    text=Sauce Labs Backpack    visible    5