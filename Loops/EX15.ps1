# Elabore um programa que escreva no ecrã todas as linhas de código ASCII(0 a 255) e o código correspondente. Dispor de 20 em 20 com a condição de continuação ou saída do programa.

for ($i = 0; $i -le 255; $i++) {
    $char = [char]$i
    Write-Host "Código ASCII: $i - Caractere: $char"

    if (($i + 1) % 20 -eq 0) {
        $continuar = Read-Host "`nPressione Enter para ver os próximos 20 ou 'S' para sair"
        if ($continuar -eq 'S' -or $continuar -eq 's') {
            break
        }
    }
}

Write-Host "Fim do programa."