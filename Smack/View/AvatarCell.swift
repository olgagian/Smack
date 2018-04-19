//
//  AvatarCell.swift
//  Smack
//
//  Created by ioannis giannakidis on 17/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit


enum AvatarType {
    case dark
    case  light
}
class AvatarCell: UICollectionViewCell {
    
    @IBOutlet var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setpUpView()
    }
    func configureCell(index:Int, type: AvatarType) {
        if type == AvatarType.dark {
            avatarImg.image = UIImage(named: "dark\(index)")
            self.layer.backgroundColor = UIColor.lightGray.cgColor
        }else {
            avatarImg.image = UIImage(named: "light\(index)")
            self.layer.backgroundColor = UIColor.gray.cgColor
            
        }
    }
    func setpUpView() {
        self.layer.backgroundColor=UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
}
