# Escreva um programa que solicite um número ao utilizador até que o valor deste esteja entre os valores 1 e 100.
[int]$numero = 0

do {
    $numero = Read-Host "Introduza um número entre 1 e 100"
    if ($numero -gt 1 -or $numero -le 100){
        Write-Host "!!!! numero fora do intervalo !!!"
    }
} while ($numero -lt 1 -or $numero -gt 100)

Write-Host "Obrigado! O número $numero é válido."