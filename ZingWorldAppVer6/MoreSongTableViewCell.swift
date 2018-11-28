//
//  MoreSongTableViewCell.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/26/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class MoreSongTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblSingerMore: UILabel!
    @IBOutlet weak var lblSongMore: UILabel!
    @IBOutlet weak var lblNumberMore: UILabel!
    @IBOutlet weak var imgMore: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
