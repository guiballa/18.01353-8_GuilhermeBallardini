package fundamentos

fun main(){
    var numero1 : Double
    var numero2 : Int
    var resultado : Double
    println("Informe dois numeros:")
    println("Numero real:")
    numero1 = readLine()!!.toDouble()
    println("Numero inteiro:")
    numero2 = readLine()!!.toInt()
    resultado = numero1+numero2
    println("Resultado: $resultado ")
    println("Resultado: ${numero1+numero2} ")
    println("Resultado: %.3f".format(resultado))
}