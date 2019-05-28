//
//  HiraganaConvertTests.swift
//  HiraganaConvertTests
//
//  Created by Bac.Tran on 5/26/19.
//  Copyright © 2019 Bac.Tran. All rights reserved.
//

import XCTest
@testable import HiraganaConvert

class HiraganaConvertTests: XCTestCase {
    var inputViewController: InputViewController?
    var keyWindow: UIWindow?
    override func setUp() {
        super.setUp()
        keyWindow = UIApplication.shared.keyWindow
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        inputViewController = storyboard.instantiateViewController(withClass: InputViewController.self)
        let navigation = UINavigationController(rootViewController: inputViewController!)
        keyWindow?.rootViewController = navigation
    }
    
    override func tearDown() {
        keyWindow?.removeFromSuperview()
        super.tearDown()
    }
    
    /// Normal case
    func testSendRequest() {
        // Given
        let input = "大学"
        let outputExpect = "だいがく"
        
        sendRequest(input, outputExpect)
    }
    
    /// Empty case
    func testSendRequestEmpty() {
        // Given
        let inputEmpty = ""
        let outputEmptyExpect = ""
        sendRequest(inputEmpty, outputEmptyExpect)
    }
    
    /// Abnormal
    func testSendRequestAbnormal() {
        
        // Given
        let inputAbnormal = "-"
        let outputAbnormalExpect = "-"
        sendRequest(inputAbnormal, outputAbnormalExpect)
    }
    
    func sendRequest(_ input: String, _ outputExpect: String) {
        let e = expectation(description: "Test Request get Hiragana")
        // When
        inputViewController?.sendRequestGetHiragana(inputText: input) {(isCompleted) in
            e.fulfill()
        }
        // Then
        waitForExpectations(timeout: 20.0) { (error) in
            if let vc = self.inputViewController?.navigationController?.viewControllers.last as? HiraganaResultViewController {
                XCTAssertEqual(outputExpect, vc.hiraganaOutPut)
            }
        }
    }
}
