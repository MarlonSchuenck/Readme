*** Settings ***

Library     Browser

*** Variables ***

${url}                      https://www.amazon.com.br/
${inputBuscar}              id=twotabsearchtextbox
${echoDot5}                 xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Dot 5ª geração | O Echo Dot com o melhor som já lançado | Cor Preta')]
${echoPop}                  xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Pop | Smart speaker compacto com som envolvente e Alexa | Cor Branca')]
${echoShow15}               xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Show 15: Smart Display Full HD de 15,6" com Alexa e experiência Fire TV | Streaming, organização e casa inteligente | Controle remoto incluso')]
${btnBuscar}                id=nav-search-submit-button
${btnAdicionarAoCarrinho}   id=add-to-cart-button
${btnCarrinho}              id=nav-cart-count-container
${verificarEchoDot5}        xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Dot 5ª geração | O Echo Dot com o melhor som já lançado | Cor Preta')]
${verificarEchoPop}         xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Pop | Smart speaker compacto com som envolvente e Alexa | Cor Branca')]
${verificarEchoShow15}      xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Show 15')]

*** Test Cases ***

Caso de teste 01 - Adicionar Echo Dot 5ª geração ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Dot 5ª geração ao carrinho
    Então deve aparecer "Echo Dot 5ª geração" no carrinho

Caso de teste 02 - Adicionar Echo Pop ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Pop ao carrinho
    Então deve aparecer "Echo Pop" no carrinho

Caso de teste 03 - Adicionar Echo Show 15 ao carrinho da amazon
    Dado que estou no site da amazon
    Quando adiciono Echo Show 15 ao carrinho
    Então deve aparecer "Echo Show 15" no carrinho

*** Keywords ***

Dado que estou no site da amazon
    Abro o navegador no site da amazon

Quando adiciono Echo Dot 5ª geração ao carrinho
    Busco por Echo Dot 5ª geração
    Clico no produto Echo Dot 5ª geração
    Adiciono o produto ao carrinho

Então deve aparecer "Echo Dot 5ª geração" no carrinho
    Acesso o carrinho
    Wait For Elements State    ${verificarEchoDot5}
    Take Screenshot

Quando adiciono Echo Pop ao carrinho
    Busco por Echo Pop
    Clico no produto Echo Pop
    Adiciono o produto ao carrinho

Então deve aparecer "Echo Pop" no carrinho
    Acesso o carrinho
    Wait For Elements State    ${verificarEchoPop}
    Take Screenshot

Quando adiciono Echo Show 15 ao carrinho
    Busco por Echo Show 15
    Clico no produto Echo Show 15
    Adiciono o produto ao carrinho

Então deve aparecer "Echo Show 15" no carrinho
    Acesso o carrinho
    Wait For Elements State    ${verificarEchoShow15}
    Take Screenshot

Abro o navegador no site da amazon
    New Browser     headless=False
    New Page        ${url}

Busco por Echo Dot 5ª geração
    Fill Text    ${inputBuscar}    Echo Dot 5ª geração
    Click        ${btnBuscar}

Clico no produto Echo Dot 5ª geração
    Click    ${echoDot5}

Adiciono o produto ao carrinho
    Click    ${btnAdicionarAoCarrinho}

Acesso o carrinho
    Click    ${btnCarrinho}

Busco por Echo Pop
    Fill Text    ${inputBuscar}    Echo Pop
    Click        ${btnBuscar}

Clico no produto Echo Pop
    Click    ${echoPop}

Busco por Echo Show 15
    Fill Text    ${inputBuscar}    Echo Show 15
    Click        ${btnBuscar}

Clico no produto Echo Show 15
    Click    ${echoShow15}