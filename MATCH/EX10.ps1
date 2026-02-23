# Cria um programa que receba duas jogadas:
	#Jogador 1
	#Jogador 2
# Usa match para determinar o resultado:
	#Pedra ganha de Tesoura
	#Tesoura ganha de Papel
	#Papel ganha de Pedra
	#Se forem iguais, é Empate
[string]$jogada1 = ""
[string]$jogada2 = ""
[string]$combinacao = ""
$jogada1 = Read-Host "Jogador 1, introduza a sua jogada (Pedra, Papel ou Tesoura)"
$jogada2 = Read-Host "Jogador 2, introduza a sua jogada (Pedra, Papel ou Tesoura)"
$combinacao = "$jogada1-$jogada2".ToLower() # Converte para minúsculas para facilitar a comparação
#switch -regex: parâmetro diz ao PowerShell para usar a lógica do -match
switch -regex ($combinacao) {
    "pedra-tesoura|tesoura-papel|papel-pedra" {
        Write-Host "Jogador 1 ganha!"
    }
    "tesoura-pedra|papel-tesoura|pedra-papel" {
        Write-Host "Jogador 2 ganha!"
    }
    "pedra-pedra|papel-papel|tesoura-tesoura" {
        Write-Host "Empate!"
    }
    default {
        Write-Host "Jogada inválida. Por favor, introduza Pedra, Papel ou Tesoura."
    }
}
