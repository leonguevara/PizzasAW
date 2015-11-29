//
//  MasasController.swift
//  PizzasAW
//
//  Created by León Felipe Guevara Chávez on 2015-11-29.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import WatchKit
import Foundation


class MasasController: WKInterfaceController {
    
    var tamano : String = ""
    var masaPizza : String = "Delgada"

    @IBOutlet var masa: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Datos
        
        tamano = c.tamanoMiPizza
        
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

    @IBAction func nuevaMasa(value: Float) {
        if (value == 1) {
            masaPizza = "Delgada"
        }
        else if (value == 2) {
            masaPizza = "Crujiente"
        }
        else {
            masaPizza = "Gruesa"
        }
        masa.setText(masaPizza)
    }
    
    @IBAction func registrarMasa() {
        let valorContexto=Datos(tp : tamano, mp:masaPizza, qp:"", num:0, ing:"")
        pushControllerWithName("IdentificadorValor2", context: valorContexto)
    }
}
