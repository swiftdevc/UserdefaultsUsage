//
//  ShowViewController.swift
//  UserdefaultsUsage
//
//  Created by Hasan PC on 3.08.2023.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var passLabel: UILabel!
    var recievedPass = ""
    var userdefaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        if recievedPass == "" {
            passLabel.text = userdefaults.string(forKey: "pass")
        }else{
            passLabel.text = recievedPass
            userdefaults.set(recievedPass, forKey: "pass")
        }

        
    
    }
    


}
