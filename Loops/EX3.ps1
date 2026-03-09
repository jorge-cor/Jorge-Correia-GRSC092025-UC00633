# Ler a nota de 10 alunos, calcular a media e mostrar essa média.
$somaNotas = 0
[int]$nota = 0

for ($i = 1; $i -le 10; $i++) {
    $nota =[int](Read-Host "Introduza a nota do aluno $i")
    if ($nota -ge 0 -and $nota -le 20 ){
        Write-Host("Adicionada")
        $somaNotas += $nota
    }
    else {
        Write-Host("nota invalida as notas tem que ser inferiores a 20 e superiores a 0")
        $i--
    }
}


$media = $somaNotas / 10

Write-Host "A média das notas dos 10 alunos é: $media"

