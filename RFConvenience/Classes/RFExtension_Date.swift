//
//  RFExtension_Date.swift
//  ShopListDemo
//
//  Created by riceFun on 2019/8/21.
//  Copyright © 2019 riceFun. All rights reserved.
//

import Foundation

public enum kTimeFormat:String{
    case format_default            = "yyyy-MM-dd HH:mm:ss"
    case format_yyMdHm             = "yy-MM-dd HH:mm"
    case format_yyyyMdHm           = "yyyy-MM-dd HH:mm"
    case format_yMd                = "yyyy-MM-dd"
    case format_MdHms              = "MM-dd HH:mm:ss"
    case format_MdHm               = "MM-dd HH:mm"
    case format_Hms                = "HH:mm:ss"
    case format_Hm                 = "HH:mm"
    case format_Md                 = "MM-dd"
    case format_yyMd               = "yy-MM-dd"
    case format_YYMMdd             = "yyyyMMdd"
    case format_yyyyMdHms          = "yyyyMMddHHmmss"
    case format_yyyyMdHmsS         = "yyyy-MM-dd HH:mm:ss.SSS"
    case format_yyyyMMddHHmmssSSS  = "yyyyMMddHHmmssSSS"
    case format_yMdWithSlash       = "yyyy/MM/dd"
    case format_yM                 = "yyyy-MM"
    case format_yMdChangeSeparator = "yyyy.MM.dd"
}

extension Date{
    
}
