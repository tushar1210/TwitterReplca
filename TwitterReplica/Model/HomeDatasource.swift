//
//  HomeDatasource.swift
//  TwitterReplica
//
//  Created by Tushar Singh on 02/07/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import LBTAComponents


class HomeDatasource:Datasource {
    
    let words = ["Tushar Singh","Tushar Singh","Tushar Singh","Tushar Singh"]
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return[UserFooter.self]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
}


