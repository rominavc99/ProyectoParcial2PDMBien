//
//  Gato.swift
//  proyectoParcial2
//
//  Created by Alumno on 13/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Gato {
    var raza = ""
    var pelaje = ""
    var edadEstimada = ""
    var origen = ""
    var caracter = ""
    var foto = ""
    
    var cualidades : [Cualidad] = []
    
    
    
    init(raza: String, pelaje: String, edadEstimada: String, origen: String, caracter: String, foto: String, cualidades : [Cualidad]) {
        self.raza = raza
        self.pelaje = pelaje
        self.edadEstimada = edadEstimada
        self.origen = origen
        self.caracter = caracter
        self.foto = foto
        self.cualidades = cualidades
        
    }
    
    init(raza: String, foto: String) {
        self.raza = raza
        self.foto = foto 
    }
    
    init(raza: String, pelaje: String, edadEstimada: String, origen: String, caracter: String) {
        self.raza = raza
        self.pelaje = pelaje
        self.edadEstimada = edadEstimada
        self.origen = origen
        self.caracter = caracter
        
    }
    
}
