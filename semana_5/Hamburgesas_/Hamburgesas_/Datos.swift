//
//  Datos.swift
//  Hamburgesas_
//
//  Created by Juan Pablo Gómez Leyva on 31/1/16.
//  Copyright © 2016 jpgleyva. All rights reserved.
//

import Foundation
import UIKit


struct Colores
{
    let colores = [UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
        UIColor(red: 3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
        UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
        UIColor(red: 130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
        UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
        UIColor(red: 3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)
    ]
    
    func regresaColorAleatorio() -> UIColor
    {
        let posicionColor = Int ( arc4random() ) % colores.count
        return colores[posicionColor]
    }
}

struct Precios
{
    var precio : Int = 0
    
    func regresaPrecio () -> Int
    {
        return Int ( arc4random() ) % 100
    }
}

class ColeccionDePaises
{
    var paises : [String] = ["Alemania",
        "Austria",
        "Bélgica",
        "Bulgaria",
        "Chipre",
        "Croacia",
        "Dinamarca",
        "Eslovaquia",
        "Eslovenia",
        "España",
        "Estonia",
        "Finlandia",
        "Francia",
        "Grecia",
        "Hungría",
        "Irlanda",
        "Italia",
        "Letonia",
        "Lituania",
        "Luxemburgo",
        "Malta",
        "Países Bajos",
        "Polonia",
        "Portugal",
        "Reino Unido",
        "República Checa",
        "Rumania",
        "Suecia"]
    
    func obtenPais( ) -> String
    {
        let posicionPais = Int ( arc4random() ) % paises.count
        return paises[posicionPais]
    }
}

class ColeccionDeHamburguesa
{
    var hamburguesas : [String] = ["WHOPPER® BBQ",
        "WHOPPER® con Queso",
        "Hamburguesa con Queso",
        "WHOPPER® Doble con Queso",
        "Hamburguesa con Queso y Tocino",
        "WHOPPER® Angry",
        "WHOPPER Jr.® con Queso",
        "Rodeo Burger",
        "BIG KING™",
        "MEGA XT™ Queso y Tocino",
        "MEGA XT™ Clasíca o Aguacate",
        "X-TREME™",
        "BIG MAC®",
        "CUARTO DE LIBRA CON QUESO",
        "McROYAL DELUXE®",
        "BIG DOUBLE CHEESE",
        "BIG CHICKEN SUPREME",
        "McPOLLO®",
        "CHICKEN BURGER BBQ",
        "CHICKEN McROLL",
        "McWRAP® CHICKEN & BACON",
        "McFISH®"]
    
    func obtenHamburguesa( ) -> String
    {
        let posicionHamburguesa = Int ( arc4random() ) % hamburguesas.count
        return hamburguesas[posicionHamburguesa]
    }
    
}
