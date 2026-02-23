# Recebe um dicionário com as chaves "metodo" e "conteudo". Retorna:
	#“Requisição GET recebida” se o método for “GET”
	#“Requisição POST com dados válidos” se o método for “POST” e o conteúdo não estiver vazio
	#“Requisição POST sem dados” se o método for “POST” e o conteúdo estiver vazio
	#“Método não suportado” caso contrário
[Object] $requisicao = @{
metodo = ""
conteudo = ""
}
$requisicao.metodo = Read-Host "Introduza o método (GET ou POST)"
$requisicao.conteudo = Read-Host "Introduza o conteúdo"
if ($requisicao.metodo -eq "GET") {
    Write-Host "Requisição GET recebida"
} elseif ($requisicao.metodo -eq "POST") {
    if ($requisicao.conteudo -ne "") {
        Write-Host "Requisição POST com dados válidos"
    } else {
        Write-Host "Requisição POST sem dados"
    }
} else {
    Write-Host "Método não suportado"
}
