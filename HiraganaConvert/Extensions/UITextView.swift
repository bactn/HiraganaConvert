//
//  UITextView.swift
//  HiraganaConvert
//
//  Created by Bac.Tran on 5/27/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import UIKit

@IBDesignable class PlaceHolderTextView: UITextView {
    
    @IBInspectable var placeHolder: String = "" {
        didSet {
            self.placeHolderLabel.text = self.placeHolder
            self.placeHolderLabel.sizeToFit()
        }
    }
    
    private lazy var placeHolderLabel: UILabel = UILabel(frame: CGRect(x: 8.0,
                                                                       y: 8.0,
                                                                       width: 0.0,
                                                                       height: 0.0))
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configurePlaceHolder()
        changeVisiblePlaceHolder()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(textChanged),
                                               name: .UITextViewTextDidChange,
                                               object: nil)
    }
    
    override func draw(_ rect: CGRect) {
        
        configurePlaceHolder()
        changeVisiblePlaceHolder()
        super.draw(rect)
    }
    
    private func configurePlaceHolder() {
        self.placeHolderLabel.lineBreakMode = .byWordWrapping
        self.placeHolderLabel.numberOfLines = 0
        self.placeHolderLabel.font = self.font
        self.placeHolderLabel.textColor = UIColor(red: 0.0,
                                                  green: 0.0,
                                                  blue: 0.0980392,
                                                  alpha: 0.22)
        self.placeHolderLabel.backgroundColor = .clear
        self.addSubview(placeHolderLabel)
    }
    
    private func changeVisiblePlaceHolder() {
        if self.placeHolder.isEmpty || !self.text.isEmpty {
            self.placeHolderLabel.alpha = 0.0
        } else {
            self.placeHolderLabel.alpha = 1.0
        }
    }
    
    @objc private func textChanged(notification: NSNotification?) {
        changeVisiblePlaceHolder()
    }
}
