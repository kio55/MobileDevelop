//
//  ViewController.swift
//  Marvel
//
//  Created by Kirill on 21.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let cellWidth = (3 / 4) * UIScreen.main.bounds.width
    private let sectionSpacing = (1 / 8) * UIScreen.main.bounds.width
    private let cellSpacing = (1 / 16) * UIScreen.main.bounds.width
    
    lazy var collectionView: UICollectionView = {
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
        if let logo: UIImage = UIImage(named: "logo") {
            let logoView = UIImageView(image: logo)
            logoView.frame = CGRect(x: 0,y:  30, width:  250, height: 70)
            logoView.center.x = self.view.center.x
            logoView.layoutMargins.top = 30
            self.view.addSubview(logoView)
        }
        let text: UILabel = UILabel();
        text.text = "Choose your hero!"
        text.font = UIFont(name: "HelveticaNeue-Bold", size: 27)
        text.frame = CGRect(x: 0,y:  80, width:  250, height: 70)
        text.textColor = .white
        text.center.x = self.view.center.x
        self.view.addSubview(text)
        
        super.viewDidLoad()
        self.collectionView.register(UINib(nibName: "HeroCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HeroCollectionViewCell")
        view.addSubview(collectionView)
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: (6/10) * UIScreen.main.bounds.height).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        self.collectionView.dataSource = self
    }
}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroes.heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HeroCollectionViewCell", for: indexPath) as! HeroCollectionViewCell
        let hero = heroes.heroes[indexPath.item]
        cell.setupCell(hero: hero)
        return cell
    }
    
}

