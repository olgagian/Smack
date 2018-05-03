//
//  ChannelVC.swift
//  Smack
//
//  Created by ioannis giannakidis on 05/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var loginBtn: UIButton!
    
    @IBOutlet var userImg: CircleImage!
    @IBAction func prepareforUnwind(segue:UIStoryboardSegue){}
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_notif:)), name: NOTIF_USER_DATA_DIDCHANGE, object: nil)
        
        
 

    }
    override func viewDidAppear(_ animated: Bool) {
        setupUserInfo()
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        if AuthService.instance.isLoggedin {
            //show profile page
            let profile = ProfileVC()
            profile.modalPresentationStyle = .custom
            present(profile, animated: true, completion: nil)
            
        }else {
            performSegue(withIdentifier: TO_LOGIN, sender: nil)

        }
        
        
        
        
    }
    @objc func userDataDidChange(_notif:Notification) {
       setupUserInfo()
    }
    
    func setupUserInfo() {
        if AuthService.instance.isLoggedin {
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        }else {
            loginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named:"menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
            
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "channellCell", for: indexPath) as? ChannelCell {
            let channel = MessageService.instance.channels[indexPath.row]
            cell.configureCell(channel: channel)
            return cell
        }else {
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MessageService.instance.channels.count
    }
}
