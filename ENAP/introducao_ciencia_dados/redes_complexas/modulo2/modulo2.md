# Módulo 2 - Laços Fortes e Fracos

As redes complexas são um dos principais objetos de estudo dentro da Ciência de Dados e da Sociologia Computacional. Neste artigo, damos continuidade à nossa série de conteúdos sobre análise de redes, explorando conceitos fundamentais que revelam como as conexões entre os elementos de uma rede influenciam sua estrutura, evolução e comportamento coletivo.

Nesta aula, conduzida pelo professor Marcelo Pitta, vamos abordar temas como **laços fortes e fracos**, **fechamento triádico**, **coeficiente de agrupamento**, **pontes locais**, **fechamento triádico forte** e **detecção de comunidades**. Esses conceitos, além de enriquecerem nossa compreensão teórica, possuem aplicações práticas em redes sociais, redes de colaboração, análise de influência e propagação de informações.

## Laços Fortes e Laços Fracos: A Teoria de Granovetter

O conceito de **laços fortes e laços fracos** foi introduzido por Mark Granovetter, em 1973, em um dos artigos mais influentes na Sociologia e na Teoria de Redes: *"The Strength of Weak Ties"*. Segundo Granovetter, os agentes de uma rede — sejam pessoas, organizações ou outros elementos — podem estabelecer conexões de intensidades distintas.

* **Laços fortes**: Representam conexões próximas, como amizades íntimas ou relações familiares. Esses laços tendem a formar grupos coesos, ou seja, subgrupos dentro da rede onde todos estão fortemente conectados entre si.

* **Laços fracos**: Representam conexões mais distantes ou superficiais, como conhecidos ou contatos profissionais. Embora aparentemente menos relevantes, esses laços desempenham um papel crucial: são eles que conectam diferentes grupos ou comunidades dentro da rede, funcionando como pontes entre estruturas isoladas.

Essa distinção tem implicações diretas em ambientes como **redes sociais virtuais**. Por exemplo, amizades no Facebook ou seguidores no Twitter frequentemente representam laços fracos, que, ainda assim, ampliam significativamente nosso acesso à informação e oportunidades.

## A Propriedade do Fechamento Triádico

O **fechamento triádico** é uma das propriedades centrais no estudo das redes complexas. Ela se baseia em um princípio intuitivo das interações humanas: se duas pessoas têm um amigo em comum, existe uma probabilidade aumentada de que elas também se tornem amigas no futuro.

### Exemplo Visual

Imagine três pessoas em uma rede social:

* **A** é amiga de **B**;

* **A** também é amiga de **C**.

Existe, portanto, uma chance maior de que **B** e **C** desenvolvam uma amizade, fechando o triângulo de conexões. Esse fechamento triádico é um mecanismo importante na formação e evolução das redes sociais, pois favorece o crescimento de comunidades coesas.

## Coeficiente de Agrupamento (Clustering Coefficient)

Para quantificar o nível de coesão ou agrupamento dentro de uma rede, utilizamos o **coeficiente de agrupamento**, também conhecido como **clustering coefficient**.

### Definição

O coeficiente de agrupamento de um nó **X** é dado pela razão entre o número de conexões efetivamente existentes entre os vizinhos de **X** e o número total de conexões possíveis entre esses vizinhos.

Matematicamente:

```
Coeficiente de Agrupamento = (Nº de conexões existentes entre vizinhos) / (Nº de conexões possíveis entre vizinhos)
```

### Exemplo Prático

Suponha que o nó **A** esteja conectado aos nós **B**, **C**, **D** e **E**. As conexões possíveis entre esses quatro vizinhos são seis (uma para cada par possível). Se apenas três dessas conexões existem de fato, o coeficiente de agrupamento de **A** será 0,5.

Esse coeficiente pode ser calculado individualmente para cada nó ou em termos globais, através do **coeficiente de agrupamento médio**, que avalia o nível de clusterização de toda a rede.

## Pontes e Pontes Locais: Conectando o Inconectável

Outro conceito-chave para compreender a dinâmica de redes complexas são as **pontes**, ou **bridges**.

### Pontes

Uma conexão entre dois nós **A** e **B** é considerada uma ponte se, ao ser removida, os nós pertencem a componentes diferentes, ou seja, ficam desconectados. As pontes são estruturas críticas para a conectividade global da rede, funcionando como canais de ligação entre grupos que, de outra forma, estariam isolados.

### Pontes Locais

As **pontes locais** são um caso particular de ponte, caracterizadas pelo fato de que os vizinhos de **A** não possuem conexões em comum com os vizinhos de **B**. A remoção dessa ponte local não necessariamente fragmenta a rede, mas aumenta significativamente a distância entre **A** e **B**, dificultando a comunicação entre seus respectivos clusters.

## Fechamento Triádico Forte e a Importância dos Laços

Avançando na análise estrutural das redes, o **fechamento triádico forte** aprofunda a relação entre laços fortes e a formação de conexões adicionais.

### Definição

Um nó **X** em uma rede satisfaz a propriedade do fechamento triádico forte se:

* **X** possui laços fortes com **Y** e **Z**;

* Existe uma conexão entre **Y** e **Z**.

Caso esse triângulo não esteja completo, existe uma alta probabilidade de que, no futuro, **Y** e **Z** se conectem, reforçando ainda mais a coesão do grupo.

### Implicação nas Pontes Locais

As pontes locais, por sua natureza, são sempre laços fracos. Isso ocorre porque, se uma conexão entre **A** e **B** for uma ponte local, e **A** já tiver dois laços fortes com outros nós, o fechamento triádico implicaria que os vizinhos de **A** e **B** estariam conectados, o que contradiz a definição de ponte local.

Em resumo, **pontes locais só podem ser laços fracos**, o que demonstra a complexa interação entre os diferentes tipos de conexões dentro de uma rede.

## Detecção de Comunidades: Revelando a Estrutura Oculta

Por fim, um dos temas mais fascinantes da análise de redes complexas é a **detecção de comunidades**. Redes reais — como redes sociais, redes de colaboração científica ou redes de interações biológicas — frequentemente apresentam subdivisões naturais em **subgrupos**, também chamados de **comunidades**.

### Por que detectar comunidades?

A identificação dessas comunidades permite:

* Compreender a estrutura interna da rede;

* Detectar grupos de interesse ou influência;

* Melhorar algoritmos de recomendação;

* Analisar a propagação de informações ou doenças.

### Métodos de Particionamento de Redes

Para separar uma rede em comunidades, utilizamos **métodos de particionamento**, que podem ser:

* **Hierárquicos**, dividindo a rede em subgrupos de forma sucessiva;

* **Baseados em pontes locais**, explorando os laços fracos para isolar grupos distintos.

Um dos métodos mais conhecidos é o **algoritmo de Girvan-Newman**, que remove iterativamente as pontes locais com maior importância, fragmentando a rede em comunidades cada vez mais evidentes.

## O Método de Girvan-Newman e a Detecção de Comunidades

No contexto da detecção de comunidades, o **método de Girvan-Newman** se destaca por sua eficácia em redes complexas. Ele consiste em remover, de forma iterativa, as conexões mais relevantes para a conectividade global da rede, de modo a revelar grupos ou comunidades naturalmente formados.

### Arestas com Alto Betweenness: Pontos Estratégicos de Corte

No exemplo visual apresentado, observa-se que a aresta entre os nós 7 e 8 possui um **betweenness** de 49. Isso significa que 49 caminhos distintos passam por essa conexão, evidenciando sua importância estratégica para a integridade da rede. Ao remover essa aresta, a rede imediatamente se divide em duas comunidades visíveis.

O método pode ser repetido continuamente, removendo sucessivamente as arestas de maior betweenness, até atingir o nível de segmentação desejado. Definir o ponto ideal para parar o processo é o grande desafio da abordagem, pois o excesso de cortes fragmenta a rede a ponto de isolar todos os nós, enquanto poucos cortes podem não evidenciar adequadamente as comunidades.

## Betweenness de Nós e Centralidade

Além de analisar as arestas, o método pode considerar o **betweenness dos nós**, ou seja, a quantidade de caminhos que atravessam um determinado nó. Essa métrica revela quais nós exercem papel central na comunicação entre diferentes partes da rede.

Outra métrica fundamental é o **closeness centrality**, que mede a distância média de um nó em relação a todos os outros nós da rede. Quanto menor essa distância, mais central e influente é o nó no fluxo de informações.

## Exercício Prático: Detecção de Comunidades no KNIME

Para consolidar os conceitos teóricos, o professor conduziu um exercício prático no ambiente **KNIME**, utilizando um fluxo de análise de redes complexas.

### Dados Utilizados

O conjunto de dados representa livros sobre política que se autocitam. Cada nó é um livro, e as conexões indicam referências entre eles.

### Etapas do Exercício

1. **Cálculo do Closeness**

   * Utilizou-se o nó **Network Analyzer** para calcular o grau, o coeficiente de agrupamento e o closeness de cada nó.

   * Os valores de closeness variaram de 0,23 (menos central) a 0,40 (mais central).

2. **Filtragem dos Nós com Maior Closeness**

   * Aplicou-se o nó **Row Filter** para selecionar os nós com closeness superior a 0,38.

   * Foram identificados 8 nós altamente centrais na rede.

3. **Eliminação dos Nós Selecionados**

   * Com o **ObjectIdFilter**, esses nós foram removidos da rede.

   * A rede passou de 105 nós e 441 arestas para 97 nós e as mesmas 441 arestas.

4. **Filtragem das Arestas Órfãs**

   * As arestas conectadas aos nós eliminados ficaram solitárias.

   * Utilizou-se o **Edge Degree Filter** para manter apenas as arestas com grau 2 (ou seja, que ainda conectam dois nós).

   * A rede final ficou com 97 nós e 357 arestas.

5. **Visualização e Comparação**

   * Através do **Network Viewer**, visualizou-se a rede antes e depois da eliminação dos nós centrais.

   * Na rede original, a presença dos nós centrais dificultava a visualização clara das comunidades.

   * Após a remoção, a formação de dois grandes grupos ou **clusters** ficou evidente, facilitando a detecção de comunidades.

## Conclusão

Nesta aula, exploramos conceitos fundamentais para a compreensão da estrutura e do comportamento de redes complexas:

✅ Laços fortes e fracos;

✅ Propriedade do fechamento triádico;

✅ Coeficiente de agrupamento;

✅ Pontes e pontes locais;

✅ Detecção de comunidades através de métodos como o de Girvan-Newman;

✅ Métricas de centralidade como betweenness e closeness.

Finalizamos com um exercício prático no KNIME, onde aplicamos essas técnicas para detectar comunidades em uma rede real de livros que se autocitam. O procedimento demonstrou, na prática, como a eliminação de nós centrais e o tratamento adequado das arestas permitem evidenciar subgrupos e entender melhor a estrutura subjacente de uma rede complexa.

Esse conhecimento é aplicável em diversos contextos, como redes sociais, redes de colaboração científica, análise de influência, marketing, epidemiologia e muito mais.

