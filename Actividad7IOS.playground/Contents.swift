import UIKit

	var numeros:[Float] = [8.3, 10.5, 9.9]
var impuesto:Int = 0

for i in numeros {
    numeros[impuesto] = i * 0.16
    impuesto += 1
}
print(numeros)

func porDos(arreglo:[Float]) -> [Float]{
    var resultado:[Float] = []
    for i in arreglo {
        resultado.append (i * 0.16)
    }
    return resultado
}

let Suma = {(x:Int, y:Int) -> Int in return x + y}

Suma (2, 2)

func sumaTres (a:Int, b:Int, c:Int) -> Int
{
    return Suma (a, b) + c
}
sumaTres (a: 5, b:5, c:5)

extension Array{
    func transformar <t> (inicial: t, acumula:(t, Element) -> t) -> t
    {
        var respuesta: t = inicial
        for valor in self {
            respuesta = acumula (respuesta, valor)
        }
        return respuesta
    }
}
var datos = [3,7,9,2]
var letras = ["a", "b", "c", "d"]

/*----------------------------------*/
//libreria

var precios:[Float] = [4.2, 5.3, 8.2, 4.5]
var impuesto2:Int = 0

for i in precios{
    precios[impuesto2] = i * 0.16
    impuesto2 += 1
}

var suma2 = precios.map{a in return a + 0.16}
print (suma2)

var filtro = precios.filter{a in a > 6.0}
