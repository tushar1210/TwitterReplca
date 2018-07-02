//
//  HomeController.swift
//  TwitterReplica
//
//  Created by Tushar Singh on 30/06/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import UIKit
class HomeController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .green
   
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    
}
