//
//  ConfirmacionInterfaceController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionInterfaceController: WKInterfaceController {
    var seleccionContexto: Seleccion = Seleccion()

    @IBOutlet var tamanoLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLabel: WKInterfaceLabel!
    
    @IBOutlet var cambiarSeleccionbutton: WKInterfaceButton!
    
    @IBOutlet var confirmarOrdenButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setTitle("Confirmacion")
        seleccionContexto=context as! Seleccion
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        tamanoLabel.setText(seleccionContexto.tamano)
        masaLabel.setText(seleccionContexto.masa)
        quesoLabel.setText(seleccionContexto.queso)
        var ingredientesSalida: String = ""
        var i = 0
        while i < seleccionContexto.ingredientes.count - 1 {
            ingredientesSalida += seleccionContexto.ingredientes[i] + ", "
            i += 1
        }
        ingredientesSalida += seleccionContexto.ingredientes[i]
        ingredientesLabel.setText(String(ingredientesSalida))

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func ConfirmarUsuario() {
        let okAction = WKAlertAction(title: "Aceptar",
                                     style: WKAlertActionStyle.default) { () -> Void in
                         
                                        let okAction = WKAlertAction(title: "Aceptar",
                                                                     style: WKAlertActionStyle.default) { () -> Void in
                                                                       self.pushController(withName: "PizzaController", context: "")
                                        }
                                        
                                        
                                        self.presentAlert(withTitle: "Confirmación de orden",
                                                     message: "El pedido se ha enviado a la cocina, muchas gracias por usar la aplicación",
                                                     preferredStyle: WKAlertControllerStyle.alert,
                                                     actions: [okAction])
         
                                        
                                        
        }
        
        
        
        let cancelAction = WKAlertAction(title: "Cancelar",
                                         style: WKAlertActionStyle.cancel) { () -> Void in
                                        
        }
        
        presentAlert(withTitle: "Confirmación de orden",
                                        message: "¿Está seguro de enviar a la cocina? No se podrá cambiar la orden",
                                        preferredStyle: WKAlertControllerStyle.alert,
                                        actions: [okAction, cancelAction])
        
        
    }
}
