//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init (){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        if velocidad.rawValue == 0{
            velocidad = .VelocidadBaja
        }
        else if velocidad.rawValue == 20{
            velocidad = .VelocidadMedia
        }
        else if velocidad.rawValue == 50{
            velocidad = .VelocidadAlta
        }
        else if velocidad.rawValue == 120{
            velocidad = .VelocidadMedia
        }
        let resultado =  (velocidad.rawValue, String(velocidad))
        return resultado
    }
}

var prueba = Auto.init()

for i  in 1...20 {
    print("\(i).\t \(prueba.velocidad.rawValue), \(prueba.velocidad)")
    prueba.cambioDeVelocidad()
}
