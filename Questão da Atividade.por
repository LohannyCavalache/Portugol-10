programa
{
	inteiro indiceHospede = 0
	inteiro escolhaIndice = 0
	//variável indiceHospede cirada para controlar a quantidade de hóspedes cadastrados, e escolhaIndice criada para ler o índice escolhido pelo usuário

	inteiro opcao
	//variável que irá armazenar o valor escolhido pelo usuário.
	
	inteiro cpf[10], diasHospedados[10], cont = 0, totalCadastrados = 0
	real despesas
	cadeia hospedes[10]
	//as seis variáveis acima são da funcao cadastrarHospedes

	real area[10], totalArea[10]
	real valores[3] = {20.00, 50.00, 35.00}
	logico buscaIndice
	caracter areaEscolhida
	//variáveis que serão inicializada para identificar a área de lazer escolhida pelo hóspede
	
	funcao inicio()
	{
		menu()
	}
	
	funcao menu(){
		faca{
			escreva("Escolha uma das opções a seguir:\n1- Cadastrar Hóspedes;\n2- Exibir Hóspedes Cadastrados;\n3- Reservar Área de Lazer;\n4- Calcular Total a Pagar;\n0- Sair.\n")
			leia(opcao)
			escolha(opcao){
				caso 1:
				cadastrarHospedes()
				pare
				caso 2:
				exibirHospedes()
				pare
				caso 3:
				reservar()
				pare
				caso 4:
				exibirHospPCalculos()
				calcular()
				escreva("O valor total gasto pelo hóspede do índice ", escolhaIndice, " é: ", calcular(), "\n")
				pare
				}
			}enquanto(opcao != 0)
			se(opcao == 0){
				escreva("Volte sempre!")
				}
	//procedimento usado para mostrar o menu
		}

	funcao cadastrarHospedes(){
		escreva("Digite o nome do hóspede:\n")
		leia(hospedes[indiceHospede])
		escreva("Digite o CPF do hóspede:\n")
		leia(cpf[indiceHospede])
		escreva("Digite quantos dias serão hospedados:\n")
		leia(diasHospedados[indiceHospede])
		despesas = diasHospedados[indiceHospede] * 100.0
		cont++
		indiceHospede++
		totalCadastrados++
		se(cont > 10){
			escreva("Máximo de cadastros atingidos.")
			}
		cont = 0
	//procedimento usado para armazenar todos os dados precisos para cadastro dos hóspedes
		}

	funcao exibirHospedes(){
		para(indiceHospede = 0; indiceHospede < totalCadastrados; indiceHospede++){
			escreva("Nome do hóspede: ", hospedes[indiceHospede], ", CPF do hóspede: ", cpf[indiceHospede], ", dias hospedados: ", diasHospedados[indiceHospede], ", número do índice: ", indiceHospede, "\n")
			}
		}
	//procedimento criado para exebir todos os hóspedes e dados que foram cadastrados

	funcao reservar(){
		exibirHospedes()
		escreva("Digite o índice do hóspede:\n")
		leia(escolhaIndice)
		buscaIndice = falso
		para(indiceHospede = 0; indiceHospede < 10; indiceHospede++){
			se(escolhaIndice == indiceHospede){
				escreva("Escolha uma das áreas de lazer a seguir:\n")
				escreva(" ________________________________________\n")
				escreva("|           Àrea          |     Custo    |\n")
				escreva(" ----------------------------------------\n")
				escreva("|   (A) Academia          |     R$20.00  |\n")
				escreva(" ----------------------------------------\n")
				escreva("|   (S) Salão de Festas   |     R$50.00  |\n")
				escreva(" ----------------------------------------\n")
				escreva("|   (R) Restaurante       |     R$35.00  |\n")
				escreva(" ----------------------------------------\n")
				leia(areaEscolhida)
				buscaIndice = verdadeiro
				se(areaEscolhida == 'A'){
					totalArea[escolhaIndice] = valores[0]
					}senao se(areaEscolhida == 'S'){
						totalArea[escolhaIndice] = valores[1]
						}senao se(areaEscolhida == 'R'){
							totalArea[escolhaIndice] = valores[2]
							}
				}
			}
		se(buscaIndice == falso){
			escreva("Hóspede não encontrado.\n")
			}
		}
	//procedimento usado para exibir os hóspedes cadastrados e armazenaras despesas.

	funcao exibirHospPCalculos(){
		exibirHospedes()
		escreva("Digite o índice do hóspede que deseja buscar:\n")
		leia(escolhaIndice)
		}
	
	funcao real calcular(){
		retorne despesas + totalArea[escolhaIndice]
		}
}	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 700; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {cpf, 10, 9, 3}-{diasHospedados, 10, 18, 14}-{hospedes, 12, 8, 8}-{area, 15, 6, 4}-{valores, 16, 6, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */