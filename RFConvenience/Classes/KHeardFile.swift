//
//  KHeardFile.swift
//  LBFM-Swift
//
//  Created by riceFun on 2019/7/25.
//  Copyright © 2019 刘博. All rights reserved.
//

import UIKit

//@_exported import SnapKit
//@_exported import HandyJSON
//@_exported import SwiftyJSON
//@_exported import Kingfisher

public var K_ScreenHeight = UIScreen.main.bounds.size.height
public let K_ScreenWidth = UIScreen.main.bounds.size.width
public let K_StatusBarHeight = UIApplication.shared.statusBarFrame.size.height
public let K_NaviBarHeight:CGFloat = UIDevice.kIsIphoneXSeries() ? 88 : 64
public let K_TabBarHeight:CGFloat = UIDevice.kIsIphoneXSeries() ? 83 : 49//49 + 34
public let K_TabbarExtraHeight:CGFloat = UIDevice.kIsIphoneXSeries() ? 34 : 0
public let K_UserDefaults = UserDefaults.standard
public let K_Notife = NotificationCenter.default
public let K_AppVersion = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")
public let K_UUID =  UIDevice.current.identifierForVendor?.uuidString.replacingOccurrences(of: "-", with: "")
public let K_Date_Location = "zh_CN"

public let K_ButtonColor = UIColor.init(red: 242/255.0, green: 77/255.0, blue: 51/255.0, alpha: 1)
public let K_ThemeColor = UIColor.init(red: 218/255, green: 75/255, blue: 35/255, alpha: 1)
public let K_MainBgColor = UIColor.init(red: 240/255.0, green: 241/255.0, blue: 244/255.0, alpha: 1)
public let K_TitleColor = UIColor.black
public let K_SubTitleColor = UIColor.gray

//file Path
public struct K_DirectoryPath {
    public static let Path_Documents = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true).last
    public static let Path_Library = NSSearchPathForDirectoriesInDomains(.libraryDirectory,.userDomainMask, true).last
    public static let Path_Tmp = NSTemporaryDirectory()
    public static let Path_Caches = NSSearchPathForDirectoriesInDomains(.cachesDirectory,.userDomainMask, true).last
}

public func K_RGBCOLOR(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor{
    return UIColor(red:  r/255.0, green: g/255.0, blue:  b/255.0, alpha: 1)
}

public func K_RGBACOLOR(r:CGFloat,g:CGFloat,b:CGFloat, a:CGFloat) -> UIColor{
    return UIColor(red:  r/255.0, green: g/255.0, blue:  b/255.0, alpha: a)
}

//RGB 16进制转换
public func K_RGBHEXCOLOR(rgbValue: UInt) -> UIColor {
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

