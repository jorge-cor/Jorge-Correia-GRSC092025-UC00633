#Uma loja oferece descontos de acordo com o valor da compra:
    #10% para compras até 200,00€.
    #15% para compras entre 200,01€ e 500,00€.
    #20% para compras acima de 500,00€.
    #Desenvolva um Programa que leia o nome do cliente e o valor da compra e mostre o valor do desconto e o valor total a pagar.

[string]$nome_cliente = ""
[float]$valor_compra = 0
$desconto = 0
$valor_total = 0

$nome_cliente = Read-Host "Introduza o nome do cliente"
$valor_compra = Read-Host "Introduza o valor da compra"

if ($valor_compra -le 200) {
    $desconto = $valor_compra * 0.10
} elseif ($valor_compra -le 500) {
    $desconto = $valor_compra * 0.15
} else {
    $desconto = $valor_compra * 0.20
}
$valor_total = $valor_compra - $desconto
Write-Host "Cliente: $nome_cliente"
Write-Host "Valor da compra: $valor_compra€"
Write-Host "Valor do desconto: $desconto€"
Write-Host "Valor total a pagar: $valor_total€" 
