//
//  LogViewController.swift
//  ProyectoViajar
//
//  Created by Elvis Villaca on 11/28/18.
//  Copyright © 2018 elvis villaca. All rights reserved.
//

import UIKit
import FirebaseAuth

class LogViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    @IBOutlet weak var btnIngresar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func logButton(_ sender: Any) {
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtContraseña.text!) { (user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Exito")
                self.performSegue(withIdentifier: "goMenu", sender: self)
            }
        }
        
        
    }
    

}
