#Elabore um ciclo for para produzir o seguinte output.
#	1
#	22
#	333
#	4444
#	55555

[int]$numero = Read-Host "Introduza um número"


for ($i = 1; $i -le $numero; $i++) {
    Write-Host ([string]$i * $i)
}