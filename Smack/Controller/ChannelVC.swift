//
//  ChannelVC.swift
//  Smack
//
//  Created by ioannis giannakidis on 05/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        


    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
        
        
    }
    
}
