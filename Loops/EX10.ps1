# Elabore um programa que lê um número e escreve quantos divisores ele possui.

[int]$numero = Read-Host "Introduza um número"
[int]$contadorDivisores = 0

for ($i = 1; $i -le $numero; $i++) {
    if ($numero % $i -eq 0) {
        $contadorDivisores++
    }
}

Write-Host "O número $numero possui $contadorDivisores divisores."