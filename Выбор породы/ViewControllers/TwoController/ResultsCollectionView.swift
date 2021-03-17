//
//  ResultsCollectionView.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 27/11/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ResultsCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [Answer]()
    
    var resultCollectionViewCell = ResultCollectionViewCell()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        delegate = self
        dataSource = self
        register(ResultCollectionViewCell.self, forCellWithReuseIdentifier: ResultCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: ResultCollectionViewCell.reuseId, for: indexPath) as! ResultCollectionViewCell

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func  updateResult() {
           var frequencyOfAnimals: [SpeciesBreed : Int] = [:]
           let animals = cells.map { $0.breed }

           for typesOfAnimal in animals {
               for animal in typesOfAnimal {
                   if frequencyOfAnimals[animal] != nil {
                       frequencyOfAnimals[animal]! += 1
                   } else {
                       frequencyOfAnimals[animal] = 0
                       frequencyOfAnimals[animal]! += 1
                   }
               }
           }

//           let sortedFrequencyOfAnimald = frequencyOfAnimals.sorted { $0.value > $1.value }
//           guard let mostFrequencyAnimal = sortedFrequencyOfAnimald.first?.key else { return }
       }

   func updateUI(with animal: SpeciesBreed) {
    
        }
     
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

