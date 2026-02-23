# O sistema de avaliação de uma disciplina tem três provas com pesos diferentes. A primeira tem peso 2, a segunda tem peso 3, e a terceira tem peso 5. Crie um programa para calcular a média final de um aluno e mostrar se ele está APROVADO (nota >= 6) ou REPROVADO (nota < 6).

[int]$nota1 = 0
[int]$nota2 = 0
[int]$nota3 = 0
$media_final = 0

$nota1 = Read-Host "Introduza a nota da primeira prova (peso 2)"
$nota2 = Read-Host "Introduza a nota da segunda prova (peso 3)"
$nota3 = Read-Host "Introduza a nota da terceira prova (peso 5)"
$media_final = ($nota1 * 2 + $nota2 * 3 + $nota3 * 5) / 10

if ($media_final -ge 6) {
    Write-Host "Aluno APROVADO com média final de $media_final"
} else {
    Write-Host "Aluno REPROVADO com média final de $media_final"
}
# a media final de 7 6 e 9 é de 7.7 e nao 7.4 como esta no exemplo do enunciado.