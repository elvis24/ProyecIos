//
//  CSMUserAlters.swift
//  CoreSoleraMobile
//
//  Created by Kenyi Rodriguez on 15/03/18.
//

import UIKit


public extension UIViewController{
    
    public func showActionSheet(withTitle title: String, withMessage message : String, withButtons buttons: [String], withCancelButton cancelButton: String, withSelectionButtonIndex completion: @escaping(_ btnIndex : Int) -> Void, withActionCancel cancel: (() -> ())?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        for buttonTitle in buttons {
            
            let actionBtn = UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
            
                completion(buttons.index(of: buttonTitle)!)
            })
            
            alertController.addAction(actionBtn)
        }
        
        let accionBtn = UIAlertAction(title: cancelButton, style: .cancel, handler: { (action) in
            cancel?()
        })
        
        alertController.addAction(accionBtn)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    public func showAltert(withTitle title: String, withMessage message : String, withAcceptButton accept: String, withCompletion completion : (() -> Void)?){
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: accept, style: .cancel) { (action : UIAlertAction) in
            DispatchQueue.main.async{
                completion?()
            }
        }
        
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    public func showAltert(withTitle title: String, withMessage message : String, withButtons buttons: [String], withCancelButton cancelButton: String, withSelectionButtonIndex completion: @escaping(_ btnIndex : Int) -> Void, withActionCancel cancel: (() -> ())?) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        for buttonTitle in buttons {
            
            let actionBtn = UIAlertAction(title: buttonTitle, style: .default, handler: { (action) in
                
                DispatchQueue.main.async{
                    completion(buttons.index(of: buttonTitle)!)
                }
            })
            
            alertController.addAction(actionBtn)
        }
        
        let accionBtn = UIAlertAction(title: cancelButton, style: .cancel, handler: { (action) in
            
            DispatchQueue.main.async{
                cancel?()
            }
            
        })
        
        alertController.addAction(accionBtn)
        self.present(alertController, animated: true, completion: nil)
    }
    
}
