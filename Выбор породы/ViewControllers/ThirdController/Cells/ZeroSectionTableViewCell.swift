//
//  ZeroSectionTableViewCell.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 16/12/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ZeroSectionTableViewCell: UITableViewCell {
    @IBOutlet weak var woolLenghtLabel: UILabel!
    @IBOutlet weak var averageHeightLabel: UILabel!
    @IBOutlet weak var averageWeightLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let backgraundView = UIView()
        backgraundView.backgroundColor = UIColor.gray
        backgraundView.translatesAutoresizingMaskIntoConstraints=false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
