//
//  InputViewController.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var mInputTextField: UITextField!
    @IBOutlet weak var mOutPutLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func selectConvertToHiragana(_ sender: UIButton) {
        let inputData = mInputTextField.text ?? ""
        print(inputData)
        let hiraganaService = HiraganaService()
        hiraganaService.getHiragana(input: inputData) { (outPut) in
            self.mOutPutLabel.text = outPut
        }
    }
    
}

