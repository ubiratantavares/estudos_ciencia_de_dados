# Atividade Avaliativa do Módulo 2

**Questão 1**: Na imagem abaixo estão enumerados vários elementos criados com os quais o usuário pode interagir. 
Eles foram criados utilizando funções construtoras do pacote Shiny. 
Chamamos esses elementos de inputs ou widgets. 
Associe cada um deles com a função apropriada utilizada para criá-lo.

![Shiny Widgets Gallery](imagem1.png)

**Questão 2**: Abaixo estão enumerados diversos outputs construídos por funções do {shiny} e também algums pacotes externos:

* {flexdashboard}: https://pkgs.rstudio.com/flexdashboard/

* {shinydashboard}: https://rstudio.github.io/shinydashboard/

* {leaflet}: https://rstudio.github.io/leaflet/

*  {plotly}: https://plotly.com/r/

*  {visNetwork}: https://datastorm-open.github.io/visNetwork/

* {reactable}: https://glin.github.io/reactable/


Associe cada um dos itens com seu respectivo par de funções (render*() e *Output()) utilizados para sua criação. 
O primeiro item do par se refere à função utilizada para a criação do elemento no backend (server.R), 
e o segundo item à função utilizada para a criação do output no frontend (ui.R) da aplicação.

![Dasboard](imagem2.png)


1) Tabela interativa com busca, ordenação, paginação -> 'renderDataTable()' - 'dataTableOutput()'

2) Gráfico estático -> 'renderPlot()' - 'plotOutput()'

3) Gráfico interativo -> 'plotly::renderPlotly()' - 'plotly::plotlyOutput()'

4) Tabela interativa com ícones, formatação condicional, widgets e paginaçã -> 'reactable::renderReactable()' - 'reactable::reactableOutput()'

5) Tabela estática -> 'renderTable()' - 'tableOutput()'

6) Caixas de informação e valores -> 'shinydashboard::renderValueBox()' - 'shinydashboard::valueBoxOutput()'

7) Saída formatada em monoespaço -> 'renderPrint()' - 'verbatimTextOutput()'

8) Imagem -> 'renderImage()' - 'imageOutput()'

9) Rede de relacionamento -> 'visNetwork::renderVisNetwork()' - 'visNetwork::visNetworkOutput()'

10) Mapa de pontos ou bubble map -> 'leaflet::renderLeaflet()' - 'leaflet::leafletOutput()'

11) Indicadores ou medidores -> 'flexdashboard::renderGauge()' - 'flexdashboard::gaugeOutput()'

**Questão 3**: Associe cada uma das descrições dos itens com o componente relacionado à reatividade mais condizente com a descrição.

a) A ____________________ cria uma forma de observar eventos específicos e não todos os inputs dentro da expressão reativa, mas não retorna uma expressão reativa. Este componente é muito usado com botões de ação, aqueles chamados de "executar", "submeter" e "aplicar". Assim a reatividade não acontece quando qualquer outro input muda mas somente quando o botão é pressionado que o estado dos inputs é usado para realizar algo. Essa função não tem retorno, por isso tem bastante uso com atualização de elementos da interface via funções update*().

b) A ____________________ é um componente que recebe uma expressão reativa e suprime sua reatividade. Ou seja, uma mudança no input associado à expressão passada originalmente não mais afeta a expressão em que ela está, mesmo que tenha sido declarada como reativa originalmente, então isso permite tornar não reativo coisas reativas onde não se deseja que tenham reatividade.

c) A ____________________ embrulha uma expressão, porção de código R, para torná-la reativa. Expressões reativas são executadas apenas quando seus valores, os inputs, são alterados por widgets ou outras funções reativas.

d) A ____________________ serve para, ao passar um caminho de arquivo e uma função de leitura, retornar uma fonte de dados reativa para ser utilizada, ou seja, quando o arquivo mudar, a aplicação irá reagir a isso.

e) A ____________________ cria uma forma de monitorar ou observar que resposta à ações específicas relativas alguns eventos e não todos os inputs dentro da expressão reativa, e retorna uma expressão reativa. Este componente é muito usado com botões de ação geralmente chamados de "executar", "submeter" e "aplicar". Assim a reatividade não acontece quando qualquer outro input muda mas somente quando o botão é pressionado que o estado dos inputs é usado para realizar algo. O que retonado por esse construtor pode ser usados em outros lugares na aplicação.

f) A ____________________ cria um objeto que contém um único valor reativo. Quando esse objeto é modificado, todos os reativos dependentes dele são notificados.

g) A ____________________ cria um objeto com um temporizador que é executado pela passagem de um intervalo de tempo pré-determinado. Útil quando deseja-se programar uma ação periodicamente, atualizar o estado da aplicação a cada 30 segundos, por exemplo.

h) A ____________________ permite monitorar ou observar mudança em inputs ou expressões reativas passadas. Diferentemente de valores reativos, estes são executados sempre que os valores dos quais eles dependem são modificados. A diferença é essa estrutura não retorna objetos e por isso é muito usada para fazer update de widgets por meio das funções update.*().

i) A ____________________ cria um objeto para armazenamento de valores relativos. Funciona de forma similar a um vetor ou lista. Os valores que são armazenados nele são reativos, ou seja, seu conteúdo pode ser alterado, mas o objeto em si não.

j) A ____________________ é utilizada para criar uma fonte de dados reativa a partir de uma fonte de dados extrerna não reativa mas sujeita à modificação, como banco de dados. A periodicidade dos chamados da função pode ser determinada em função de mudanças no banco de dados que é consultado em intervalos de tempo definidos. É muito utilizada para aplicações que consomem dados em corrente (streaming).


1) reactiveValues()
2) observe()
3) eventReactive()
4) reactiveVal()
5) reactive()
6) reactiveFileReader()
7) reactiveTimer()
8) reactivePoll()
9) observeEvent()
10) isolate()


**Questão 4**: O link abaixo se refere ao cheat sheet (folha de cola) do pacote Shiny.

https://raw.githubusercontent.com/rstudio/cheatsheets/main/shiny.pdf

Sobre o seu conhecimento acerca deste recurso, marque a opção apropriada:

Escolha uma opção:

a. Não conheço cheat sheet mas certamente utilizarei.
b. Nenhuma das alternativas.
c. Não conheço o cheat sheet e acredito que não será de tanta utilidade.
d. Já conheço o cheat sheet e utilizo regularmente.
e. Já conheço o cheat sheet mas nunca utilizei.


