# Elabore um programa que leia uma entrada e diga quantos números perfeitos existem. Exemplo de numero perfeito em que somando todos os divisores ele da o numero inicial.

[int]$limite = Read-Host "Introduza o limite máximo para procurar números perfeitos"
[int]$contadorPerfeitos = 0

Write-Host "Procurando números perfeitos até $limite..."
