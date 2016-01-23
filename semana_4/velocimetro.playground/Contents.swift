//: Un velocímetro de un automóvil digital

import UIKit


enum Velocidades : Int
{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades)
    {
        self = velocidadInicial
    }
}




class Auto
{
    var velocidad : Velocidades
    
    init()
    {
        self.velocidad = Velocidades(rawValue: 0)!
    }
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena : String)
    {
        var salida : (Int, String) = (0,"")
        
        if (velocidad.rawValue == 0)
        {
            salida = (velocidad.rawValue, "Apagado")
            self.velocidad = Velocidades(rawValue: 20)!
        }
        else
        {
            if (velocidad.rawValue == 20)
            {
                salida = (velocidad.rawValue, "Velocidad baja")
                self.velocidad = Velocidades(rawValue: 50)!
            }
            else
            {
                if(velocidad.rawValue == 50)
                {
                    salida = (velocidad.rawValue, "Velocidad media")
                    self.velocidad = Velocidades(rawValue: 120)!
                }
                else
                {
                    if(velocidad.rawValue == 120)
                    {
                        salida = (velocidad.rawValue, "Velocidad alta")
                        self.velocidad = Velocidades(rawValue: 50)!
                    }
                }
            }
        }
        return salida
    }
    
}

var auto = Auto()

for var i = 1; i <= 20; i++
{
    var cadena = auto.cambioDeVelocidad()
    print ( "\(i). "+String(cadena.0)+", "+cadena.1 )
}

