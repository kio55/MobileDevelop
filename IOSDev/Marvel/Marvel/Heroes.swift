//
//  Heroes.swift
//  Marvel
//
//  Created by Kirill on 22.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import Foundation
import UIKit

struct Hero {
    var name:String
    var image:UIImage
}

class Heroes {
    var heroes = [Hero]()
    
    init() {
        setup()
    }
    
    func setup(){
        let spider = Hero(name:"Spider man", image: UIImage(named: "spider")!)
        let venom = Hero(name:"Venom", image:
            UIImage(named:"venom")!)
        let doctor = Hero(name:"Doctor strange", image: UIImage(named:"doctor")!)
        let thanos = Hero(name:"Thanos", image: UIImage(named:"thanos")!)
        self.heroes = [spider, venom, doctor, thanos]
    }
}

