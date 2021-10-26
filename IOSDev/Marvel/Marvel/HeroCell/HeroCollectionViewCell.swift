//
//  HeroCollectionViewCell.swift
//  Marvel
//
//  Created by Kirill on 22.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    static let reuseId = "heroCell"
    
    lazy var heroImage: UIImageView = {
        var heroImage = UIImageView(image: nil)
        heroImage.translatesAutoresizingMaskIntoConstraints = false
        heroImage.contentMode = .scaleAspectFit
        return heroImage
    }()
    
    lazy var heroName: UILabel = {
        var heroName = UILabel()
        heroName.translatesAutoresizingMaskIntoConstraints = false
        heroName.text = ""
        heroName.textColor = .white
        heroName.font = UIFont(name: "HelveticaNeue-Bold", size: 27)
        return heroName
    }()
    
    func setupCell(hero:Hero) {
        self.heroImage.image = hero.image
        self.heroName.text = hero.name
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImage)
        addSubview(heroName)
        heroImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        heroImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        heroImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        heroImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        heroName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
        heroName.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        heroName.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        heroName.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
