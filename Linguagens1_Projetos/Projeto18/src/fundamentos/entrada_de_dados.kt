package fundamentos

fun main(){
    println("Informe seu nome:")
    var nome = readLine()
    println("Nome informado: $nome")
    // ou desse jeito
    var tamanho = nome?.length
    println("Tamanho: $tamanho")
    // ou desse
    if (nome != null) {
        println("Tamanho: ${nome!!.length}")
    }
}