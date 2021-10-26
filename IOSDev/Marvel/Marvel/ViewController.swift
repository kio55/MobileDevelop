//
//  ViewController.swift
//  Marvel
//
//  Created by Kirill on 21.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let collectionView = HeroCollectionView()
    var heroes:Heroes = Heroes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        self.view.addSubview(collectionView)
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: (6/10) * UIScreen.main.bounds.height).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 10).isActive = true
    }
}
