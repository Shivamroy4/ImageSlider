//
//  HomeScreenViewController.swift
//  ImageSlider
//
//  Created by Shivam Roy on 13/03/16.
//  Copyright © 2016 ShivamRoy. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {

    
    
    private struct StoryBoard
    {
        static let CellIdentifier = "animalcell"
    }
    
    
    private var animals = Animals.CreateAnimals()
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
    
        return.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
}

extension HomeScreenViewController : UICollectionViewDataSource
{
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
    return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return animals.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
    let cell = collectionView.dequeueReusableCellWithReuseIdentifier(StoryBoard.CellIdentifier, forIndexPath: indexPath) as! AnimalsCellControllerCollectionViewCell
     
        cell.animals = self.animals[indexPath.item]
        
    
    return cell
}

}