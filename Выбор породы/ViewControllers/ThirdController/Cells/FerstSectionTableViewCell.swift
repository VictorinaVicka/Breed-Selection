//
//  FerstSectionTableViewCell.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 12/12/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class FerstSectionTableViewCell: UITableViewCell {

    @IBOutlet weak var keyQualitiesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var fizStrong: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
