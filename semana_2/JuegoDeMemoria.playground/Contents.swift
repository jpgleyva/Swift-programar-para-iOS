//: Playground - noun: a place where people can play

import UIKit

for var i = 0; i <= 100; i++
{
    var cadena = ""
    
    cadena += String("\(i)")
    
    
    if i % 5 == 0
    {
        cadena += " # Bingo!!!"
    }
    if i % 2 == 0
    {
        cadena += " # par!!!"
    }
    else
    {
        cadena += " # impar!!!"
    }
    if i >= 30 && i <= 40
    {
        cadena += " # Viva Swift!!!"
    }
    print(cadena)
    
}
