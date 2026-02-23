# Crie 2 variáveis (num1 e num2) e leia o valor para cada uma delas. Mostre os valores de forma crescente e decrescente.

[int]$num1 = 0
[int]$num2 = 0

$num1 = Read-Host "Introduza o primeiro número"
$num2 = Read-Host "Introduza o segundo número"

if ($num1 -gt $num2) {
    Write-Host "Ordem crescente: $num2, $num1"
    Write-Host "Ordem decrescente: $num1, $num2"
} else {
    Write-Host "Ordem crescente: $num1, $num2"
    Write-Host "Ordem decrescente: $num2, $num1"
}