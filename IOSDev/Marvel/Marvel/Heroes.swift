//
//  Heroes.swift
//  Marvel
//
//  Created by Kirill on 22.10.2021.
//  Copyright © 2021 Kirill. All rights reserved.
//

import UIKit

struct Hero {
    let name: String
    let image: UIImage
}

class Heroes {
    var heroes = [Hero]()
    
    init() {
        setup()
    }
    func setup(){
        if let spiderImage = UIImage(named: "spider") {
            let spider = Hero(name:"Spider man", image: spiderImage)
            self.heroes.append(spider)
        }
        if let venomImage = UIImage(named: "venom") {
            let venom = Hero(name:"Venom", image: venomImage)
            self.heroes.append(venom)
        }
        if let doctorImage = UIImage(named: "doctor") {
            let doctor = Hero(name:"Doctor strange", image: doctorImage)
            self.heroes.append(doctor)
        }
        if let thanosImage = UIImage(named: "thanos") {
            let thanos = Hero(name:"Thanos", image: thanosImage)
            self.heroes.append(thanos)
        }
    }
}
