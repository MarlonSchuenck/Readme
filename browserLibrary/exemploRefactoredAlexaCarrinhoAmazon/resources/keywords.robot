*** Settings ***

Resource    resource.robot

*** Keywords ***
Abro o navegador no site da amazon
    New Browser     headless=False
    New Page        ${url}

Busco por ${produto}
    Fill Text    ${inputBuscar}    ${produto}
    Click        ${botao.buscar}

Adiciono o produto ao carrinho
    Click    ${botao.adicionarAoCarrinho}

Acesso o carrinho
    Click    ${botao.carrinho}

Clico no produto ${produto}
    Click    xpath=//span[@class="a-size-base-plus a-color-base a-text-normal"][contains(.,'${produto}')]

Verifico o produto ${produto} no carrinho
    Wait For Elements State    xpath=//span[@class="a-truncate-cut"][contains(.,'${produto}')]
