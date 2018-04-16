//
//  AvatarCell.swift
//  Smack
//
//  Created by ioannis giannakidis on 17/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setpUpView()
    }
    
    func setpUpView() {
        self.layer.backgroundColor=UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
}
