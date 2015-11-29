//
//  ConfirmacionController.swift
//  PizzasAW
//
//  Created by León Felipe Guevara Chávez on 2015-11-29.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmacionController: WKInterfaceController {

    @IBOutlet var tamano: WKInterfaceLabel!
    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    @IBOutlet var ingredientes: WKInterfaceLabel!
    
    @IBOutlet var botonConfirmar: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Datos
        
        if (c.numIngredientesMiPizza == 0) {
            tamano.setHidden(true)
            masa.setHidden(true)
            queso.setHidden(true)
            ingredientes.setText("Debes elegir por lo menos un ingrediente")
            botonConfirmar.setHidden(true)
        } else {
            tamano.setText(c.tamanoMiPizza)
            tamano.setHidden(false)
            masa.setText(c.masaMiPizza)
            masa.setHidden(false)
            queso.setText(c.quesoMiPizza)
            queso.setHidden(false)
            ingredientes.setText("Ingredientes:\n\(c.ingredientesMiPizza)")
            ingredientes.setHidden(false)
            botonConfirmar.setHidden(false)
        }
        
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

}
