//
//  ViajesViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/30/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViajesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tlbViajes: UITableView!
    
    var ref: DatabaseReference!
    
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
        
        self.ref = Database.database().reference()
        
        let query = self.ref.child("viajes")
      
            query.observe(DataEventType.value, with: { dataSnapshot in
                
                if dataSnapshot.childrenCount > 0 {
                    
                    //clearing the list
                    self.arrayViajes.removeAll()
                for viajeSnapshot in dataSnapshot.children.allObjects as! [DataSnapshot] {
                    let viajeObject = viajeSnapshot.value as? [String: AnyObject]
                    
                    let current_viaje = ViajesBE()
                    
                    current_viaje.viaje_nombre = viajeSnapshot.key
                    current_viaje.viaje_ciudad = viajeObject?["ciudad"] as! String
                    current_viaje.viaje_descripcion = viajeObject?["descripcion"] as! String
                    current_viaje.viaje_precio = viajeObject?["precio"] as! Double
                    let current_image = viajeObject?["imagen"] as! String
                    current_viaje.viaje_imagen = UIImage(named: current_image)!
                    current_viaje.viaje_longitud = viajeObject?["longitud"] as! Double
                    current_viaje.viaje_latitud = viajeObject?["latitud"] as! Double
                    
                    self.arrayViajes.append(current_viaje)
                }
                    self.tlbViajes.reloadData()
                }
            })
        

        
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
