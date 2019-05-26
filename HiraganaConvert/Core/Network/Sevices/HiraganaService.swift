//
//  HiraganaService.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation
struct HiraganaService: Requestable {
    func getHiragana(input: String, completionHandler: @escaping(_ output: String?) -> Void) {
        let hiraganaRequest = HiraganaRequest(with: input)
        request(hiraganaRequest).responseJSON { (respone) in
            print("res:: ",respone)
            completionHandler("Test")
        }
        
    }
}
