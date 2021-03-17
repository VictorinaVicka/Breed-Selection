//
//  CollectionsTableViewCell.swift
//  WhichDogSuitsYouTest
//
//  Created by Виктория Воробьева on 11/12/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class CollectionsTableViewCell: UITableViewCell {
    
    enum Proportions {
        static let padding: CGFloat = 10.0
        static let cellWidth: CGFloat = 190.0
        static let cellHeight: CGFloat = 200.0
        static let minimumLineSpacing: CGFloat = 5.0
        static let cellName: String = "CollectionViewCell"
    }

    @IBOutlet weak var collectionsView: UICollectionView!
    
    var images: [UIImage]? {
        didSet {
            collectionsView.reloadData()
        }
    }
    
    var elements: [UIImage] {
        return images ?? []
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tuningCollectionView()
    }
    
    private func tuningCollectionView() {
        selectionStyle = .none
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: Proportions.padding, bottom: 0, right: Proportions.padding)
        flowLayout.itemSize = CGSize(width:Proportions.cellWidth, height: Proportions.cellHeight)
        flowLayout.scrollDirection = .horizontal
        flowLayout.minimumLineSpacing = Proportions.minimumLineSpacing
        
        collectionsView.collectionViewLayout = flowLayout
        collectionsView.delegate = self
        collectionsView.dataSource = self
        collectionsView.register(UINib(nibName: Proportions.cellName, bundle: nil), forCellWithReuseIdentifier: Proportions.cellName)
//        collectionsView.backgroundColor = #colorLiteral(red: 1, green: 0.9989659122, blue: 0.9342480914, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension CollectionsTableViewCell: UICollectionViewDelegate {
    
}

extension CollectionsTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        elements.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Proportions.cellName, for: indexPath) as? CollectionViewCell else { return CollectionViewCell() }
        
        cell.imageView.image = elements[indexPath.item]
        
        return cell
    }
    
    
}


