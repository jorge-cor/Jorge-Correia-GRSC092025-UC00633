 # Cria um programa que receba o nome de um dia da semana e diga se é dia útil ou fim de semana.
$dia_semana = @("segunda-feira", "terça-feira", "quarta-feira", "quinta-feira", "sexta-feira")
$fim_semana = @("sábado", "domingo")
[string]$dia = ""
$dia = Read-Host "Introduza o nome de um dia da semana"
foreach ($d in $dia_semana) {
    if ($dia -eq $d) {
        Write-Host "$dia é um dia útil."
        exit
    }
}
foreach ($d in $fim_semana) {
    if ($dia -eq $d) {
        Write-Host "$dia é um fim de semana."
        exit
    }
}
Write-Host "Entrada inválida. Por favor, introduza um dia da semana válido."