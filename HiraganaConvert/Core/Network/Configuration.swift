//
//  Configuration.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation
import Alamofire

struct Configuration {
    
    /// The base URL. `nil` by default.
    var baseURL: String = ""
    
    /// The HTTP Method. `.POST` by default.
    var method: Alamofire.HTTPMethod = .post
    
    /// The request parameter encoding. `.JSON` by default.
    var encoding: Alamofire.ParameterEncoding = JSONEncoding.default
    
    /// The HTTP headers. `nil` by default.
    public var headers: [String: String] = [:]
    
    /// The `Alamofire.DataResponseSerializer`.
    public var dataResponseSerializer: Alamofire.DataResponseSerializer<Any> = Alamofire.DataRequest.jsonResponseSerializer()
    
    /// `Configuration` Intializer
    ///
    /// - returns: new `Configuration` object
    public init() {
    }
    
}
