#Analisa um valor e retorna o seu tipo:
	#Número inteiro
	#Número decimal
	#String numérica
	#String textual
	#Lista
	#Tipo desconhecido
[int]$valor_inteiro = 0
[double]$valor_decimal = 0.0
[string]$valor_string = "20"
[string]$tipo = "teste"
[object]$valor = @(1,2,3)

write-host "a vareavel valor_inteiro é do tipo: $($valor_inteiro.GetType().Name)"
write-host "a vareavel valor_decimal é do tipo: $($valor_decimal.GetType().Name)"
write-host "a vareavel valor_string é do tipo: $($valor_string.GetType().Name)"
write-host "a vareavel tipo é do tipo: $($tipo.GetType().Name)"
write-host "a vareavel valor é do tipo: $($valor.GetType().Name)"
