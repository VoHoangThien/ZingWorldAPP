//
//  HomeTableViewCell.swift
//  ZingWorldAppVer6
//
//  Created by Thien Vo on 11/20/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgSongCell: UIImageView!
    @IBOutlet weak var lblSong: UILabel!
    @IBOutlet weak var lblSinger: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
