//
//  ViewController.swift
//  Another Music Player App
//
//  Created by thitiwat on 22/3/60.
//  Copyright © พ.ศ. 2560 thitiwat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passText: UITextField!
    @IBOutlet weak var randomPasscode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let ranNumber = String(arc4random_uniform(9999)+1)
        randomPasscode.text = ranNumber
        
        UserDefaults.standard.set(ranNumber, forKey: "passcode")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        
        if passText.text == randomPasscode.text {
            
            self.dismiss(animated: true, completion: nil)
            performSegue(withIdentifier: "login", sender: nil)
            
        }
        
    }

}

