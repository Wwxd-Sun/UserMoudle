//
//  BellaCore.swift
//  Bella
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation


/// 本模块的名称， 本模块的storyboard 名称必须 与模块名称相同 ,已经用于静态资源的加载回用到
let modularName = "Bella"

public  class  BellaCore {
    
    public static var sharedInstance :  BellaCore {
        struct Static {
            static let instance :  BellaCore =  BellaCore()
        }
        return Static.instance
    }
    
    ///供其他模块使用
    public static var bundle:Bundle?{
        get{
            guard let bundleURL = Bundle(for: BellaCore.self).url(forResource: modularName, withExtension: "bundle") else {
                return nil
            }
            guard let bundle = Bundle(url: bundleURL) else {
                return nil
            }
            return bundle
        }
    }
}

