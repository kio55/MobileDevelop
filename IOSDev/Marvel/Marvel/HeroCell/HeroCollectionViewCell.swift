//
//  HeroCollectionViewCell.swift
//  Marvel
//
//  Created by Kirill on 22.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class HeroCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var heroImage: UIImageView!
    
    @IBOutlet weak var heroName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(hero:Hero) {
        self.heroImage.image = hero.image
        self.heroName.text = hero.name
    }

}
