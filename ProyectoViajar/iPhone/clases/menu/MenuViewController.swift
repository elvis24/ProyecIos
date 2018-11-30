//
//  MenuViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/28/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit
import FirebaseAuth

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func botonCerrar(_ sender: Any) {
        do{
            try Auth.auth().signOut()
        }catch{
            print("Hubo un problema al cerrar la sesion")
        }
        guard(navigationController?.popToRootViewController(animated: true)) != nil
            
            else{
                print("estás desconectado")
                return
        }
       
    }
    
    

}
