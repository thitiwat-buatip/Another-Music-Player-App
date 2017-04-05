//
//  songTableViewCell.swift
//  Another Music Player App
//
//  Created by Thitiwat on 4/5/2560 BE.
//  Copyright © 2560 thitiwat. All rights reserved.
//

import UIKit

class songTableViewCell: UITableViewCell {

    @IBOutlet weak var song: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
