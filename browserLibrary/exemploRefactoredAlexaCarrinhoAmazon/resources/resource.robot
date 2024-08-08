*** Settings ***

Library     Browser
Resource    variables.robot
Resource    keywords.robot

*** Keywords ***

Dado que estou no site da amazon
    Abro o navegador no site da amazon

Quando adiciono ${produto} ao carrinho
    Busco por ${produto}
    Clico no produto ${produto}
    Adiciono o produto ao carrinho

Então deve aparecer "${produto}" no carrinho
    Acesso o carrinho
    Verifico o produto ${produto} no carrinho
    Take Screenshot
