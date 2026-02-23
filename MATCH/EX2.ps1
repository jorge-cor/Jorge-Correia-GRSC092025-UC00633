# Lê uma nota (0–100) e retorna uma classificação:
	#90 ou mais → Excelente
	#70–89 → Bom
	#50–69 → Suficiente
	#Abaixo de 50 → Insuficiente

[int]$nota = 0
[string]$classificacao = "" 

$entrada = Read-Host "Introduza a nota (0-100)"
$nota = $entrada
if ($nota -ge 90) {
    $classificacao = "Excelente"
} elseif ($nota -ge 70) {
    $classificacao = "Bom"
} elseif ($nota -ge 50) {
    $classificacao = "Suficiente"
} else {
    $classificacao = "Insuficiente"
}
Write-Host "A classificação é: $classificacao"