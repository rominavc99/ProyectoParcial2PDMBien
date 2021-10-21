//
//  DetallesGatoController.swift
//  proyectoParcial2
//
//  Created by Blanca Castellanos  on 14/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesGatoController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var tvCualidades: UITableView!
    var cualidades : [Cualidad] = []
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        return 113
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cualidades.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celdaDetalles = tableView.dequeueReusableCell(withIdentifier: "CeldaDetallesGato") as! CeldaDetallesGatoController
        
        celdaDetalles.lblCualidad.text = cualidades[indexPath.row].gatoCualidad
        celdaDetalles.fotoCualidad.image = UIImage(named: cualidades[indexPath.row].iconCualidad!)
        
        return celdaDetalles
    }
    

    @IBOutlet weak var lblOrigen: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblCaracter: UILabel!
    @IBOutlet weak var lblPelaje: UILabel!
    @IBOutlet weak var lblFotoGatos: UIImageView!
    
    var gato : Gato = Gato(raza: "", pelaje: "", edadEstimada: "", origen: "", caracter: "")
    
    override func viewDidLoad() {
        
        self.title = gato.raza
        
        
        lblEdad.text = gato.edadEstimada
        lblCaracter.text = gato.caracter
        lblPelaje.text = gato.pelaje
        lblFotoGatos.image = UIImage(named: gato.foto)
        
        
      
    }
}

