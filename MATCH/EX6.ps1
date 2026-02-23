#Recebe um dicionário com as chaves "status" e "tempo_resposta". Retorna:
	#“Servidor ativo” se o status for “ok”
	#“Servidor lento” se o status for “ok” e o tempo de resposta for maior que 200 ms
	#“Servidor indisponível” se o status for “erro”
	#“Estado desconhecido” caso contrário

[object]$servidor = @{
status = ""
tempo_resposta = 0
}
$servidor.status = Read-Host "Introduza o status do servidor (ok/erro)"
$servidor.tempo_resposta = Read-Host "Introduza o tempo de resposta do servidor em ms"
if ($servidor.status -eq "ok" -and $servidor.tempo_resposta -gt 200) {
    Write-Host "Servidor lento"
} elseif ($servidor.status -eq "ok") {
    Write-Host "Servidor ativo"
} elseif ($servidor.status -eq "erro") {
    Write-Host "Servidor indisponível"
} else {
    Write-Host "Estado desconhecido"
}