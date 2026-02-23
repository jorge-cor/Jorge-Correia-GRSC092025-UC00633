# Recebe uma mensagem e retorna:
	#“Saudação” se for “olá” ou “bom dia”
	#“Pergunta” se terminar com “?”
	#“Despedida” se contiver “tchau” ou “adeus”
	#“Mensagem genérica” caso contrário

[string]$mensagem = "" 
$mensagem = Read-Host "Introduza uma mensagem"

if ($mensagem -match "olá|bom dia") {
    Write-Host "Saudação"
} elseif ($mensagem -match "\?$") {
    Write-Host "Pergunta"
} elseif ($mensagem -match "tchau|adeus") {
    Write-Host "Despedida"
} else {
    Write-Host "Mensagem genérica"
}
