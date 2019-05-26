//
//  Configurable.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import Foundation

var defaultConfiguration = Configuration()

protocol Configurable {
  
  /// The `configuration`.
  var configuration: Configuration { get }
  
}

// extension Configurable where Self: Requestable {
extension Configurable {
  /// `Restofire.defaultConfiguration`
  var configuration: Configuration {
    return defaultConfiguration
  }
  
}
