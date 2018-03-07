---
titlepage: true
title: "help MATLAB"
author: "NEEET"

date: "5 de Março de 2018, versão 2.0"
version: 0.1

fontsize: 10pt

toc: true

header-includes:
	- \usepackage{graphicx}
...

# Qual o objetivo deste documento?
Este documento pode ser visto como um "Guia de Sobrevivência" para o workshop `>> help MatLab`. Nele irão encontrar uma breve descrição do workshop, quais os seus objetivos, informações sobre como chegar à sala e como se devem preparar para o mesmo.


# O que posso esperar deste Workshop?
O workshop `>> help Matlab` pretende demonstrar a vantagem do uso do MATLAB como ferramenta de simulação, processamento de sinal e resolução de cálculos avançados. Este workshop pretende colmatar a falta formativa e proficiência em MATLAB dos estudantes através de exercícios práticos direcionados, cujo método de resolução possa ser diretamente adaptado para diferentes necessidades de utilização do MATLAB. 

O workshop tem como propósito máximo dotar os estudantes de algumas competências para usarem o MATLAB com eficiência, mas também contribuir, em conjunto com as unidades curriculares e com trabalho autónomo, para os alunos melhorarem as suas habilidades na utilização e resolução de problemas com o MATLAB.


## Objetivos 
- Sensibilizar para a importância do MATLAB na Investigação e na Indústria;
- Ensinar os participantes a explorar as potencialidades do MATLAB;
- Ensinar, através do exemplo, a explorar as principais _toolboxes_ do Matlab;
- Resolução de exercícios de índole prática, simples e cativante;
- Ensinar os participantes a utilizarem o MATLAB de forma mais eficiente.

# Como me devo preparar para o Workshop?
Este workshop pretende ser um complemento à formação das várias unidades curriculares que utilizam Matlab, ensinando-te a trabalhar de forma mais eficiente.

Este workshop **não é um workshop de iniciação ao Matlab**, ou seja, **partimos do princípio que já tenhas trabalhado com o Matlab** anteriormente.
	
Isto supõe que os participantes estejam familiarizados com:

1.	O que é o Matlab e para que serve? 
2. Como usar a ajuda do Matlab
3.	Notação e sintaxe do Matlab, nomeadamente:
	- Criação de matrizes e vetores;
	- Indexação de matrizes e vetores;
	- O operador `:`
	- Declaração de variáveis;
	- A representação de número no Matlab;
	- As funções matemáticas;
	- Representação de polinómios.
4. Como gerar gráficos


Os tópicos do Workshop serão parcialmente inspirados no livro [***Matlab num instante***](https://www.google.pt/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=0ahUKEwjds4qgmczZAhVIShQKHXTUCBUQFggzMAA&url=http%3A%2F%2Fsweet.ua.pt%2Fjnvieira%2Fmydocs%2Fmatlabnuminstante.pdf&usg=AOvVaw1dZHaZgg1Y1qisz94sxHEj), do Prof. José Neto Vieira.

Para os objetivos deste Workshop, o livro poderá ser considerado demasiado extenso como preparação. Assim, o professor redigiu uma versão compacta, que vos será enviada por email, juntamente com o guião de preparação.

Sugerimos que a consultem, **com o Matlab aberto**, como forma de se prepararem para puder aproveitar ao máximo o Workshop.

# Que tópicos serão abordados no Workshop?
O workshop irá iniciar-se com uma breve introdução ao MATLAB.

O _roadmap_ previsto para o workshop é:

- Vetores, Matrizes e Sinais
	- Conceito geométrico de vetor
	- Sinais discretos
	- Amostragem de sinais contínuos
	- Matrizes como repositório de informação
	- Polinómios
	- Sistemas de equações
- Gráficos com o Matlab
	- Alteração do aspeto gráfico
	- Animações
- A Matriz como operador
	- A matriz como operador linear
	- Séries geométricas

# Exercícios

## Demonstração do MATLAB e Benchmark

Execute na linha de comando os comandos "demo" e "bench".

## Manipulação de Variáveis
1. Crie as variáveis `a= 2`, `v1= 1` e `v2= 20`.
2. Execute o comando `whos`.
3. Guarde as variáveis `v1` e `v2` com o comando `save dados.mat v1 v2`
4. Guarde as variáveis num ficheiro ASCII com o comando `save dados.mat v1 v2 -ascii`
5. Apague as variáveis com o comando `clear` e veja as diferenças entre cada um dos seguintes comando:
   - `load dados.mat`
   - `load dados.txt`

## Relatórios no Matlab e Markup
Publicar o script Matlab `RelatoriosMatlab.m`

## Polinómios
Calcule os zeros do seguinte polinómio
$p(x) = x^{3} + {4x}^{2} - 3x + 1$. Calcule o valor do polinómio nos
seguintes pontos 0, 1 e 10.

## Sequência de números
Gere uma sequência de números pares com início em 4 e a terminar no
número 100.

## Matrizes
Crie uma matriz 3 × 3 em que todos os elementos são iguais a 3.

## Construção de vetores usando indexação
Construa um vetor com 128 elementos com a seguinte sequencia: \[0 1 0 −1
0 1 ··· 0 −1\] usando indexação.

## Vetores com distribuição aleatória
1. Gere um vetor x com 1000 números aleatórios com distribuição uniforme no
intervalo \[0...2\]. 
2. Conte o número de elemento maiores que 0.5.

## Sistemas de Equações
1. Resolver o sistema de equações Ax=b, em que A = \[2 1 1;4 -6 0;-2 7 2\]
e b = \[5 -2 9\]';
2. Verificar que a solução encontrada é correta.

## Animações de gráficos
Desenhe na mesma janela o gráfico da função $\frac{sin(\theta)}{\theta}$ e da função $sin(\theta)$,
com $\theta$ a variar de $-2\pi$ a $2\pi$ e passos de $\frac{\pi}{10}$. As linhas de cada função
devem ter cores e marcadores diferentes. Acrescente também as legendas
necessárias a uma boa compreensão do gráfico.

## Manipulação de gráficos
1. Crie uma matriz com os vértices de um quadrado em que o vértice inferior
esquerdo tem coordenadas (1,1) e considere que o quadrado tem de lado 2.
2. Rode o quadrado de 45º e faça o plot do resultado.
3. Amplie de seguida o quadrado por um fator de 2.

## Matrizes aleatórias
1. Gere uma matriz aleatória A com 4x4 elementos. 
2. Calcule os seus valores próprios usando `l=eig(A)` e verifique que pelo menos um deles tem valor
absoluto maior que 1.
3. Faça as seguintes operações:
	1. Calcule `A\^10000`.
	2. Obtenha a matriz B dividindo A por `2\*max(abs(eig(A)))`.
    Calcule `B\^10000`.
	3. Obtenha a matriz B dividindo A por `max(abs(eig(A)))`.
    Calcule `B\^10000`.

## Diferenças entre os métodos de criação de vetores
Abra o script Matlab `DemoMemoria.m` e tente perceber a diferença das
várias técnicas de criação do vetor "a". Corra o script para ver os
diferentes tempos de execução. Tente encontrar uma explicação.

## Produto Interno
Abra o script Matlab `DemoVectProd.m` e analise as duas formas de
realizar o produto entre as matrizes A e B. Corra o script para ver os
diferentes tempos de execução. Tente encontrar uma explicação.


# Outras informações úteis 
## Professor responsável
- José Neto Vieira, _jnvieira@ua.pt_

## Espaço
- DETI - Departamento de Eletrónica, Telecomunicações e Informática
- Sala 4.1.23, "MakerLab"

### Como chegar?
\includegraphics[width=0.5\textwidth]{Imagens/deti.png}
\includegraphics[width=0.5\textwidth]{Imagens/sala.png}

## Horário
O workshop terá início ás **15:00**, no dia 7 de Março. Aproximadamente a meio, terá uma breve pausa  de 15 minutos para um _coffe-break_.

A duração prevista do workshop são 2:30 a 3 horas, incluindo o _coffe-break_.

## Contacto
Caso possuam alguma dúvida ou questão relacionada com o Workshop, devem enviar um email para o NEEET,
_neeet@aauav.pt_ com o assunto [>> help MATLAB]

\newpage

# Cheatsheet
