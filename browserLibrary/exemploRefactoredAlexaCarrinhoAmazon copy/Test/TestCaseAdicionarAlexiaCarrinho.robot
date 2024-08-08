*** Settings ***

Resource    ../resources/resource.robot

*** Test Cases ***

Caso de teste 01 - Adicionar Echo Dot 5ª geração ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Dot 5ª geração ao carrinho
    Então deve aparecer "Echo Dot 5ª geração" no carrinho

Caso de teste 02 - Adicionar Echo Studio | O som mais extraordinário ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Studio | O som mais extraordinário ao carrinho
    Então deve aparecer "Echo Studio | O som mais extraordinário" no carrinho

Caso de teste 03 - Adicionar Echo Show 15: Smart Display ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Show 15: Smart Display ao carrinho
    Então deve aparecer "Echo Show 15: Smart Display" no carrinho