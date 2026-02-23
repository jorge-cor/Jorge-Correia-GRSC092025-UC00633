# Leia 10 números e determine quantos são pares e quantos são ímpares.
[int]$numero = 0
[int]$contador_par = 0
[int]$contador_impar = 0
[int]$contador = 0
while ($contador -lt 10) {
    $numero = Read-Host "Introduza o número $([int]($contador + 1))"
    if ($numero % 2 -eq 0) {
        $contador_par++
    } else {
        $contador_impar++
    }
    $contador++
}

Write-Host "Quantidade de números pares: $contador_par"
Write-Host "Quantidade de números ímpares: $contador_impar" 

