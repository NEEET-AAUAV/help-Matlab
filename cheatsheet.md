---
font-size: 8pt

header-includes:
	- \usepackage{amssymb,amsmath,amsthm,amsfonts}
	- \usepackage{multicol,multirow}
	- \usepackage[utf8]{inputenc}
	- \usepackage{booktabs}
	- \usepackage{geometry}
	- \pagestyle{empty}
	- \geometry{a4paper, total={170mm,257mm}, left=8mm, top=6mm, bottom=6mm, right=8mm}
...

\pagestyle{empty}
\setcounter{secnumdepth}{0}
\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt plus 0.5ex}
\setlength{\columnsep}{1cm}

\footnotesize

\lstdefinestyle{cmdLine}{
	language=Matlab,
	numbers=left,
	stepnumber=1,
	numbersep=8pt,
	tabsize=3,
}

\lstset{basicstyle=\scriptsize,style=cmdLine}


\twocolumn 

# Ajuda

- `help`
```matlab
>> help <function name >
```
Pesquisar pela documentação de uma função sabendo o seu nome


\vspace{0.5cm}

- `lookfor`
```matlab
>> lookfor <nome>
```
Pesquisar pelo nome de uma função sabendo parte do seu nome ou alguma _tag_ que seja usada na sua documentação 

# Matrizes

- $l = \begin{bmatrix} 1 & 3 & ... &  11 & 29 & 235 \end{bmatrix}$
```matlab
>> l = [1 3 ... 11 29 235]
>> l = [1, 3, ..., 11, 29, 235]
```

\vspace{0.5cm}

- $c = \begin{bmatrix} 1 \\ 3 \\ ... \\ 11 \\ 29 \\ 235 \\ \end{bmatrix}$
```matlab
>> c = [1; 3; ...; 11; 29; 235]
>> c = [1 3 ... 11 29 235]'
>> c = [1, 3, ..., 11, 29, 235]'
```

\vspace{0.5cm}

- $M = \begin{bmatrix} 1 & 3 & ... & 11 \\ 29 & 23 & 10 & 23.2 \\ ... & ... & ... & ... \\  1j & 0 & 235 & -2 \\ \end{bmatrix}$
```matlab
>> M = [1 3 ... 11; 29 23 10 23.2 ; ... ... ... ...; 1j 0 235 -2]
>> M = [1, 3, ..., 11; 29, 23, 10, 23.2 ; ..., ..., ..., ...; 1j, 0, 235, -2]
```

\vspace{0.5cm}

- $a = 1$
```matlab
>> a = 1
>> a = [1]
```

## Indexação
- $M[1,2]$
```matlab
>> M(1, 2)
ans=
       23
```

\vspace{0.5cm}

- $M(2, [1\ 3])$
```matlab
ans=
         29   10
```

## Atribuição
\vspace{0.5cm}

- $M[3,2] = 0$
```matlab
>> M(3,2) = 0
M = 
         1    3  ...    11 
        29   23   10  23.2 
       ...    0  ...   ... 
        1j    0  235    -2 
```
\vspace{0.5cm}

- $M(2, [1\ 3]) = [1\ 2]$
```matlab
M = 
         1    3  ...    11 
         1   23    2  23.2 
       ...  ...  ...   ... 
        1j    0  235    -2 
```

## O operador `:`
- `start:step:stop` | `start:stop`
```matlab
>> 1:1:10
ans=
        1 2 3 4 5 6 7 8 9 10
>> 1:10
ans=
        1 2 3 4 5 6 7 8 9 10
>> 10:-1:-3
ans=
        10 9 8 7 6 5 4 3 2 1 0 -1 -2 -3
>> 0:pi/4:2*pi
ans=
      % 0    pi/4   pi/2   3*pi/2    2*pi 
        0  0.7854  1.5708  2.3562  3.1416
```

### Indexação
- $M(2, [1\ 3])$
```matlab
M[2, 1:2:3]$
ans=
        29   10
```

\vspace{0.5cm}
- $M[\ [1\ 2\ 3\ 4], [1\ 2\ 3]]$
```matlab
>> M(:, 1:3)
ans=
         1    3  ...   
        29   23   10   
       ...  ...  ...   
        1j    0  235   
```

\vspace{0.5cm}

- $M[\ [1\ 2\ 3\ 4], [2\ 4]]$
```matlab
>> M(:, 2:2:4)
ans=
         3    11 
        23  23.2 
       ...   ... 
         0    -2 
```

### Atribuição
\vspace{0.5cm}

- $M(3, [1\ 2\ 3]) = [1\ 2\ 3]$
```matlab
M(3, 1:3]) = 1:3$
M = 
         1    3  ...    11 
        29   23    2  23.2 
         1    2    3   ... 
        1j    0  235    -2 
```


# Operações
- $1 + j3.3$
```matlab
>> 1 + 3.3*j
ans = 
	     1.0000 + 3.3000i
>> 1 + j*3.3
ans = 
	     1.0000 + 3.3000i
>> 1 - 3.3j
ans = 
	     1.0000 - 3.3000i
>> 1 - 3.3i
ans = 
	     1.0000 - 3.3000i
```

- $3^3$
```matlab
>> 3^3
ans =
         9
```

# Formatação do _output_ do terminal
```matlab
>> format short
>> pi
ans =
     3.1416
>> format long
ans =
     3.141592653589793
>> format rat
ans =
     355/113
>> format hex
ans = 
     400921fb54442d18
```

# Funções Matemáticas
\begin{center}
\begin{tabular}{rl}
\setlength{\tabcolsep}{20pt}
\renewcommand{\arraystretch}{1.9}

\texttt{cos} & coseno (radianos) \\
\texttt{log} & logaritmo neperiano (base $e$) \\
\texttt{sin} & seno \\
\texttt{log10} & logaritmo base 10 \\ 
\texttt{tan} & tangente \\
\texttt{rem} & resto da divis\~{a}o inteira \\ 
\texttt{acos} & arco-cosseno \\
\texttt{abs} & valor absoluto \\ 
\texttt{asin} & arcoseno \\
\texttt{sign} & sinal \\ 
\texttt{atan} & arco-tangente \\
\texttt{round} & arredonda para o mais pr\'{o}ximo \\ 
\texttt{sqrt} & raiz quadrada \\
\texttt{floor} & arredonda para baixo \\
\texttt{exp} & exponencial \\
\texttt{ceil} & arredonda para cima \\ 
\texttt{max} & m\'{a}ximo \\
\texttt{min} & m\'{\i}nimo \\
\texttt{real} & parte real de um complexo \\
\texttt{abs} & m\'{o}dulo \\
\texttt{imag} & parte imagin\'{a}ria de um complexo \\
\texttt{angle} & argumento de um complexo \\ 
\end{tabular}
\bigskip 
\end{center}
