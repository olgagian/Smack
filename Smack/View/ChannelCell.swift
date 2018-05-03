//
//  ChannelCell.swift
//  Smack
//
//  Created by ioannis giannakidis on 03/05/2018.
//  Copyright © 2018 ioannis giannakidis. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {
//Outlets
    
    @IBOutlet var ChannelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
            
        }else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }
        
        
    }
    func configureCell(channel:Channel) {
        let title = channel.channelTitle ?? ""
        ChannelName.text = "#\(title)"
    }

}
