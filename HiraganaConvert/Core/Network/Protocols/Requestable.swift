//
//  Requestable.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//


import Foundation
import Alamofire

extension Requestable {
  
  /// Creates a `DataRequest` from the specified `form`
  ///
  /// - Parameter form: Object conforms to `BaseRequestable` protocol.
  /// - Returns: The created `DataRequest`.
  
  func request(_ form: BaseRequestable) -> DataRequest {
    let manager = Alamofire.SessionManager.default
    manager.session.configuration.timeoutIntervalForRequest = 20
    let requestPath = form.path
    debugPrint(requestPath)
    return Alamofire.request(
      requestPath,
      method: form.method,
      parameters: form.parameters,
      encoding: JSONEncoding.default,
      headers: form.headers)
  }
}

protocol Requestable {
  
}
