*** Settings ***
Documentation        Cenários de teste dos produtos listados

Library    Collections
Library    ../utils/lista.py

Resource        ../resources/Base.resource


Test Setup        Start session
Test Teardown     Take Screenshot

*** Test Cases ***
Deve visualizar detalhes do produto
    [Tags]    Item
    Submit login form        standard_user        secret_sauce

    Click product and check details   

Deve exibir produtos em ordem alfabética crescente.
    Submit login form        standard_user        secret_sauce

    Wait For Elements State    css=select[data-test="product-sort-container"]    visible
    Select Options By    css=select[data-test="product-sort-container"]    value    az

    ${produtos}=    Get Elements    css=.inventory_item_name  # Pega todos os elementos de nome de produto
    ${nomes_produtos}=    Create List    # Cria uma lista vazia para armazenar os nomes

    FOR    ${produto}    IN    @{produtos}
        ${nome}=    Get Text    ${produto}    # Extrai o texto de cada elemento
        Append To List    ${nomes_produtos}    ${nome}
    END

    Log    ${nomes_produtos}    # Loga a lista de nomes

    Verificar Ordem Alfabetica    ${nomes_produtos}

Deve exibir produtos em ordem alfabética decrescente.
    [Tags]    Teste
    Submit login form        standard_user        secret_sauce

    Wait For Elements State    css=select[data-test="product-sort-container"]    visible
    Select Options By    css=select[data-test="product-sort-container"]    value    za

    ${produtos}=    Get Elements    css=.inventory_item_name  # Pega todos os elementos de nome de produto
    ${nomes_produtos}=    Create List    # Cria uma lista vazia para armazenar os nomes

    FOR    ${produto}    IN    @{produtos}
        ${nome}=    Get Text    ${produto}    # Extrai o texto de cada elemento
        Append To List    ${nomes_produtos}    ${nome}
    END

    Log    ${nomes_produtos}    # Loga a lista de nomes

    Verificar Ordem Alfabetica Decrescente    ${nomes_produtos}

Deve exibir produtos em ordem crescente de preço.
    [Tags]    Price
    Submit login form        standard_user        secret_sauce

    Wait For Elements State    css=select[data-test="product-sort-container"]    visible
    Select Options By    css=select[data-test="product-sort-container"]    value    lohi

    ${produtos}=    Get Elements    css=.inventory_item_price  # Pega todos os elementos de nome de produto
    ${preco_produtos}=    Create List    # Cria uma lista vazia para armazenar os nomes

    FOR    ${produto}    IN    @{produtos}
        ${nome}=    Get Text    ${produto}    # Extrai o texto de cada elemento
        Append To List    ${preco_produtos}    ${nome}
    END

    Log    ${preco_produtos}
    
    Verificar Numeros Em Ordem Crescente    ${preco_produtos}

Deve exibir produtos em ordem decrescente de preço.
    Submit login form        standard_user        secret_sauce

    Wait For Elements State    css=select[data-test="product-sort-container"]    visible
    Select Options By    css=select[data-test="product-sort-container"]    value    hilo

    ${produtos}=    Get Elements    css=.inventory_item_price  # Pega todos os elementos de nome de produto
    ${preco_produtos}=    Create List    # Cria uma lista vazia para armazenar os nomes

    FOR    ${produto}    IN    @{produtos}
        ${nome}=    Get Text    ${produto}    # Extrai o texto de cada elemento
        Append To List    ${preco_produtos}    ${nome}
    END

    Log    ${preco_produtos}
    
    Verificar Numeros Em Ordem Decrescente    ${preco_produtos}