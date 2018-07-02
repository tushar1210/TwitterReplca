//
//  HomeController.swift
//  TwitterReplica
//
//  Created by Tushar Singh on 30/06/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import UIKit
class WordCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .yellow
        setupViews()
    }
    let wordLabel : UILabel = {
        let label = UILabel()
        label.text = "asas"
        label.translatesAutoresizingMaskIntoConstraints=false
        return label
    }()
    
    func setupViews(){
        addSubview(wordLabel)
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive=true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive=true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class HomeController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
     let cellID="celllID"
     let headerId = "headerID"
     let footerID = "footerID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellID)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerId)
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerID)
    }
    //MARK: - CollectionView Properties
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
       // cell.backgroundColor = .blue
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    //MARK: - Header Properties
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionElementKindSectionHeader{
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
            header.backgroundColor = .green
            return header
        }else{
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerID, for: indexPath)
            footer.backgroundColor = .blue 
            return footer
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    //MARK : Footer Properties

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
    
    
}
