# Crie um algoritmo que mostre os 30 primeiros números ímpares e pares.
$i=1
[Object]$par=@()
[Object]$impar=@()

while ($par.Count -lt 30 -or $impar.Count -lt 30){
    if ($i % 2 -eq 0){
        $par += $i
    }
    else {
        $impar += $i
    }
    $i++

}
write-Host("Numeros pares:")
write-Host($par)
write-Host("Numeros impares:")
write-Host($impar)
