//
//  HomeTableViewCell.swift
//  Expandable TableView
//
//  Created by TeamLeaseRegtech on 19/06/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
