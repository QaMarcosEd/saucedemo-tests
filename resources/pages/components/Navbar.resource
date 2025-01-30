*** Settings ***
Documentation        Acções e elemento da navbar

Library    Browser

*** Keywords ***
Go to cart page
    # indo para a pagina do carrinho
    Click    css=div#shopping_cart_container a.shopping_cart_link

    Wait For Elements State    css=span >> text=Your Cart