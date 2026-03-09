# Elabore um programa que determine os múltiplos de 5 mas não múltiplos de 3 …. De 1 a 1000 deve ser a sequência.

Write-Host "os múltiplos de 5 mas não múltiplos de 3 entre 1 e 1000 são:"

for ($i = 1; $i -le 1000; $i++) {
    if ($i % 5 -eq 0 -and $i % 3 -ne 0) {
        Write-Host ($i, ", ") -NoNewline
    }
}

Write-Host "`n"