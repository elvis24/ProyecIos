//
//  RegistrarViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/28/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegistrarViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    
    @IBOutlet weak var txtCorreo: UITextField!
    
    @IBOutlet weak var txtContraseña: UITextField!
    
    @IBOutlet weak var btnRegistrar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BotonRegistrar(_ sender: Any) {
        Auth.auth().createUser(withEmail: txtCorreo.text!, password: txtContraseña.text!) { (user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Exito")
                self.performSegue(withIdentifier: "goMenu", sender: self)
            }
        }
    }
    
    
}
