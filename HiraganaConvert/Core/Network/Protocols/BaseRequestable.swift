//
//  BaseRequestable.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation
import Alamofire

protocol BaseRequestable: Configurable {
    
    /// The base URL.
    var baseURL: String { get }
    /// The path relative to base URL.
    var path: String { get }
    
    /// The HTTP Method.
    var method: Alamofire.HTTPMethod { get }
    
    /// The request parameter encoding.
    var encoding: Alamofire.ParameterEncoding { get }
    
    /// The HTTP headers.
    var headers: HTTPHeaders? { get }
    
    /// The request parameters.
    var parameters: [String: Any]? { get }
    
}

// MARK: - Default Implementation
extension BaseRequestable {
    
    /// `configuration.BaseURL`
    var baseURL: String {
        return configuration.baseURL
    }
    
    /// `configuration.method`
    public var method: Alamofire.HTTPMethod {
        return configuration.method
    }
    
    /// `configuration.encoding`
    public var encoding: Alamofire.ParameterEncoding {
        return configuration.encoding
    }
    
    /// `nil`
    public var headers: HTTPHeaders? {
        let headers: HTTPHeaders = [
            "UserAgent": "",
        ]
        return headers
    }
    
    /// `nil`
    public var parameters: Any? {
        return [ : ]
    }
}
