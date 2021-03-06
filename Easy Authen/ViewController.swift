//
//  ViewController.swift
//  Easy Authen
//
//  Created by Student12 on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    // Implicit
    var strUser: String?
    var strPassword: String?
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    
    @IBAction func loginButtom(_ sender: Any) {
        
        messageLabel.text = " "
        
        
        // Get Value From TextField
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        // show User and Pass on Console
        print("User ==> \(strUser!)")
        print("Password ==> \(strPassword!)")
        
        // Find Count String
        let intUser  = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        
        
        print("intUser ==? \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        // Call checkspace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!) {
            print("No Space")
            showMessage(strMessage: "")
        }  else {
            print("Have Space")
            showMessage(strMessage: "Please Fill Every Blank")
        }
        
        
        
        
        
        
    }  // loginButton
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }  // Main Method
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
        
    }
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            // No Space
            result = false
        }
        
        
        return result
        
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }  // didRecive
    
}
