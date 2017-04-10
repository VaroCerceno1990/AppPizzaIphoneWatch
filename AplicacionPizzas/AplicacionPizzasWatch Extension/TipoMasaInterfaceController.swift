//
//  TipoMasaInterfaceController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit
import Foundation


class TipoMasaInterfaceController: WKInterfaceController {
    let delgada: String = "Delgada"
    let crujiente: String = "Crujiente"
    let gruesa: String = "Gruesa"
    var seleccionContexto: Seleccion = Seleccion()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.setTitle("Masa")
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
    
    @IBAction func setMasaDelgada() {
        setSeleccion(delgada)
    }
    
    
    @IBAction func setMasaCrujiente() {
        setSeleccion(crujiente)
    }
    
    
    
    @IBAction func setMasaGruesa() {
        setSeleccion(gruesa)
    }
    
    func setSeleccion(_ opcion: String) {
        seleccionContexto.masa = opcion
        pushController(withName: "QuesoController", context: seleccionContexto)
        print(opcion)
    }


}
