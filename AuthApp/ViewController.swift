//
//  ViewController.swift
//  AuthApp
//
//  Created by Samit Koyom on 3/9/2562 BE.
//  Copyright © 2562 Samit Koyom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLogin(_ sender: Any) {
        // รับค่าจาก textfield
        let myUsername:String = username.text!
        let myPassword:String = password.text!
        
        // เช็คเงื่อนไข if..else
        if(myUsername.isEmpty && myPassword.isEmpty){
            // print("Please enter username and password")
            let alert = UIAlertController(
                title: "Status Login",
                message: "Please enter username and password",
                preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }else{
            if(myUsername == "user" && myPassword == "1234"){
                //print("Login Success")
                let alert = UIAlertController(
                    title: "Status Login",
                    message: "Login Success",
                    preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: {
                    action in
                    //print("Yay! You brought your towel!")
                    // action to HomeController
                    self.performSegue(withIdentifier: "homeSegue", sender: nil)
                }))
                alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }else{
                // print("Login Fail!")
                let alert = UIAlertController(
                    title: "Status Login",
                    message: "Login Fail!",
                    preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
        }
    }
    
     func prepareForSegue(segue:UIStoryboardSegue, sender: AnyObject?){
        if(segue.identifier=="homeSegue"){
            
        }
    }
    
}

