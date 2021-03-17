//
//  IntroductionViewController.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 18/11/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class IntroductionViewController: UIViewController {
    @IBOutlet weak var nameButton: UIButton!
    
    override func viewDidLoad() {
           super.viewDidLoad()
        nameButton.layer.masksToBounds = true
        nameButton.layer.cornerRadius = 8.0
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {}
}
