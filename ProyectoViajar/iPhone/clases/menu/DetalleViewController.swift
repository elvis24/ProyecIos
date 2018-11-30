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
        self.lblPrecio.text = objViaje.viaje_precio
        self.lblDescripcion.text = objViaje.viaje_descripcion
        self.imgViaje.image = objViaje.viaje_imagen
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
