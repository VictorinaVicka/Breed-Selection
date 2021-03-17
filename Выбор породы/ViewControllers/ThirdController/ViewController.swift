//
//  ViewController.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 11/12/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewOne: UITableView!
    
    enum Section {
        static let sectionCount: Int = 3
    }
    
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tuningTableView()
        
        navigationItem.hidesBackButton = true
    }
    
    private func tuningTableView() {
        tableViewOne.delegate = self
        tableViewOne.dataSource = self
        tableViewOne.register(UINib(nibName: "ZeroSectionTableViewCell", bundle: nil), forCellReuseIdentifier: "ZeroSectionTableViewCell")
        tableViewOne.register(UINib(nibName: "FerstSectionTableViewCell", bundle: nil), forCellReuseIdentifier: "FerstSectionTableViewCell")
        tableViewOne.register(UINib(nibName: "CollectionsTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionsTableViewCell")
        tableViewOne.tableFooterView = UIView(frame: .zero)
       
    }
}

extension ViewController: UITableViewDelegate {
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        Section.sectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var frequencyOfAnimals: [SpeciesBreed : Int] = [:]
        let animals = responses.map { $0.breed }

        for typesOfAnimal in animals {
            for animal in typesOfAnimal {
                frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
            }
        }

        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted{ $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return UITableViewCell() }
        print(mostFrequencyAnimal)
        
        title = mostFrequencyAnimal.definition.name
        
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionsTableViewCell", for: indexPath) as? CollectionsTableViewCell else { return UITableViewCell() }

            title = mostFrequencyAnimal.definition.name
            cell.images = mostFrequencyAnimal.definition.imageOne

            return cell
        } else if indexPath.section == 1 {
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "ZeroSectionTableViewCell", for: indexPath) as? ZeroSectionTableViewCell else { return UITableViewCell() }
            
            cell.woolLenghtLabel.text = mostFrequencyAnimal.definition.woolLength
            cell.averageHeightLabel.text = mostFrequencyAnimal.definition.height
            cell.averageWeightLabel.text = mostFrequencyAnimal.definition.weidht

            return cell
        } else {
             guard let cell = tableView.dequeueReusableCell(withIdentifier: "FerstSectionTableViewCell", for: indexPath) as? FerstSectionTableViewCell else { return UITableViewCell() }

            cell.keyQualitiesLabel.text = mostFrequencyAnimal.definition.keyQualities
            cell.descriptionLabel.text = mostFrequencyAnimal.definition.description
            cell.fizStrong.text = mostFrequencyAnimal.definition.exerciseStress

            return cell
        }
    }
}
    


           

