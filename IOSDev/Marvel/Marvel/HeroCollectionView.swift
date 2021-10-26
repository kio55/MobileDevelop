//
//  HeroCollectionView.swift
//  Marvel
//
//  Created by Kirill on 25.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class HeroCollectionView: UICollectionView, UICollectionViewDelegate,
UICollectionViewDataSource {
    private let cellWidth = (3 / 4) * UIScreen.main.bounds.width
    private let sectionSpacing = (1 / 8) * UIScreen.main.bounds.width
    private let cellSpacing = (1 / 16) * UIScreen.main.bounds.width
    
    private let cells = Heroes().heroes
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: HeroCollectionViewCell.reuseId, for: indexPath) as! HeroCollectionViewCell
        let hero = cells[indexPath.item]
        cell.setupCell(hero: hero)
        return cell
    }
    
    init() {
        let layout = PagingCollectionViewLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: sectionSpacing, bottom: 0, right: sectionSpacing)
        layout.itemSize = CGSize(width: cellWidth, height:  UIScreen.main.bounds.height)
        layout.minimumLineSpacing = cellSpacing
        
        super.init(frame: .zero, collectionViewLayout: layout)
        
        showsHorizontalScrollIndicator = false
        decelerationRate = .fast
        backgroundColor = .darkGray
        contentSize = CGSize(width: cellWidth, height: cellWidth)
        delegate = self
        dataSource = self
        register(HeroCollectionViewCell.self, forCellWithReuseIdentifier: HeroCollectionViewCell.reuseId)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
