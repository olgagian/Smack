//
//  CircleImage.swift
//  Smack
//
//  Created by ioannis giannakidis on 23/04/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

   
    override func awakeFromNib() {
            setupView()
        
        
    }
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self .clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
