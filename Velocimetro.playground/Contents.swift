//: Playground - noun: a place where people can play
// Lugar de github: 

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    init(){
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        switch(self.velocidad){
        case .Apagado :
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .Apagado
        }
        return (self.velocidad.hashValue, String(self.velocidad.rawValue))
    }
}

var auto : Auto = Auto()
for i in 0...19{
    print(auto.velocidad.hashValue, ", ", auto.velocidad)
    auto.cambioDeVelocidad()
    
}