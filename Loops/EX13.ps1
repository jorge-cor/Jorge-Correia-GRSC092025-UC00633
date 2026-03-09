# Elabore um programa que leia um número e mostre a tabuada. (multiplicar de 1 a 10)


[int]$numero = Read-Host "Introduza um número para ver a sua tabuada"

Write-Host "`nTabuada do $numero :"

for ($i = 1; $i -le 10; $i++) {
    $resultado = $numero * $i
    Write-Host "$numero x $i = $resultado"
}