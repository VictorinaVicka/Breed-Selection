//
//  ResuViewController.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 27/11/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ResuViewController: UIViewController {
    
    var responses = ResultsCollectionView()
    
    private var resultsCollectionView = ResultsCollectionView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(resultsCollectionView)
        
        resultsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        resultsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        resultsCollectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        resultsCollectionView.heightAnchor.constraint(equalToConstant: 310).isActive = true
        
        resultsCollectionView.updateResult()
      
    }
    
    

}
