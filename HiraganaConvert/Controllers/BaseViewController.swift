//
//  BaseViewController.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func showHiraganaResultViewController(with value: String?) {
        if let hiraganaResultViewController = self.storyboard?.instantiateViewController(withClass: HiraganaResultViewController.self) {
            hiraganaResultViewController.hiraganaOutPut = value
            show(hiraganaResultViewController, sender: nil)
        }
    }
}

