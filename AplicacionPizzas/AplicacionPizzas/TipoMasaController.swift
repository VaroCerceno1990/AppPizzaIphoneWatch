//
//  TipoMasaController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 1/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class TipoMasaController: UIViewController {
  
    @IBOutlet weak var tamanoPizzaSeleccionada: UILabel!
var tamanoPizza: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Tipo de masa"
        tamanoPizzaSeleccionada.text=tamanoPizza
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


       // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as! TipoQuesoController
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = resultado
    }
    

}
