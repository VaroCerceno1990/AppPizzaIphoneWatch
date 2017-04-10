//
//  ConfirmacionController.swift
//  AplicacionPizzas
//
//  Created by Ulises  on 1/4/17.
//  Copyright © 2017 Ulises . All rights reserved.
//

import UIKit

class ConfirmacionController: UIViewController {
    @IBOutlet weak var ingredientesSeleccionados: UILabel!

    @IBOutlet weak var tipoPizzaSeleccionada: UILabel!
 

    @IBOutlet weak var tipoQuesoSeleccionado: UILabel!
    @IBOutlet weak var tamanoMasaSeleccionada: UILabel!
    var tipoMasa: String? = nil
    var tipoQueso: String? = nil
    var tamanoPizza: String? = nil
    var ingredientes: [String]? = nil
    
    @IBAction func EnviarCocinaButton() {
        let alertController = UIAlertController(title: "Confirmación de orden", message: "¿Está seguro de enviar a la cocina?. Después no se puede cambiar la orden", preferredStyle: UIAlertControllerStyle.alert)
        let CancelAction = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel) {
            (result : UIAlertAction) -> Void in
            print("Cancelar")
        }
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            (result : UIAlertAction) -> Void in
            let pedidoConfirm = UIAlertController(title: "Confirmación de orden", message: "El pedido se ha enviado a la cocina, muchas gracias por usar la aplicación", preferredStyle: UIAlertControllerStyle.alert)
            let okActionPedido = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                (result : UIAlertAction) -> Void in
                 self.performSegue(withIdentifier: "unwindToMenu", sender: self)
                }
          pedidoConfirm.addAction(okActionPedido)
            self.present(pedidoConfirm, animated: true, completion: nil)


        }
        alertController.addAction(okAction)
        alertController.addAction(CancelAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Confirmación de orden"
               // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        tamanoMasaSeleccionada.text=tipoMasa
        tipoPizzaSeleccionada.text=tamanoPizza
        tipoQuesoSeleccionado.text=tipoQueso

        var ingredientesSalida: String = ""
        var i = 0
        while i < (ingredientes?.count)! - 1 {
            ingredientesSalida += (ingredientes?[i])! + ", "
            i += 1
        }
        ingredientesSalida += (ingredientes?[i])!
        ingredientesSeleccionados.text = String(ingredientesSalida)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
