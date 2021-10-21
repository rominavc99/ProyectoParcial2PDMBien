//
//  ViewController.swift
//  proyectoParcial2
//
//  Created by Alumno on 13/10/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
  
    @IBOutlet weak var tvGatos: UITableView!
    var gatos : [Gato] = []
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gatos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaGato") as! CeldaGatoController
        
        celda.lblRaza.text = gatos[indexPath.row].raza
        celda.lblFotoGato.image = UIImage(named: gatos[indexPath.row].foto)
        
        return celda
    }
   
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        self.title = "Gatos"
        gatos.append(Gato(raza: "Abisino", pelaje: "Pelaje: corto y suave", edadEstimada: "Edad Estimada: 10 años", origen: "Origen: Asia", caracter: "Carácte: Activo", foto: "abisino", cualidades: [Cualidad(gatoCualidad: "Amigable", iconCualidad: "amigablee"), Cualidad(gatoCualidad: "Dieta Especial", iconCualidad: "comidaEspecial"), Cualidad(gatoCualidad: "Amoroso", iconCualidad: "amoroso"), Cualidad(gatoCualidad: "Jugueton", iconCualidad: "playfull"), Cualidad(gatoCualidad: "Convive con Perros", iconCualidad: "PerrosGatos")]))
        
        gatos.append(Gato(raza: "Bengala", pelaje: "Pelaje: corto y suave manchado", edadEstimada: "Edad Estimada: 10 años", origen: "Origen: Estados Unidos", caracter: "Carácter: Activo", foto: "bengala", cualidades: [Cualidad(gatoCualidad: "Dieta Especial", iconCualidad: "comidaEspecial"),  Cualidad(gatoCualidad: "Convive con Perros", iconCualidad: "PerrosGatos"), Cualidad(gatoCualidad: "Jugueton", iconCualidad: "playfull"), Cualidad(gatoCualidad: "Cuidados Especiales", iconCualidad: "necesitaCortes"), Cualidad(gatoCualidad: "Amoroso", iconCualidad: "amoroso") ]))
        
        gatos.append(Gato(raza: "Azul Ruso", pelaje: "Pelaje: corto y suave azul grisaceo", edadEstimada: "Edad Estimada: 10 años", origen: "Origen: Europa", caracter: "Carácter: Hogareño", foto: "azulRuso", cualidades: [Cualidad(gatoCualidad: "Dieta Especial", iconCualidad: "comidaEspecial"), Cualidad(gatoCualidad: "Convive con Perros", iconCualidad: "PerrosGatos"), Cualidad(gatoCualidad: "Amoroso", iconCualidad: "amoroso"), Cualidad(gatoCualidad: "Jugueton", iconCualidad: "playfull"), Cualidad(gatoCualidad: "Necesita cepillado", iconCualidad: "Cepillado")]))
        
        gatos.append(Gato(raza: "Bombay", pelaje: "Pelaje: corto y suave negro", edadEstimada: " Edad Estimada: 10 años", origen: "Origen: Estados Unidos", caracter: "Carácter: Juguetón", foto: "bombay", cualidades: [Cualidad(gatoCualidad: "Dieta Especial", iconCualidad: "comidaEspecial"), Cualidad(gatoCualidad: "Convive con Perros", iconCualidad: "PerrosGatos"), Cualidad(gatoCualidad: "Cuidados Especiales", iconCualidad: "necesitaCortes"), Cualidad(gatoCualidad: "Jugueton", iconCualidad: "playfull") ]))
        
        gatos.append(Gato(raza: "Burmilla", pelaje: "Pelaje: corto y suave blanco/gris", edadEstimada: "Edad Estimada: 10 años", origen: "Origen: Gran Bretaña", caracter: "Caracter: Activo", foto: "burmilla", cualidades: [Cualidad(gatoCualidad: "Dieta Especial", iconCualidad: "comidaEspecial"), Cualidad(gatoCualidad: "Convive con Perros", iconCualidad: "PerrosGatos"), Cualidad(gatoCualidad: "Amoroso", iconCualidad: "amoroso"), Cualidad(gatoCualidad: "Jugueton", iconCualidad: "playfull"), Cualidad(gatoCualidad: "Necesita cepillado", iconCualidad: "Cepillado")]))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesGatoController
        let destino2 = segue.destination as! DetallesGatoController
        destino.cualidades = gatos[tvGatos.indexPathForSelectedRow!.row].cualidades
        destino2.gato = gatos[tvGatos.indexPathForSelectedRow!.row]
        
    }



}

