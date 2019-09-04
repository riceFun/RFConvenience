//
//  RFExtension_NSObject.swift
//  ShopListDemo
//
//  Created by riceFun on 2019/8/21.
//  Copyright © 2019 riceFun. All rights reserved.
//

import Foundation

extension NSObject{
    
    /// 模型转JSONString
    var modelToJSONString : String {
        let jsonData = try? JSONSerialization.data(withJSONObject: self, options: [])
        let jsonStr = String(data: jsonData!, encoding: String.Encoding.utf8)
        return jsonStr!
    }
}
