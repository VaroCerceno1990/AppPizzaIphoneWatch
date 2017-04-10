//
//  IngredientesInterfaceController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {
    var jamon: Bool = false
    var pepperoni: Bool = false
    var pavo: Bool = false
    var salchicha: Bool = false
    var aceituna: Bool = false
    var cebolla: Bool = false
    var pimiento: Bool = false
    var pina: Bool = false
    var anchoa: Bool = false
    var carne: Bool = false
     var seleccionContexto: Seleccion = Seleccion()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setTitle("Ingredientes")
        seleccionContexto=context as! Seleccion
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func guardarJamon(_ value: Bool) {
        jamon=value

    }
 
    @IBAction func guardarPeperonni(_ value: Bool) {
        pepperoni=value
    }
    

    @IBAction func guardarSalchicha(_ value: Bool) {
        salchicha=value
    }
    
    
    @IBAction func guardarPavo(_ value: Bool) {
        pavo=value
    }
    
    
    @IBAction func guardarPimiento(_ value: Bool) {
        pimiento=value
    }
    
    
    
    @IBAction func guardarCebolla(_ value: Bool) {
        cebolla=value
    }
    
    
    @IBAction func guardarPina(_ value: Bool) {
        pina=value
    }

    @IBAction func guardarAceituna(_ value: Bool) {
        aceituna=value
    }
    
    
    @IBAction func guardarAnchoa(_ value: Bool) {
        anchoa=value
    }
    
    @IBAction func guardarCarne(_ value: Bool) {
        carne=value
    }
    
    
    @IBAction func continuar() {
    
            seleccionContexto.ingredientes.removeAll()
            if (jamon) {
                seleccionContexto.ingredientes.append("Jamón")
            }
            if (pepperoni) {
                seleccionContexto.ingredientes.append("Pepperoni")
            }
            if (pavo) {
                seleccionContexto.ingredientes.append("Pavo")
            }
            if (salchicha) {
                seleccionContexto.ingredientes.append("Salchicha")
            }
            if (aceituna) {
                seleccionContexto.ingredientes.append("Aceituna")
            }
            if (cebolla) {
                seleccionContexto.ingredientes.append("Cebolla")
            }
            if (pimiento) {
                seleccionContexto.ingredientes.append("Pimiento")
            }
            if (pina) {
                seleccionContexto.ingredientes.append("Piña")
            }
            if (anchoa) {
                seleccionContexto.ingredientes.append("Anchoa")
            }
            if (carne) {
                seleccionContexto.ingredientes.append("Carne")
            }
            if (seleccionContexto.ingredientes.count>=1&&seleccionContexto.ingredientes.count<=5) {
                pushController(withName: "ConfirmacionController", context: seleccionContexto)
                print(seleccionContexto.ingredientes)
            }
            else{
                let okAction = WKAlertAction(title: "Aceptar",
                                             style: WKAlertActionStyle.default) { () -> Void in
                                                print("OK")
                }
              
                
                presentAlert(withTitle: "Ingredientes",
                                                message: "Debe seleccionar entre 1 y 5 ingredientes para continuar con la orden",
                                                preferredStyle: WKAlertControllerStyle.alert,
                                                actions: [okAction])
        }
    }
    
    
}
