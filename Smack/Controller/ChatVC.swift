//
//  ChatVC.swift
//  Smack
//
//  Created by ioannis giannakidis on 05/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
//Outlets
    
    @IBOutlet var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        if AuthService.instance.isLoggedin {
            AuthService.instance.findUserByEmail { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DIDCHANGE, object: nil)
            }
        }
    }

  
}
