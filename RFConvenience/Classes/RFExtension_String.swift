//
//  RFExtension_String.swift
//  ShopListDemo
//
//  Created by riceFun on 2019/8/21.
//  Copyright © 2019 riceFun. All rights reserved.
//

import Foundation
import UIKit
import CommonCrypto

extension String {
    var md5 : String{
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        //        result.deinitialize()
        result.deinitialize(count: 1)
        return String(format: hash as String)
    }
    
    static func nowTimeWithFormat(format:String) -> String {
        let dateFormatter:DateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let K_Date_Location = "K_Date_Location"
        dateFormatter.locale = Locale(identifier: K_Date_Location)
        return  dateFormatter.string(from: Date())
    }
    
    /// 获取一段字符串的宽度
    ///
    /// - Parameter fontSize: 字体大小
    /// - Returns: 字符串宽度
    func width(fontSize:CGFloat) -> CGFloat {
        return self.size(withAttributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: fontSize)]).width
    }
    
    /// 判断文件是否存在
    ///
    /// - Returns: 存在true 不存在false
    func fileExist() -> Bool {
        return FileManager.default.fileExists(atPath: self as String)
    }
    
    /// 创建文件夹
    func fileCreateDirectory() {
        if #available(iOS 9.0, *) {
            try! FileManager.default.createDirectory(at: NSURL(fileURLWithPath:self , isDirectory: true, relativeTo: nil) as URL, withIntermediateDirectories: true, attributes: nil)
        } else {
            // Fallback on earlier versions
        }
    }
    
    /// 拼接路径
    ///
    /// - Parameter byAppendingPaths: 要拼接的文件名
    /// - Returns: 拼接后的路径
    func fileByAppendingPaths(byAppendingPaths: String) -> String {
        return (self as NSString).strings(byAppendingPaths: [byAppendingPaths]).first!
    }
}
