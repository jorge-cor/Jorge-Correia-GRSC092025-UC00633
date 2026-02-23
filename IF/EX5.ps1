# Ler 3 valores inteiros e apresentar os valores dispostos em ordem crescente e decrescente.

[int]$num1 = 0
[int]$num2 = 0
[int]$num3 = 0

$num1 = Read-Host "Introduza o primeiro número"
$num2 = Read-Host "Introduza o segundo número"
$num3 = Read-Host "Introduza o terceiro número"
if ($num1 -gt $num2 -and $num1 -gt $num3) {
    if ($num2 -gt $num3) {
        Write-Host "Ordem crescente: $num3, $num2, $num1"
        Write-Host "Ordem decrescente: $num1, $num2, $num3"
    } else {
        Write-Host "Ordem crescente: $num2, $num3, $num1"
        Write-Host "Ordem decrescente: $num1, $num3, $num2"
    }
} elseif ($num2 -gt $num1 -and $num2 -gt $num3) {
    if ($num1 -gt $num3) {
        Write-Host "Ordem crescente: $num3, $num1, $num2"
        Write-Host "Ordem decrescente: $num2, $num1, $num3"
    } else {
        Write-Host "Ordem crescente: $num1, $num3, $num2"
        Write-Host "Ordem decrescente: $num2, $num3, $num1"
    }
} else {
    if ($num1 -gt $num2) {
        Write-Host "Ordem crescente: $num2, $num1, $num3"
        Write-Host "Ordem decrescente: $num3, $num1, $num2"
    } else {
        Write-Host "Ordem crescente: $num1, $num2, $num3"
        Write-Host "Ordem decrescente: $num3, $num2, $num1" 
    }
}