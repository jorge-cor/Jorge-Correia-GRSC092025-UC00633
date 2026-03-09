# Crie um algoritmo que mostre os 10 primeiros números primos.
[Object]$simprimo = @()
[Object]$naoprimo = @()
[int]$numero = 0



for ($o = 1; $o -le 10; $o++) {
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
    $simprimo += $numero
}
else {
    Write-Host "O número $numero não é primo."
    $naoprimo += $numero
}
}
Write-Host "Os números primos são:"
Write-Host($simprimo)
write-Host "Os números não primos são:"
write-Host($naoprimo)

