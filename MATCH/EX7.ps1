#Recebe um dicionário com as chaves "categoria" e "preco". Retorna:
	#“Produto de luxo” se categoria for “eletrônico” e preço acima de 1000
	#“Produto comum” se categoria for “eletrônico” e preço até 1000
	#“Produto alimentar” se categoria for “alimento”
	#“Categoria desconhecida” caso contrário

[object]$produto = @{
categoria = ""
preco = 0
}
$produto.categoria = Read-Host "Introduza a categoria do produto (eletrônico/alimento)"
$produto.preco = Read-Host "Introduza o preço do produto"
write-host "Produto $($produto.categoria) com preço de $($produto.preco)€"
if ($produto.categoria -eq "eletrônico" -and $produto.preco -gt 1000) {
    Write-Host "Produto de luxo"
} elseif ($produto.categoria -eq "eletrônico") {
    Write-Host "Produto comum"
} elseif ($produto.categoria -eq "alimento") {
    Write-Host "Produto alimentar"
} else {
    Write-Host "Categoria desconhecida"
}
