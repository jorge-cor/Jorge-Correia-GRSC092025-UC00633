# Leia um número inteiro de 1 a 12 e mostre o nome do mês correspondente. Caso o número não seja válido, mostre uma mensagem de erro.

[int]$numero_mes = 0
$numero_mes = Read-Host "Introduza um número de 1 a 12 para obter o nome do mês correspondente"
switch ($numero_mes) {
    1 { Write-Host "Janeiro" }
    2 { Write-Host "Fevereiro" }
    3 { Write-Host "Março" }
    4 { Write-Host "Abril" }
    5 { Write-Host "Maio" }
    6 { Write-Host "Junho" }
    7 { Write-Host "Julho" }
    8 { Write-Host "Agosto" }
    9 { Write-Host "Setembro" }
    10 { Write-Host "Outubro" }
    11 { Write-Host "Novembro" }
    12 { Write-Host "Dezembro" }
    default { Write-Host "Número inválido. Por favor, introduza um número entre 1 e 12." } 
}
