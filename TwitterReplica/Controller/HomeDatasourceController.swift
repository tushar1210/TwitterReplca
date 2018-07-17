//
//  HomeDatasourceController.swift
//  TwitterReplica
//
//  Created by Tushar Singh on 02/07/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import LBTAComponents




class HomeDatasourceController: DatasourceController {
    let homeDatasource = HomeDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datasource = homeDatasource

    }

    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }










}
