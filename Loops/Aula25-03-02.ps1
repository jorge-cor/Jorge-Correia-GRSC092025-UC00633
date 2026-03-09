# sintax for
for ($i=1; $i -le 5 ; $i++){
    Write-Host ($i)
}

# Sintax foreach    

$arquivo =Get-ChildItem

#Write-Host($arquivo.Name)

foreach ($arquivo in $arquivo){
    Write-Host($arquivo.Name)
}
# sintax While (while corre de 0 a x vezes)
$o=0

while ($o -le 5) {
    Write-Host($o)
    $o++
    
}
Write-Host("")
$o=-2
#interupecao wile
while ($o -le 5) {
    Write-Host($o)
    if($o -eq 3){
        break
    }
    $o++
    
}
#sintax do while

$d=0
do{
    Write-Host($d)
    $d++
}while($d -le 5)

Write-Host("O valor de d e:" + $d)

# sintax until
 $u=0
 do{
    Write-Host($u)
    $u++
 }until($u -eq 5)

 Write-Host("O valor de u e:" + $u)

