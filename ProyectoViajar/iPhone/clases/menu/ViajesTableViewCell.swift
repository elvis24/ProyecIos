//
//  ViajesTableViewCell.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/30/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit

class ViajesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgViaje: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblCiudad: UILabel!
    
    var objViajes = ViajesBE()
    
    func actualizarData() -> Void{
        self.lblPrecio.text = objViajes.viaje_precio
        self.lblNombre.text = objViajes.viaje_nombre
        self.lblCiudad.text = objViajes.viaje_ciudad
        self.imgViaje.image = objViajes.viaje_imagen
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
