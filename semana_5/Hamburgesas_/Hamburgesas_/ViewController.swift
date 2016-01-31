//
//  ViewController.swift
//  Hamburgesas_
//
//  Created by Juan Pablo Gómez Leyva on 31/1/16.
//  Copyright © 2016 jpgleyva. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var pais: UILabel!
    
    @IBOutlet weak var hamburguesa: UILabel!
    
    @IBOutlet weak var precio: UILabel!
    
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()
    let color = Colores()
    let precios = Precios()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameHamburguesa(sender: AnyObject)
    {
        pais.text = paises.obtenPais()
        hamburguesa.text = hamburguesas.obtenHamburguesa()
        precio.text = String (precios.regresaPrecio() )
        
        let colorAleatorio = color.regresaColorAleatorio()
        
        view.backgroundColor = colorAleatorio
    }

}

