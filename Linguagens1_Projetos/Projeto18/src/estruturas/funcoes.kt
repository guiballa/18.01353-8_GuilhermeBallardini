package estruturas
fun somar(numero1 : Int, numero2: Int) = numero1+numero2
fun somar2(numero1 : Int=5, numero2: Int=6) = numero1+numero2



fun main(){
    val num1 = 10
    val num2 = 646

    println("Retorno de somar: ${somar(num1,num2)}")
    println("Retorno de somar: ${somar2(num1,num2)}")
    println("Retorno de somar: ${somar2(num1)}")
    println("Retorno de somar: ${somar2(numero2 = num2)}")
    println("Retorno de somar: ${somar2(numero1 = num1, numero2 = num2)}")
}