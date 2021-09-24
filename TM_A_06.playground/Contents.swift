import UIKit
/*:
# Playground - Actividad 6
* Operadores personalizados
* Subscripts
* Control de errores

*/


/*: 
### Operadores personalizados
A) Crear el operador para realizar la potencia de el valor "a" a la potencia "b" en valores enteros
*/
infix operator **
func ** (valor:Double, potencia:Double)->Double{
  return pow(valor, potencia)
}

5**2



//: B) Crear el operador |> para ordenar la colección [2,5,3,4] de menor a mayor
prefix operator |>
prefix func |> (array:[Int]) -> [Int]
{
  let new = array.sorted()
    return new
}

|>[2,5,3,4]


/*:
### Subscripts
A) Del conjunto de datos en el Array [2,3,4,5], crear el subscript para modificar los valores multiplicados por el valor 2 y extraer al valor dado un índice.
*/
let cantidades = [2,4,9,2,5]
class Cantidad {
    var valores:[Int]
    init(v:[Int])
    {
        self.valores = v
    }
    
    subscript(idx: Int) -> Int {
        get{
            return valores[idx] * 2
        }
        
        set(nuevoValor)
        {
            valores[idx] = nuevoValor
        }
    }
}

let v1 = Cantidad(v: cantidades)

v1[2]
v1[3] = 7

cantidades

v1.valores





//: B) Crear el Struct para definir u obtener la posición  para los personaje de tipo Enemigo donde cada posición es de tipo CGPoint aplicnado subscritps
class Enemigo{
    var posicion:CGPoint
    init(p:CGPoint) {
        self.posicion = p
    }
    
    subscript(ubicacion: CGPoint) -> CGPoint{
        get{
            return posicion
        }
        set(nuevoValor){
            posicion = nuevoValor
        }
    }
    
}

let personaje = Enemigo(p: CGPoint(x: 19.00, y:18.00))
personaje.posicion

personaje.posicion = CGPoint(x: 20.00, y:17.00)

personaje.posicion

/*:
### Control de Errores
A) Crear la función ExisteValor en la cual se reciba como parámetro el valor a buscar dentro de un colección ["A":1, "B":2,"C":3]
*/
let valores = ["A":1, "B":2,"C":3]

func ExisteValor(valor:String){
    
    guard let existe = valores[valor] else {
        return
    }
    print("Existe \(existe)")
    
}

ExisteValor(valor: "A")
ExisteValor(valor: "D")






