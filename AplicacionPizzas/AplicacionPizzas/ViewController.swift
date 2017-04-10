//
//  ViewController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 31/3/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Tamaño de la Pizza"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let boton = sender as! UIButton
    let resultado: String = boton.titleLabel!.text!
    print(resultado)
    let sigVista = segue.destination as! TipoMasaController
    sigVista.tamanoPizza = resultado
    }
   @IBAction func unwindToMenu(_ segue: UIStoryboardSegue) {}

}

