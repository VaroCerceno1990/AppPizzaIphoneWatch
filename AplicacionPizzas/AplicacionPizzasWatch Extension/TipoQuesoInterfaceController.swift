//
//  TipoQuesoInterfaceController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit
import Foundation


class TipoQuesoInterfaceController: WKInterfaceController {
    let mozzarela: String = "Mozarela"
    let cheddar: String = "Cheddar"
    let parmesano: String = "Parmesano"
    let sinQueso: String = "Sin queso"
    var seleccionContexto: Seleccion = Seleccion()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setTitle("Queso")
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
    
    @IBAction func setMozzarela() {
        setSeleccion(mozzarela)
    }
    
    @IBAction func setCheddar() {
        setSeleccion(cheddar)
    }
    
    
    @IBAction func setParmesano() {
        setSeleccion(parmesano)
    }
    
    
    @IBAction func setSinQueso() {
        setSeleccion(sinQueso)
    }
    
    func setSeleccion(_ opcion: String) {
        seleccionContexto.queso = opcion
        pushController(withName: "IngredientesController", context: seleccionContexto)
        print(opcion)
    }


}
