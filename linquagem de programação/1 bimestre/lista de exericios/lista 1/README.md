# Lista 1

#### Atenção: Entregar um arquivo PDF contendo o código, um print da entrada e um  print da saída para cada um dos cinco exercícios.

### 1-) Leia dois valores inteiros, no caso para variáveis A e B. A seguir, calcule a soma entre elas e atribua à variável SOMA. A seguir escrever o valor desta variável.

### Entrada
O arquivo de entrada contém 2 valores inteiros.
``` java
    5 5
```
### Saída

Imprima a mensagem "SOMA" com todas as letras maiúsculas, com um espaço em branco antes e depois da igualdade seguido pelo valor correspondente à soma de A e B.
``` java
    SOMA 10
```
### 2-) Escreva um programa que leia três valores com ponto flutuante de dupla precisão: 
A, B e C. Em seguida, calcule e mostre:
- a) a área do triângulo retângulo que tem A por base e C por altura.
- b) a área do círculo de raio C. (pi = 3.14159)
- c) a área do trapézio que tem A e B por bases e C por altura.
- d) a área do quadrado que tem lado B.
- e) a área do retângulo que tem lados A e B.
```js
    const FormulasDeAreas = {
        triangulo: (b * h) / 2,
        circulo: pi * r^2,
        trapezio: ((B + b) * h) / 2,
        quadrado: b^2,
        retangulo: B * b,
    }
```
### Entrada 
```java
    5 5 5
```
### Saída
```java
    5
    78.5
    25
    25
    25
```
### 3-) Faça um programa que leia o nome de um vendedor, o seu salário fixo e o total de vendas efetuadas por ele no mês (em dinheiro). Sabendo que este vendedor ganha 15% de comissão sobre suas vendas efetuadas, informar o total a receber no final do mês, com duas casas decimais.
### Entrada
- O arquivo de entrada contém um texto (primeiro nome do vendedor) e 2 valores de dupla precisão (double) com duas casas decimais, representando o salário fixo do vendedor e montante total das vendas efetuadas por este vendedor, respectivamente.
```Java
    Jonas 1500.00 15000.00
```
### Saída
- Imprima o total que o funcionário deverá receber.
```Java
    3750
```
### 4-) Leia 3 valores inteiros e ordene-os em ordem crescente. No final, mostre os valores em ordem crescente, uma linha em branco e em seguida, os valores na sequência como foram lidos.

### Entrada
- A entrada contém três números inteiros.
```java
    9 8 7
```
### Saída
- Imprima a saída conforme foi especificado.
```java
    7 8 9
    9 8 7
```
### 5-) Leia 2 valores inteiros X e Y. A seguir, calcule e mostre a soma dos números ímpares  entre eles.

### Entrada
O arquivo de entrada contém dois valores inteiros.
```java
    1 10
```
### Saída
- O programa deve imprimir um valor inteiro. Este valor é a soma dos valores ímpares que estão entre os valores fornecidos na entrada que deverá caber em um inteiro
```java
    25
```