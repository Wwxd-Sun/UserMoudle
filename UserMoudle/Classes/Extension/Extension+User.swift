//
//  Extension+User.swift
//  Bella
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation
import BaseMoudle

public protocol loginData {
    var user : User_Model? { get }
}

public extension loginData {
    var user: User_Model? {
        return Global.shared.user
    }
}

extension Base_Vc : loginData {
    
}
