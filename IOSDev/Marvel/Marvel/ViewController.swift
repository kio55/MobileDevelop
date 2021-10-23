//
//  ViewController.swift
//  Marvel
//
//  Created by Kirill on 21.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cellWidth: CGFloat {
        get {
            (3 / 4) * UIScreen.main.bounds.width
        }
    }
    var sectionSpacing: CGFloat {
        get {
            (1 / 8) * UIScreen.main.bounds.width        }
    }
    
    let cellSpacing = (1 / 16) * UIScreen.main.bounds.width
    
    lazy var CollectionView: UICollectionView = {
        let layout = PagingCollectionViewLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: sectionSpacing, bottom: 0, right: sectionSpacing)
        layout.itemSize = CGSize(width: cellWidth, height:  UIScreen.main.bounds.height)
        layout.minimumLineSpacing = cellSpacing
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.decelerationRate = .fast
        collectionView.backgroundColor = .darkGray
        collectionView.contentSize = CGSize(width: cellWidth, height: UIScreen.main.bounds.height)
        return collectionView
    }()
    var heroes:Heroes = Heroes()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.CollectionView.register(UINib(nibName: "HeroCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HeroCollectionViewCell")
        view.addSubview(CollectionView)
        CollectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        CollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        CollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        CollectionView.heightAnchor.constraint(equalToConstant: (6/10) * UIScreen.main.bounds.height).isActive = true
        self.CollectionView.dataSource = self
    }
}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroes.heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCollectionViewCell", for: indexPath) as! HeroCollectionViewCell
        let hero = heroes.heroes[indexPath.item]
        cell.setupCell(hero:hero)
        return cell
    }
    
}

