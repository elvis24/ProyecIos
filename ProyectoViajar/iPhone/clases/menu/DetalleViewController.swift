//
//  DetalleViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/30/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

    
    @IBOutlet weak var imgViaje: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblCiudad: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    
    var objViaje = ViajesBE()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lblNombre.text = objViaje.viaje_nombre
        self.lblCiudad.text = objViaje.viaje_ciudad
        self.lblPrecio.text = String(objViaje.viaje_precio)
        self.lblDescripcion.text = objViaje.viaje_descripcion
        self.imgViaje.image = objViaje.viaje_imagen
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LocationViewController"{
            let controller = segue.destination as! LocationViewController
            controller.objMap = self.objViaje
        }
    }
    
    


   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetalleViewController"{
            
            let controller = segue.destination as! DetalleViewController
            controller.objViaje = sender as! ViajesBE
            
        }*/

}
