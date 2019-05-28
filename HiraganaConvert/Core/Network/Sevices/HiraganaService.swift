//
//  HiraganaService.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation
struct HiraganaService: Requestable {
    func getHiragana(_ input: String, completionHandler: @escaping(_ output: String?, _ errorEnum: EnumErrorCode?) -> Void) {
        let hiraganaRequest = HiraganaRequest(with: input)
        request(hiraganaRequest).responseJSON(completionHandler: { (response) in
            print("Data response: ", response)
            if let error = response.error {
                print("Error response: ", error)
                completionHandler(nil, .notConnectedToInternet)
            } else {
                guard let json = response.result.value as? [String: Any] else {
                    completionHandler(nil, .unknow)
                    return
                }
                if let convertedHiragana = json["converted"] as? String {
                    completionHandler(convertedHiragana, nil)
                } else {
                    completionHandler(nil, .unknow)
                }
            }
        })
    }
}
