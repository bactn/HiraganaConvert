//
//  InputViewController.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit

class InputViewController: BaseViewController {

    @IBOutlet var inputTextView: PlaceHolderTextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextView.returnKeyType = .done
        navigationItem.title = appName
        inputTextView.placeHolder = textViewPlaceHolder
    }
    
    func sendRequestGetHiragana(inputText: String) {
        let hiraganaService = HiraganaService()
        hiraganaService.getHiragana(inputText) { (outPut, error) in
            if let outPut = outPut {
                self.showHiraganaResultViewController(with: outPut)
            } else {
                // Check error code and show dialog
            }
        }
    }
}

extension InputViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            if textView.text.isEmpty {
                // Show dialog empty
            } else {
                sendRequestGetHiragana(inputText: textView.text)
            }
            return false
        }
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        // Feature:
        // 1. send a async request at this time if after 3s user doesn't input text
        // 2. Save response to local variable
        // 3. When User tap on done button on keyboard. Check text input with latest sendInput
        // If There is difference -> send request
        // Else if There is same -> pass response from 2 to next viewcontroller
    }
}

