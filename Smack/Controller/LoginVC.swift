//
//  LoginVC.swift
//  Smack
//
//  Created by ioannis giannakidis on 07/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
//Outlets
    
    @IBOutlet var usernameTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    
    @IBOutlet var spinner: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
            setUpView()

    }

    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.stopAnimating()
        
        guard let email = usernameTxt.text,  usernameTxt.text != "" else {return}
        guard let pass  = passwordTxt.text,  passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DIDCHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                        
                        
                    }
                })
            }
        }

        
    }
    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func CreateAccntBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    func setUpView() {
        spinner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor:smackPurplePlaceholder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor:smackPurplePlaceholder])
    }
}
