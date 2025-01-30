def verificar_ordem_alfabetica(lista):
    """
    Verifica se uma lista de strings está em ordem alfabética crescente.
    
    :param lista: Lista de strings a ser verificada
    :return: None. Lança uma exceção se a lista não estiver em ordem alfabética.
    """
    if lista != sorted(lista):
        raise AssertionError(f"A lista não está em ordem alfabética crescente: {lista}")

    
def verificar_ordem_alfabetica_decrescente(lista):
    """
    Verifica se uma lista de strings está em ordem alfabética crescente.
    
    :param lista: Lista de strings a ser verificada
    :return: None. Lança uma exceção se a lista não estiver em ordem alfabética.
    """
    if lista != sorted(lista, reverse=True):
        raise AssertionError(f"A lista não está em ordem alfabética decrescente: {lista}")

def verificar_numeros_em_ordem_crescente(lista):
    """
    Verifica se uma lista de strings representando valores monetários com símbolo de dólar
    está em ordem crescente.
    
    :param lista: Lista de strings (ex.: ['$7.99', '$9.99', ...])
    :return: None. Lança uma exceção se a lista não estiver em ordem crescente.
    """
    # Converter os valores para float removendo o símbolo de dólar
    numeros = [float(preco.replace('$', '')) for preco in lista]
    # Verificar se estão em ordem crescente
    if numeros != sorted(numeros):
        raise AssertionError(f"A lista não está em ordem crescente: {lista}")

def verificar_numeros_em_ordem_decrescente(lista):
    """
    Verifica se uma lista de strings representando valores monetários com símbolo de dólar
    está em ordem crescente.
    
    :param lista: Lista de strings (ex.: ['$7.99', '$9.99', ...])
    :return: None. Lança uma exceção se a lista não estiver em ordem crescente.
    """
    # Converter os valores para float removendo o símbolo de dólar
    numeros = [float(preco.replace('$', '')) for preco in lista]
    # Verificar se estão em ordem crescente
    if numeros != sorted(numeros, reverse=True):
        raise AssertionError(f"A lista não está em ordem crescente: {lista}")