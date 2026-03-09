# Faça um algoritmo que gere a seguinte série: 10, 20, 30, 40, ..... 980, 990, 1000.


for ($i = 10; $i -le 1000; $i += 10) {
    write-Host($i,", ") -NoNewline
}