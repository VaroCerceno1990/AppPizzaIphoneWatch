//
//  InterfaceController.swift
//  AplicacionPizzasWatch Extension
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    let chica: String = "Chica"
    let mediana: String = "Mediana"
    let grande: String = "Grande"
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
         self.setTitle("Tamaño")
        
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

    
    @IBAction func setPizzaChica() {
        setSeleccionUsuario(chica)
    }
    
    
    @IBAction func setPizzaMediana() {
         setSeleccionUsuario(mediana)
    }
    
    
    @IBAction func setPizzaGrande() {
         setSeleccionUsuario(grande)
    }
    
    func setSeleccionUsuario(_ opcion: String) {
        let valorUsuario = Seleccion()
        valorUsuario.tamano = opcion
        pushController(withName: "MasaController", context: valorUsuario)
        print(opcion)
    }
}
