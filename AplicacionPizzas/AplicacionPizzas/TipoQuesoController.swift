//
//  TipoQuesoController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 1/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class TipoQuesoController: UIViewController {
    @IBOutlet weak var tipoMasaSeleccionada: UILabel!
    @IBOutlet weak var tipoPizzaSeleccionada: UILabel!
    var tamanoPizza: String? = nil
    var tipoMasa: String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
          self.title="Tipo de queso"
tipoMasaSeleccionada.text=tipoMasa
        tipoPizzaSeleccionada.text=tamanoPizza
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let boton = sender as! UIButton
        let resultado: String = boton.titleLabel!.text!
        print(resultado)
        let sigVista = segue.destination as! IngredientesController
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = self.tipoMasa
        sigVista.tipoQueso = resultado
    }
   
}
