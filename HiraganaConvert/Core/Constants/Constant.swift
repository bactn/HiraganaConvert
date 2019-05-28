//
//  Constant.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation

public let appId = "9d76053636110d0f3d54bf5e8e2f3bb5856846f968c6e426ebf4e228789aaa39"
public let homeURL = "https://labs.goo.ne.jp/api/hiragana"
public let outputType = "hiragana"
public let requestId = "record003"
public let textViewPlaceHolder = "Enter text to here..."
public let appName = "ひらがな"
public let returnKeyboardText = "\n"

enum EnumErrorCode {
    case notConnectedToInternet
    case unknow
    
    var message: String {
        switch self {
        case .notConnectedToInternet: return "Unable to connect server"
        case .unknow: return "Check input value"
        }
    }
}
