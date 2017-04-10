//
//  IngredientesController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 1/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class IngredientesController: UIViewController {
    @IBOutlet weak var tipoQuesoSeleccionado: UILabel!
    @IBOutlet weak var tipoPizzaSeleccionada: UILabel!
    var tamanoPizza: String? = nil
    @IBOutlet weak var tamanoMasaSeleccionada: UILabel!
    var tipoMasa: String? = nil
     var tipoQueso: String? = nil
    var ingredientesSeleccionados:[String] = []

    @IBOutlet weak var jamonSeleccionado: UISwitch!
    @IBOutlet weak var peperonniSeleccionado: UISwitch!
    @IBOutlet weak var pavoSeleccionado: UISwitch!
    @IBOutlet weak var salchichaSeleccionado: UISwitch!
    @IBOutlet weak var aceitunaSeleccionado: UISwitch!
    @IBOutlet weak var cebollaSeleccionado: UISwitch!

    @IBOutlet weak var carneSeleccionado: UISwitch!
    @IBOutlet weak var pimientoSeleccionado: UISwitch!
    @IBOutlet weak var pinhaSeleccionada: UISwitch!
    @IBOutlet weak var anchoaSeleccionada: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.title="Selección de ingredientes"
        tamanoMasaSeleccionada.text=tipoMasa
        tipoPizzaSeleccionada.text=tamanoPizza
        tipoQuesoSeleccionado.text=tipoQueso
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
        let sigVista = segue.destination as! ConfirmacionController
        sigVista.tamanoPizza = self.tamanoPizza
        sigVista.tipoMasa = self.tipoMasa
        sigVista.tipoQueso = self.tipoQueso
        sigVista.ingredientes=ingredientesSeleccionados
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        ingredientesSeleccionados.removeAll()
        if (jamonSeleccionado.isOn) {
            ingredientesSeleccionados.append("Jamón")
        }
        if (peperonniSeleccionado.isOn) {
            ingredientesSeleccionados.append("Pepperoni")
        }
        if (pavoSeleccionado.isOn) {
            ingredientesSeleccionados.append("Pavo")
        }
        if (salchichaSeleccionado.isOn) {
            ingredientesSeleccionados.append("Salchicha")
        }
        if (aceitunaSeleccionado.isOn) {
            ingredientesSeleccionados.append("Aceituna")
        }
        if (cebollaSeleccionado.isOn) {
            ingredientesSeleccionados.append("Cebolla")
        }
        if (carneSeleccionado.isOn) {
            ingredientesSeleccionados.append("Carne")
        }
        if (pimientoSeleccionado.isOn) {
            ingredientesSeleccionados.append("Pimiento")
        }
        if (pinhaSeleccionada.isOn) {
            ingredientesSeleccionados.append("Piña")
        }
        
        if (anchoaSeleccionada.isOn) {
            ingredientesSeleccionados.append("Anchoa")
        }
 
        print(ingredientesSeleccionados)
          print(ingredientesSeleccionados.count)
        if (ingredientesSeleccionados.count>=1&&ingredientesSeleccionados.count<=5) {
            return true
        }
        else {
            let alertController = UIAlertController(title: "Ingredientes", message: "Debe seleccionar entre 1 y 5 ingredientes para continuar con la orden", preferredStyle: UIAlertControllerStyle.alert)
            // Replace UIAlertActionStyle.Default by UIAlertActionStyle.default
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                (result : UIAlertAction) -> Void in
                print("OK")
            }
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
            return false
        }
        
  
        
    }
 
}
