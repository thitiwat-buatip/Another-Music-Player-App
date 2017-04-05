//
//  ProfileViewController.swift
//  Another Music Player App
//
//  Created by Thitiwat on 4/5/2560 BE.
//  Copyright © 2560 thitiwat. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var passCode: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let passcode =  UserDefaults.standard.object(forKey: "passcode")
        
        passCode.text = passcode as! String?
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
