//
//  IngredientesController.swift
//  PizzasAW
//
//  Created by León Felipe Guevara Chávez on 2015-11-29.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesController: WKInterfaceController {
    
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var numIng : Int = 0
    var ingredientes : String = ""
    
    var conPepperoni : Bool = false
    var conJamon : Bool = false
    var conPavo : Bool = false
    var conSalchicha : Bool = false
    var conAnchoas : Bool = false
    var conAceitunas : Bool = false
    var conCebolla : Bool = false
    var conPimiento : Bool = false
    var conPina : Bool = false
    var conChampinones : Bool = false
    

    @IBOutlet var pepperoni: WKInterfaceSwitch!
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var pavo: WKInterfaceSwitch!
    @IBOutlet var salchicha: WKInterfaceSwitch!
    @IBOutlet var anchoas: WKInterfaceSwitch!
    @IBOutlet var aceitunas: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var pina: WKInterfaceSwitch!
    @IBOutlet var champinones: WKInterfaceSwitch!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        let c = context as! Datos
        
        // Configure interface objects here.
        
        tamano = c.tamanoMiPizza
        masa = c.masaMiPizza
        queso = c.quesoMiPizza
        inicializaContador()
        if (numIng==5) {
            inhabilitaSwitches()
        }
        else {
            habilitaSwitches()
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    func inicializaContador(){
        numIng = 0
        if conPepperoni {
            pepperoni.setOn(true)
            numIng++
        }
        if conJamon {
            jamon.setOn(true)
            numIng++
        }
        if conPavo {
            pavo.setOn(true)
            numIng++
        }
        if conSalchicha {
            salchicha.setOn(true)
            numIng++
        }
        if conAnchoas {
            anchoas.setOn(true)
            numIng++
        }
        if conAceitunas {
            aceitunas.setOn(true)
            numIng++
        }
        if conCebolla {
            cebolla.setOn(true)
            numIng++
        }
        if conPimiento {
            pimiento.setOn(true)
            numIng++
        }
        if conPina {
            pina.setOn(true)
            numIng++
        }
        if conChampinones {
            champinones.setOn(true)
            numIng++
        }
    }

    func habilitaSwitches(){
        if !conPepperoni {
            pepperoni.setEnabled(true)
        }
        if !conJamon {
            jamon.setEnabled(true)
        }
        if !conPavo {
            pavo.setEnabled(true)
        }
        if !conSalchicha {
            salchicha.setEnabled(true)
        }
        if !conAnchoas {
            anchoas.setEnabled(true)
        }
        if !conAceitunas {
            aceitunas.setEnabled(true)
        }
        if !conCebolla {
            cebolla.setEnabled(true)
        }
        if !conPimiento {
            pimiento.setEnabled(true)
        }
        if !conPina {
            pina.setEnabled(true)
        }
        if !conChampinones {
            champinones.setEnabled(true)
        }
    }
    
    func inhabilitaSwitches(){
        if !conPepperoni {
            pepperoni.setEnabled(false)
        }
        if !conJamon {
            jamon.setEnabled(false)
        }
        if !conPavo {
            pavo.setEnabled(false)
        }
        if !conSalchicha {
            salchicha.setEnabled(false)
        }
        if !conAnchoas {
            anchoas.setEnabled(false)
        }
        if !conAceitunas {
            aceitunas.setEnabled(false)
        }
        if !conCebolla {
            cebolla.setEnabled(false)
        }
        if !conPimiento {
            pimiento.setEnabled(false)
        }
        if !conPina {
            pina.setEnabled(false)
        }
        if !conChampinones {
            champinones.setEnabled(false)
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
