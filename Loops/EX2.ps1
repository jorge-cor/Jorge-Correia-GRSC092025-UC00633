# Ler 10 números, e determinar se o número par e número impar.

for ($i = 1; $i -le 10; $i++) {
    [int]$numero = Read-Host "Introduza o número $i"
    
    if ($numero % 2 -eq 0) {
        Write-Host "O número $numero é Par"
    }
    else {
        Write-Host "O número $numero é Ímpar"
    }
}