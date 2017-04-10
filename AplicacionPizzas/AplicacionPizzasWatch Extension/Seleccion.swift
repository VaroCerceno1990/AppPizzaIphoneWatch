//
//  Seleccion.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 10/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import WatchKit

class Seleccion: NSObject {
    var tamano: String? = nil
    var masa: String? = nil
    var queso: String? = nil
    var ingredientes: [String] = []
    
    override init() {
    }
    init(valor: Seleccion) {
        self.tamano = valor.tamano
        self.masa = valor.masa
        self.queso = valor.queso
        self.ingredientes = valor.ingredientes
    }
}
