programa {
  inclua biblioteca Util --> util
  inteiro sala  [10][12]
    
  
  
	  funcao inicio() {
		  inteiro ocupado = 1
	  	inteiro fila, assento
	  	zerar_assentos()
	   
	  }

	  funcao zerar_assentos(){
	       para  (inteiro h = 0; h < 10; h++){
	          para (inteiro v = 0; v < 12; v++){
	            sala[h][v] = 0
	          }
	       }
	  }


	funcao reservar() {
		inteiro fila = 0
		inteiro assento = 0

		escreva("Digite a fila (0 a 9): ")
		leia(fila)
		
		escreva("Digite o assento (0 a 11): ")
		leia(assento)

		se (fila >= 0 e fila < 10 e assento >= 0 e assento < 12) { 
			se (sala[fila][assento] == 0) {
				escreva("Assento vago! \n")
				sala[fila][assento] = 1
			} senao {
				escreva("Assento já está ocupado!\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */