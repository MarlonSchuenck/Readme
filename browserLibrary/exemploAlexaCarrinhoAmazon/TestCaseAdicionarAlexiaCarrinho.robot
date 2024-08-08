*** Settings ***

Library     Browser

*** Variables ***

${url}                      https://www.amazon.com.br/
${inputBuscar}              id=twotabsearchtextbox
${echoDot5}                 xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Dot 5ª geração ')]
${echoStudio}                  xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Studio | O som mais extraordinário')]
${echoShow15}               xpath=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'Echo Show 15: Smart Display')]
${btnBuscar}                id=nav-search-submit-button
${btnAdicionarAoCarrinho}   id=add-to-cart-button
${btnCarrinho}              id=nav-cart-count-container
${verificarEchoDot5}        xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Dot 5ª geração')]
${verificarEchoStudio}         xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Studio | O som mais extraordinário')]
${verificarEchoShow15}      xpath=//span[@class='a-truncate-cut'][contains(.,'Echo Show 15: Smart Display')]

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

Quando adiciono Echo Studio | O som mais extraordinário ao carrinho
    Busco por Echo Studio | O som mais extraordinário
    Clico no produto Echo Studio | O som mais extraordinário
    Adiciono o produto ao carrinho

Então deve aparecer "Echo Studio | O som mais extraordinário" no carrinho
    Acesso o carrinho
    Wait For Elements State    ${verificarEchoStudio}
    Take Screenshot

Quando adiciono Echo Show 15: Smart Display ao carrinho
    Busco por Echo Show 15: Smart Display
    Clico no produto Echo Show 15: Smart Display
    Adiciono o produto ao carrinho

Então deve aparecer "Echo Show 15: Smart Display" no carrinho
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

Busco por Echo Studio | O som mais extraordinário
    Fill Text    ${inputBuscar}    Echo Studio | O som mais extraordinário
    Click        ${btnBuscar}

Clico no produto Echo Studio | O som mais extraordinário
    Click    ${echoStudio}

Busco por Echo Show 15: Smart Display
    Fill Text    ${inputBuscar}    Echo Show 15: Smart Display
    Click        ${btnBuscar}

Clico no produto Echo Show 15: Smart Display
    Click    ${echoShow15}