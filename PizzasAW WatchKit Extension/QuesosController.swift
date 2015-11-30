//
//  QuesosController.swift
//  PizzasAW
//
//  Created by León Felipe Guevara Chávez on 2015-11-29.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import WatchKit
import Foundation


class QuesosController: WKInterfaceController {

    var tamano : String = ""
    var masa : String = ""
    var quesoPizza: String = "Sin queso"
    
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var etiquetaQueso: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Datos
        
        tamano = c.tamanoMiPizza
        masa = c.masaMiPizza
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        etiquetaQueso.setText("Tipo de queso🧀")
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func nuevoQueso(value: Float) {
        if (value == 1) {
            quesoPizza = "🧀Mozzarela"
        } else if (value == 2) {
            quesoPizza = "🧀Cheddar"
        } else if (value == 3) {
            quesoPizza = "🧀Parmesano"
        } else {
            quesoPizza = "Sin queso"
        }
        queso.setText(quesoPizza)
    }
    
    @IBAction func registrarQueso() {
        let valorContexto=Datos(tp : tamano, mp:masa, qp:quesoPizza, num:0, ing:"")
        pushControllerWithName("IdentificadorValor3", context: valorContexto)
    }
}
