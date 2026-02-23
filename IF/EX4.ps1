# Desenvolva um Programa que leia o saldo inicial de um cliente de banco e leia também o valor de um cheque. Analise se o cheque pode ser descontado. Se o cheque não puder ser descontado, mostre essa informação, caso contrário, desconte o cheque e informe o saldo atualizado.

[int]$saldo_inicial = 0
[int]$valor_cheque = 0
[int]$saldo_atualizado = 0
[string]$resposta = ""
$saldo_inicial = Read-Host "Introduza o saldo inicial do cliente"
$valor_cheque = Read-Host "Introduza o valor do cheque"

if ($valor_cheque -le $saldo_inicial) {
    $saldo_atualizado = $saldo_inicial - $valor_cheque
    Write-Host "Cheque descontado com sucesso. Saldo atualizado: $saldo_atualizado"
    # Perguntar se há mais cheques para descontar
    $resposta = Read-Host "tem mais algum cheque para descontar? (s/n)"
    while ($resposta -eq "s") {
        # Lógica para descontar outro cheque
            $valor_cheque = Read-Host "Introduza o valor do cheque"
            if ($valor_cheque -le $saldo_atualizado) {
                $saldo_atualizado = $saldo_atualizado - $valor_cheque
                Write-Host "Cheque descontado com sucesso. Saldo atualizado: $saldo_atualizado"
            } 
            else {
                Write-Host "Não é possível descontar o cheque. Saldo insuficiente."
            }
            $resposta = Read-Host "Tem mais algum cheque para descontar? (s/n)"
    }
} 
else {
    Write-Host "Não é possível descontar o cheque. Saldo insuficiente."
}
