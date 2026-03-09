# Altere o programa anterior para que mostre todas as tabuadas de 1 a 100. (ciclos for).


for ($numero = 1; $numero -le 100; $numero++) {
    Write-Host "`nTabuada do $numero :"
    for ($i = 1; $i -le 10; $i++) {
        $resultado = $numero * $i
        Write-Host "$numero x $i = $resultado"
    }
    Write-Host "-----------------------"
}