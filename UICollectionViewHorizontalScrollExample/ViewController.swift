//
//  ViewController.swift
//  UICollectionViewHorizontalScrollExample
//
//  Created by 장효원 on 2021/12/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    var data: [String] = ["test", "test2", "test3", "test4", "test5", "test6", "test7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set Delegate
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        
        //Set property value
        collectionView.isPagingEnabled = true
        collectionView.alwaysBounceHorizontal = true
        
        //Set FlowLayout
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 100, height: 100)
        
        collectionView.collectionViewLayout = layout
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
        
        cell.backgroundColor = .red
        
        return cell
    }
}

