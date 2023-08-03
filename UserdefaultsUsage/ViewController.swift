//
//  ViewController.swift
//  UserdefaultsUsage
//
//  Created by Hasan PC on 3.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passTextField: UITextField!
    var selectedPass = ""
    var userdefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func saveButton(_ sender: Any) {
        selectedPass = passTextField.text!
        userdefaults.set(selectedPass, forKey: "pass")
        performSegue(withIdentifier: "toShowVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toShowVC" {
            let destinationCV = segue.destination as! ShowViewController
            destinationCV.recievedPass = selectedPass
        }
    }
    
    
    
}

