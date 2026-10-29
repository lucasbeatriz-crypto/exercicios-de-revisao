programa {
  funcao inicio() {
    cadeia times[8], campeao="", lanterna=""
    inteiro pontuacao[8], maoir_pontuacao=-1, menor_pontuacao=1000

    para (inteiro i=0, i<8; i++){
      escreva("nome do time: ", i + 1,"o time: ")
      leia(times[i])
      escreva("pontuaçao: ")
      leia(pontuacao[i]) 
       se(pontuacao[i] > maoir_pontuacao){
        maoir_pontuacao = pontuacao[i]
        campeao = times[i]
       }
       se (pontuacao[i] < menor_pontuacao){
        h
       }
    }

  }
}
