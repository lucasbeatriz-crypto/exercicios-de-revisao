programa
{

	funcao logico vagaEValida(inteiro vaga)
	{
		se (vaga >= 1 e vaga <= 30)
		{
			retorne verdadeiro
		}
		senao
		{
			escreva("\nErro: Número de vaga inválido! Digite um valor entre 1 e 30.\n")
			retorne falso
		}
	}

	funcao entradaVeiculo(cadeia &placas[], logico &ocupacao[])
	{
		inteiro vaga
		cadeia placa

		escreva("\n--- ENTRADA DE VEÍCULO ---\n")
		escreva("Digite o número da vaga (1 a 30): ")
		leia(vaga)

		se (vagaEValida(vaga))
		{
			inteiro idx = vaga - 1

			se (ocupacao[idx] == verdadeiro)
			{
				escreva("Atenção: A vaga ", vaga, " já está OCUPADA pelo veículo de placa ", placas[idx], "!\n")
			}
			senao
			{
				escreva("Digite a placa do veículo: ")
				leia(placa)

				placas[idx] = placa
				ocupacao[idx] = verdadeiro
				escreva("Sucesso: Veículo de placa ", placa, " estacionado na vaga ", vaga, "!\n")
			}
		}
	}


	funcao saidaVeiculo(cadeia &placas[], logico &ocupacao[])
	{
		inteiro vaga

		escreva("\n--- SAÍDA DE VEÍCULO ---\n")
		escreva("Digite o número da vaga (1 a 30): ")
		leia(vaga)

		se (vagaEValida(vaga))
		{
			inteiro idx = vaga - 1

			se (ocupacao[idx] == falso)
			{
				escreva("Atenção: A vaga ", vaga, " já está LIVRE!\n")
			}
			senao
			{
				escreva("Sucesso: Veículo de placa ", placas[idx], " saiu da vaga ", vaga, ".\n")
				placas[idx] = ""
				ocupacao[idx] = falso
			}
		}
	}


	funcao listarVagas(cadeia placas[], logico ocupacao[])
	{
		escreva("\n================ LISTAGEM DE VAGAS ================\n")
		para (inteiro i = 0; i < 30; i++)
		{
			inteiro numeroVaga = i + 1
			se (ocupacao[i] == verdadeiro)
			{
				escreva("Vaga ", numeroVaga, ": OCUPADA [Placa: ", placas[i], "]\n")
			}
			senao
			{
				escreva("Vaga ", numeroVaga, ": LIVRE\n")
			}
		}
		escreva("===================================================\n")
	}

	funcao inicio()
	{
		cadeia placas[30]
		logico ocupacao[30]
		inteiro opcao = 0


		para (inteiro i = 0; i < 30; i++)
		{
			placas[i] = ""
			ocupacao[i] = falso
		}

		faca
		{
			escreva("\n----------------------------------\n")
			escreva("1- Entrada de Veículo\n")
			escreva("2- Saída de Veículo\n")
			escreva("3- Listar vagas\n")
			escreva("4- Sair do programa\n")
			escreva("----------------------------------\n")
			escreva("Escolha uma opção: ")
			leia(opcao)

			escolha (opcao)
			{
				caso 1:
					entradaVeiculo(placas, ocupacao)
					pare
				caso 2:
					saidaVeiculo(placas, ocupacao)
					pare
				caso 3:
					listarVagas(placas, ocupacao)
					pare
				caso 4:
					escreva("\nEncerrando o sistema de estacionamento...\n")
					pare
				caso contrario:
					escreva("\nOpção inválida! Tente novamente.\n")
			}
		} enquanto (opcao != 4)
	}
}
