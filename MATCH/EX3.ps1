#Recebe um dicionário com as chaves "tipo" e "valor".Exibe:
	#“Compra de X€” se tipo for “compra”
	#“Venda de X€” se tipo for “venda”
	#“Pedido desconhecido” caso contrário

[object]$transacao = @{
tipo = ""
valor = 0
}
$transacao.tipo = Read-Host "Introduza o tipo de transação (compra/venda)"
$transacao.valor = Read-Host "Introduza o valor da transação"
switch ($transacao.tipo) {
    "compra" { Write-Host "Compra de $($transacao.valor)€" }
    "venda" { Write-Host "Venda de $($transacao.valor)€" }
    default { Write-Host "Pedido desconhecido" }
}
write-host "Transação processada:$($transacao.tipo) de $($transacao.valor)€"