//
//  SecondSectionTableViewCell.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 12/12/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class SecondSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var exerciseStressLabel: UILabel!
    @IBOutlet weak var characterLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
