# Faça um algoritmo que gere a seguinte série: 10, 20, 30, 40, ..... 980, 990, 1000.e outro a fazer 15, 25, 35, 985, 995.(dois ciclos)

for ($i = 10; $i -le 1000; $i += 10) {
    write-Host($i,", ") -NoNewline
}

Write-Host "`n"

for ($i = 15; $i -le 995; $i += 10) {
    Write-Host ($i, ", ") -NoNewline
}

Write-Host "`n"