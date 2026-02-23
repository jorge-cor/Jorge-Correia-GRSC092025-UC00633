# Crie um programa que leia a nota de 10 alunos (notas de 0 a 20), calcule a média das notas e mostre a média. Além disso, informe quantos alunos ficaram com a nota igual ou acima da média. 

[int]$media = 0
[int]$soma = 0
[object]$notas = @()  # Array para armazenar as notas dos alunos
[int]$quantidade_alunos = 10

for ($i = 1; $i -le $quantidade_alunos; $i++) {
    $nota_valida = $false
    while (-not $nota_valida) {
        [float]$entrada = Read-Host "Introduza a nota do aluno $i"
        
        if ($entrada -ge 0 -and $entrada -le 20) {
            $notas += $entrada
            $soma += $entrada
            $nota_valida = $true
        } else {
            Write-Host "Erro: A nota deve estar entre 0 e 20!" 
        }
    }
}

$media = $soma / $quantidade_alunos

$alunos_acima = 0
# o Foreach percorrer uma coleção de itens (um array).
foreach ($n in $notas) {
    if ($n -ge $media) {
        $alunos_acima++
    }
}

# 5. Mostrar os resultados
Write-Host "`n--- Resultados Finais ---"
Write-Host "Média da turma: $media"
Write-Host "Alunos com nota igual ou superior à média: $alunos_acima"