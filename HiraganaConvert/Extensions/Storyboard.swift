//
//  Storyboard.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit

extension UIStoryboard {
    func instantiateViewController<T: UIViewController>(withClass name: T.Type) -> T? {
        if let view = instantiateViewController(withIdentifier: String(describing: name)) as? T {
            return view
        }
        return nil
    }
}
