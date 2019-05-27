//
//  HiraganaResultViewController.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit
class HiraganaResultViewController: BaseViewController {
    
    @IBOutlet private weak var hiraganaResultTextView: UITextView!
    public var hiraganaOutPut: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        hiraganaResultTextView.text = hiraganaOutPut ?? ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
