//
//  Animals.swift
//  ImageSlider
//
//  Created by Shivam Roy on 13/03/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import Foundation
import UIKit

class Animals
{
    var title = ""
    var image: UIImage!
    
    init(title: String, image: UIImage)
    {
        self.title = title
        self.image = image
    }
    
    static func CreateAnimals() -> [Animals]
    {
        return [
            Animals(title: "Lion 🦁",image: UIImage(named: "lion")!),
                 Animals(title: "Tiger 🐯",image: UIImage(named: "tiger")!),
                     Animals(title: "Leopard 🐆",image: UIImage(named: "leopard")!),
                         Animals(title: "Wolf 🐺",image: UIImage(named: "wolf")!),
                
        ]
    }
}

