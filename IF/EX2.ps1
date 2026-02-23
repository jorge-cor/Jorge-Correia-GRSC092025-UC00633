# Desenvolva um programa que analise 3 valores inteiros e informe qual o maior e qual o menor deles.

[int]$num1 = 0
[int]$num2 = 0
[int]$num3 = 0

$num1 = Read-Host "Introduza o primeiro número"
$num2 = Read-Host "Introduza o segundo número"
$num3 = Read-Host "Introduza o terceiro número"
$maior = $num1
$menor = $num1
if ($num2 -gt $maior) {
    $maior = $num2
}
if ($num3 -gt $maior) {
    $maior = $num3
}
if ($num2 -lt $menor) {
    $menor = $num2
}
if ($num3 -lt $menor) {
    $menor = $num3
} 
Write-Host "O maior número é: $maior"
Write-Host "O menor número é: $menor"