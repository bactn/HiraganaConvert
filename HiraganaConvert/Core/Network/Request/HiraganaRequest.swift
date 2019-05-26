//
//  HiraganaRequest.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation

struct HiraganaRequest: BaseRequestable {
    var parameters: [String: Any]?
    var path: String
    
    init(with inputSentence: String) {
        self.parameters = ["app_id" : appId,
                           "output_type": outputType,
                           "request_id": requestId,
                           "sentence" : inputSentence]
        self.path = homeURL
    }
}
