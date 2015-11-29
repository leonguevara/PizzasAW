//
//  Datos.swift
//  PizzasAW
//
//  Created by León Felipe Guevara Chávez on 2015-11-29.
//  Copyright © 2015 León Felipe Guevara Chávez. All rights reserved.
//

import WatchKit

class Datos: NSObject {
    var tamanoMiPizza : String = ""
    var masaMiPizza : String = ""
    var quesoMiPizza : String = ""
    var numIngredientesMiPizza : Int = 0
    var ingredientesMiPizza : String = ""
    
    init(tp:String, mp:String, qp:String, num:Int, ing:String){
        tamanoMiPizza = tp
        masaMiPizza = mp
        quesoMiPizza = qp
        numIngredientesMiPizza = num
        ingredientesMiPizza = ing
    }
}
