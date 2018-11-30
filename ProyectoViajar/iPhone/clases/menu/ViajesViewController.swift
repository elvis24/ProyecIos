//
//  ViajesViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/30/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit

class ViajesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tlbViajes: UITableView!
    
    var arrayViajes = [ViajesBE]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayViajes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ViajesTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier,for: indexPath) as! ViajesTableViewCell
        cell.objViajes = self.arrayViajes[indexPath.row] as! ViajesBE
        cell.actualizarData()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let objViaje = self.arrayViajes[indexPath.row] as! ViajesBE
        self.performSegue(withIdentifier: "DetalleViewController", sender: objViaje)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viaje1 = ViajesBE()
        viaje1.viaje_nombre = "Machu Pichu"
        viaje1.viaje_ciudad = "Cusco"
        viaje1.viaje_precio = "100$"
        viaje1.viaje_descripcion = "ciudad de las 7 maravillas"
        viaje1.viaje_imagen = UIImage(named: "machu")!
        
        let viaje2 = ViajesBE()
        viaje2.viaje_nombre = "Mancora"
        viaje2.viaje_ciudad = "Piura"
        viaje2.viaje_precio = "1000$"
        viaje2.viaje_descripcion = "Ricas playas para disfrutar"
        viaje2.viaje_imagen = UIImage(named: "mancora")!
        
        let viaje3 = ViajesBE()
        viaje3.viaje_nombre = "Mancora"
        viaje3.viaje_ciudad = "Piura"
        viaje3.viaje_precio = "1000$"
        viaje3.viaje_descripcion = "Ricas playas para disfrutar"
        viaje3.viaje_imagen = UIImage(named: "mancora")!
        
        let viaje4 = ViajesBE()
        viaje4.viaje_nombre = "Cañon del Colca"
        viaje4.viaje_ciudad = "Arequipa"
        viaje4.viaje_precio = "1000$"
        viaje4.viaje_descripcion = "Bonitas montañas para pasear"
        viaje4.viaje_imagen = UIImage(named: "colca")!
        
        self.arrayViajes.append(viaje1)
        self.arrayViajes.append(viaje2)
        self.arrayViajes.append(viaje3)
        self.arrayViajes.append(viaje4)
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetalleViewController"{
            
            let controller = segue.destination as! DetalleViewController
            controller.objViaje = sender as! ViajesBE
            
        }
    }
    

    

}
