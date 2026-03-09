# Elabore um programa que leia quantos números quer que se efetue a soma, subtrações, divisões, multiplicações e no fim por meio de um acumulador diga quantas operações foram efetuadas. Exemplo introduzindo o número 60 o programa deve apresentar 60 a somar, dividir multiplicar e subtrair por todos os números menores que ele.

[int]$numero = Read-Host "Introduza um número"
[int]$totalOperacoes = 0

for ($i = 1; $i -lt $numero; $i++) {
    $soma = $numero + $i
    $subtracao = $numero - $i
    $multiplicacao = $numero * $i
    $divisao = $numero / $i

    Write-Host "$numero + $i = $soma"
    Write-Host "$numero - $i = $subtracao"
    Write-Host "$numero * $i = $multiplicacao"
    Write-Host "$numero / $i = $divisao"

    $totalOperacoes += 4
}

Write-Host "Foram efetuadas no total $totalOperacoes operações."