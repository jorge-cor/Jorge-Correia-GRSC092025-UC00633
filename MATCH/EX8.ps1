#Recebe uma operação (em texto) e dois números.
#Operações válidas: "soma", "subtrai", "multiplica", "divide".
[string]$operacao = ""
[int]$num1 = 0
[int]$num2 = 0
[int]$resultado = 0
$num1 = Read-Host "Introduza o primeiro número"
$operacao = Read-Host "Introduza a operação (soma, subtrai, multiplica, divide)"
$num2 = Read-Host "Introduza o segundo número"

if ($operacao -eq "soma") {
    $resultado = $num1 + $num2
} elseif ($operacao -eq "subtrai") {
    $resultado = $num1 - $num2
} elseif ($operacao -eq "multiplica") {
    $resultado = $num1 * $num2
} elseif ($operacao -eq "divide") {
    if ($num2 -ne 0) {
        $resultado = [Math]::Floor($num1 / $num2)
    } else {
        Write-Host "Erro: Divisão por zero não é permitida."
        exit
    }
} else {
    Write-Host "Operação inválida."
    exit
}
Write-Host "Resultado: $resultado"