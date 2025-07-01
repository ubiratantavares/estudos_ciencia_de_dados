# Módulo 1 - Análise de Redes Complexas

## O que são redes complexas e por que estudá-las?

Olá! Seja bem-vindo a mais um conteúdo do nosso curso de Introdução à Ciência de Dados. Nesta aula, vamos explorar um tema fascinante e essencial para compreender muitos fenômenos do mundo atual: as **redes complexas**.

Você já parou para pensar em como diversos sistemas ao nosso redor — sejam sociais, biológicos ou tecnológicos — estão interligados e possuem comportamentos difíceis de prever? Pois é exatamente isso que caracteriza um sistema complexo. Nosso objetivo é entender o que são esses sistemas, como eles podem ser organizados em forma de rede e como podemos analisá-los utilizando conceitos matemáticos e computacionais.

## O que são sistemas complexos?

Sistemas complexos são compostos por um grande número de elementos ou componentes que interagem entre si, de forma que o comportamento coletivo do sistema não pode ser facilmente previsto apenas observando os componentes isoladamente.

Um exemplo clássico é uma **colônia de formigas**. Cada formiga individual possui um comportamento simples, mas, quando interagem, surge um comportamento coletivo organizado, como a construção de formigueiros ou busca coordenada por alimento. Esse fenômeno é chamado de **organização emergente**.

Além da organização emergente, sistemas complexos apresentam outras características, como:

* **Hierarquia e emaranhamento:** As relações entre os componentes podem formar estruturas hierárquicas, e essas hierarquias muitas vezes se entrelaçam, criando ciclos complexos que dificultam a análise do sistema.

* **Imprevisibilidade:** Devido à grande quantidade de interações e à complexidade das relações, o comportamento global do sistema é difícil de prever com precisão.

## Exemplos de sistemas complexos

Os sistemas complexos estão presentes em diversas áreas da vida e da natureza. Veja alguns exemplos:

* **Cérebro humano:** Com bilhões de neurônios interconectados por trilhões de sinapses, o cérebro é um dos sistemas complexos mais estudados. O comportamento emergente desse sistema é justamente a nossa mente e as capacidades cognitivas que nos tornam humanos.

* **Redes sociais:** Plataformas como o Facebook conectam bilhões de usuários, gerando um nível de interação tão elevado que o comportamento coletivo torna-se imprevisível e complexo de analisar.

* **Sociedade:** As interações entre pessoas, objetos e artefatos sociais formam um vasto sistema complexo, onde emergem comportamentos coletivos e padrões sociais.

* **Clima:** A interação entre diferentes componentes do sistema climático (atmosfera, oceanos, solos, etc.) gera um comportamento altamente complexo e difícil de prever, o que explica o grande desafio em criar simuladores climáticos precisos.

* **Genética e doenças:** As relações entre genes e o surgimento de determinadas doenças ou características genéticas também podem ser modeladas como um sistema complexo.

* **Relações comerciais e governamentais:** As redes de fornecedores de produtos e serviços, principalmente em grandes organizações ou governos, formam sistemas complexos, onde os nós representam os fornecedores e as conexões representam as relações comerciais.

## Redes complexas: Modelando sistemas com grafos

A maioria dos sistemas complexos pode ser analisada e modelada como **redes complexas**, compostas por **nós** (os componentes do sistema) e **arestas** (as interações entre esses componentes).

Essa forma de representação é baseada na **teoria dos grafos**, uma área da matemática que remonta aos estudos de Euler e que hoje é fundamental para o entendimento e a modelagem desses sistemas.

Por exemplo, problemas clássicos da computação, como o **Problema do Caixeiro Viajante**, que busca determinar a rota mais eficiente entre vários pontos, são modelados utilizando grafos, o que demonstra a importância desse conceito para o estudo de redes complexas.

### Redes vs. Grafos: Qual a diferença?

Na linguagem cotidiana, usamos o termo **rede** para nos referirmos aos sistemas reais — como a rede social, a rede de empresas ou a rede mundial de computadores (World Wide Web). Já no contexto matemático e computacional, usamos o termo **grafo** para nos referirmos ao modelo abstrato dessas redes.

Por exemplo:

* **Rede social** → representação matemática: **grafo social**.

* **World Wide Web** → representação matemática: **grafo da web**.

## Tipos de grafos: Relações e Direcionalidade

Os grafos podem ser classificados de diferentes formas, de acordo com as características das conexões entre os nós:

### Quanto ao tipo de relação:

* **Unirrelacional:** Existe apenas um tipo de relação entre os nós. Por exemplo, um grafo representando apenas relações de amizade entre pessoas.

* **Multirrelacional:** Existem vários tipos de relações entre os nós. Por exemplo, um grafo onde as pessoas podem ser amigas, seguir umas às outras, ou compartilhar interesses em filmes.

### Quanto à direção das relações:

* **Grafo dirigido:** As conexões possuem uma direção. Exemplo: Se Alex segue Carla em uma rede social, isso não implica que Carla segue Alex.

* **Grafo não dirigido:** As conexões são bidirecionais ou mútuas. Exemplo: Se Alex é amigo de Carla, Carla também é amiga de Alex.

### Exemplos ilustrativos:

* Um grafo unirrelacional e não dirigido pode representar relações de amizade, onde a amizade é mútua e única.
* Um grafo multirrelacional e dirigido pode representar, por exemplo, as relações entre pessoas e filmes, incluindo informações como quais filmes as pessoas assistiram, quais são os favoritos e quem segue quem em uma rede social.

## A importância da modelagem apropriada

Diferentes problemas exigem diferentes modelos de rede. É fundamental escolher a representação adequada de acordo com o objetivo da análise. Por exemplo:

* Se queremos analisar **padrões de chamadas telefônicas**, criamos um grafo dirigido, onde cada ligação tem um emissor e um receptor.

* Se o interesse está em identificar apenas **rede de contatos**, podemos usar um grafo não dirigido.

A forma como estabelecemos as conexões entre os nós deve sempre estar alinhada à natureza do problema em estudo.

## Exemplos clássicos de redes complexas

Veja alguns exemplos reais de redes complexas e como elas podem ser modeladas:

* **World Wide Web (WWW):** Grafo dirigido.

* **Interações entre proteínas:** Grafo não dirigido e sem peso.

* **Redes de colaboração acadêmica:** Grafo não dirigido, podendo incluir pesos para representar a intensidade ou frequência da colaboração.

* **Chamadas de telefones móveis:** Grafo dirigido e com peso, onde o peso pode representar a quantidade ou duração das chamadas.

* **Amizades no Facebook:** Grafo não dirigido e sem peso.

Além disso, a modelagem de redes complexas é uma abordagem utilizada há muito tempo para entender desde as rotas estratégicas no Mediterrâneo na Europa medieval até fenômenos contemporâneos, como:

* **Polarização de blogs políticos** durante as eleições presidenciais dos Estados Unidos em 2004, que revelou padrões claros de divisão ideológica.

* **Modelagem de contágio biológico**, como a disseminação da tuberculose em uma comunidade, onde as conexões sociais influenciam diretamente a propagação da doença.

* **Análise de comportamento político**, como a visualização dos votos de senadores brasileiros em 2012, revelando agrupamentos de parlamentares que votaram juntos, refletindo alinhamentos partidários.

Perfeito! Aqui está a finalização profissional e estruturada do blog post, com base no trecho final da transcrição:

## Conceitos fundamentais em redes complexas

Para compreender e analisar redes complexas, é essencial conhecer alguns conceitos matemáticos básicos relacionados aos **grafos**, que representam essas redes:

### Grau de um nó

O **grau** de um nó indica o número total de conexões que ele possui. Em uma rede social, por exemplo, o grau de uma pessoa representa o número de contatos diretos que ela possui.

### Distância entre nós

A **distância** entre dois nós é medida pelo menor caminho que os conecta dentro da rede. Essa métrica é fundamental para entender o quão "próximos" estão os elementos em uma rede complexa.

### Diâmetro da rede

O **diâmetro** da rede corresponde à maior distância existente entre quaisquer dois nós do grafo. Essa medida oferece uma noção da "amplitude" da rede e de sua complexidade estrutural.

### Ciclos

Um **ciclo** ocorre quando é possível partir de um nó, percorrer um conjunto de conexões e retornar ao mesmo nó. A presença de ciclos pode indicar estruturas complexas de interação e feedback dentro da rede.

### Grafos conexos e não conexos

* Um **grafo conexo** é aquele em que todos os nós estão, de alguma forma, interligados, ou seja, existe um caminho entre qualquer par de nós.

* Já um **grafo não conexo** possui grupos isolados de nós, sem conexões entre alguns elementos.

### Grafos completos

Em um **grafo completo**, todos os nós estão diretamente conectados entre si. Embora seja uma estrutura mais simples de entender, na prática, poucas redes complexas reais são completamente conectadas.

### Subgrafos e cliques

Um **subgrafo** ou **subrede** é um subconjunto da rede original, contendo apenas alguns de seus nós e conexões. Dentro desses subgrafos, quando todos os nós estão interligados, temos o que chamamos de **clique** — uma estrutura altamente conectada, que frequentemente revela agrupamentos ou comunidades dentro da rede.

### Coeficiente de agrupamento

O **coeficiente de agrupamento** mede o grau de conectividade entre os vizinhos de um nó ou de toda a rede. Ele pode ser calculado de forma:

* **Global**, considerando toda a rede.

* **Local**, para cada nó individualmente.

* **Média**, levando em conta o agrupamento médio de todos os nós.

Esse coeficiente é um importante indicador do nível de conectividade e coesão de uma rede.

### Hubs ou conectores

Os **hubs** são nós altamente conectados, que funcionam como verdadeiros pontos estratégicos dentro da rede. Eles agem como **pontes** ou **atratores**, ligando diferentes partes da rede e facilitando o fluxo de informações ou recursos.

## Exercício prático: Visualizando redes complexas no KNIME

Após compreender os conceitos teóricos, é hora de colocar o conhecimento em prática. A seguir, descrevemos um exercício simples de visualização de redes complexas utilizando o ambiente **KNIME**, uma plataforma de análise e mineração de dados amplamente utilizada.

### Passo 1: Criando o fluxo no KNIME

O primeiro passo consiste em criar um novo fluxo de trabalho no KNIME, que chamaremos de:

```
redes_complexas_seuCPF
```

Substitua *seuCPF* pelo seu número, caso esteja replicando o exercício.

### Passo 2: Carregando o conjunto de dados

O conjunto de dados utilizado representa livros sobre política e pode ser baixado no formato `.csv`. Esse arquivo contém uma matriz de conectividade entre os livros:

* As **linhas** e **colunas** representam os livros.

* Os valores **0** e **1** indicam se há ou não conexão entre os livros (por exemplo, uma referência cruzada).

* O separador de colunas é **ponto e vírgula**.


Dentro do KNIME, utilizamos o nó **CSVReader** para carregar o arquivo:

1. Dê dois cliques no nó **CSVReader**.

2. Selecione o arquivo `.csv` no diretório apropriado.

3. Defina o delimitador como ponto e vírgula.

4. Confirme a presença de cabeçalhos nas linhas e colunas.

5. Execute o nó para pré-carregar os dados.

O resultado será uma tabela de 105 linhas e 105 colunas, representando as relações entre os livros.

### Passo 3: Criando a rede no KNIME

Para visualizar os dados como uma rede, realizamos as seguintes etapas:

1. Adicionamos o nó **NetworkCreator**, que cria uma rede vazia. Nomeamos essa rede como **rede de livros**.

2. Utilizamos o nó **MatrixToNetwork**, que converte a matriz carregada em uma estrutura de rede propriamente dita.

3. Após executar o nó, teremos uma rede contendo:

   * **105 nós** (livros).

   * **441 arestas** (conexões entre os livros, baseadas nas referências cruzadas).

### Passo 4: Visualizando a rede

Por fim, usamos o nó **NetworkViewer** para visualizar a rede:

1. Conectamos a saída do **MatrixToNetwork** ao **NetworkViewer**.

2. Mantemos as configurações padrão do visualizador.

3. Executamos o nó para gerar o gráfico da rede.

O resultado é uma representação gráfica da rede de livros, onde:

* Cada **nó** representa um livro.

* Cada **conexão** representa uma referência cruzada entre os livros.

A partir dessa visualização, é possível realizar análises diversas, como identificar grupos de livros fortemente conectados, possíveis hubs dentro da rede e entender a estrutura geral do sistema.

## Considerações finais

Nesta aula, abordamos os conceitos fundamentais das redes complexas, compreendendo suas características, tipos e principais métricas de análise. Além disso, realizamos um exercício prático de visualização no KNIME, que nos permitirá avançar em análises mais sofisticadas em aulas futuras.

A compreensão e o domínio dessas ferramentas são essenciais para analisar fenômenos complexos em diversas áreas, como redes sociais, sistemas biológicos, economia e ciência política.
