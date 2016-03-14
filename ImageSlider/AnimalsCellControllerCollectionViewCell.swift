//
//  AnimalsCellControllerCollectionViewCell.swift
//  ImageSlider
//
//  Created by Shivam Roy on 13/03/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import UIKit

class AnimalsCellControllerCollectionViewCell: UICollectionViewCell {
    
    
    
    var animals: Animals!
        {
        didSet
            {
                UpdateUI()
            }
            
    }
    
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    
    private func UpdateUI()
    {
     title?.text! = animals.title
        
        image?.image! = animals.image
        
    }
    
}
