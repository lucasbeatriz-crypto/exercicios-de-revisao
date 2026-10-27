programa {
  funcao inicio() {
    inteiro numero=0, total=0
    escreva("digite um numero: ")
    leia(numero)
    enquanto(numero !=0){
    total=total + numero
    escreva("digite um numero: ")
    leia(numero)
    }
    escreva("total geral",total,"\n")
    escreva("fim de programa")
  }
}
