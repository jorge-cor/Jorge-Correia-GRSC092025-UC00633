# Crie um algoritmo que leia um número inteiro, e diga se ele é um número primo ou não.
[int]$numero = 0
$numero = Read-Host "Introduza um número inteiro"
$primo = $true

if ($numero -lt 2) {
    $primo = $false
}
else {
    for ($i = 2; $i -lt $numero; $i++) {
        if ($numero % $i -eq 0) {
            $primo = $false
            break
        }
    }
}

if ($primo) {
    Write-Host "O número $numero é primo."
}
else {
    Write-Host "O número $numero não é primo."
}