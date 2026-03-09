# Elabore um programa que constitua a média de 30 números pares que sejam introduzidos. Validando a entrada de números inteiros entre 1 e 50.

[int]$soma = 0
[int]$contadorPares = 0
[int]$par =0
[int]$total = Read-Host "quantos numer par para fazer a media"
while ($contadorPares -lt $total) {
    $par = Read-Host "Introduza um número inteiro par entre 1 e 50 (Pares introduzidos: $contadorPares/$total)"
    
    # Validação básica de entrada numérica manual
    if ($par -match '^[0-9]+$') {
        [int]$numero = $par

        if ($numero -ge 1 -and $numero -le 50) {
            if ($numero % 2 -eq 0) {
                $soma += $numero
                $contadorPares++
            } else {
                Write-Host "O número $numero não é par. Tente novamente." -ForegroundColor Yellow
            }
        } else {
            Write-Host "O número deve estar entre 1 e 50." -ForegroundColor Red
        }
    } else {
        Write-Host "Entrada inválida. Por favor, introduza um número inteiro." -ForegroundColor Red
    }
}

$media = [Math]::Floor($soma / $contadorPares)
Write-Host "`nA média dos $total números pares introduzidos é: $media" -ForegroundColor Cyan