//
//  ViewController.swift
//  CollectionViewHorizontal
//
//  Created by Tiala Rocha on 19/03/2019.
//  Copyright © 2019 Tiala Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var arrayImage = [#imageLiteral(resourceName: "abacaxi"), #imageLiteral(resourceName: "maca"), #imageLiteral(resourceName: "melancia"), #imageLiteral(resourceName: "banana"), #imageLiteral(resourceName: "morango"), #imageLiteral(resourceName: "limao")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imageFrut.image = arrayImage[indexPath.row]
        
        return cell
    }
    
    
}

