//
//  HomeController.swift
//  AuthApp
//
//  Created by Samit Koyom on 4/9/2562 BE.
//  Copyright © 2562 Samit Koyom. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var showUsername: UILabel!
    var getUsername:String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showUsername.text = getUsername
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
