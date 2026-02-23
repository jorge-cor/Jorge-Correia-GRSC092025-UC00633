  #  Desenvolva um programa que assuma uma entrada em segundos e a converta para horas, minutos e segundos.

[int]$segundos = 0
[int]$hora_final = 0
[int]$minuto_final = 0
[int]$segundo_final = 0

$entrada = Read-Host "Introduza os segundos que quer converter"
$segundos = $entrada

if ($segundos -ge 3600) {
    $hora_final = [Math]::Floor($segundos / 3600)
    $segundos = $segundos % 3600
}

if ($segundos -ge 60) {
    $minuto_final = [Math]::Floor($segundos / 60)
    $segundos = $segundos % 60
}

$segundo_final = $segundos
Write-Host "$hora_final horas, $minuto_final minutos e $segundo_final segundos"


  
