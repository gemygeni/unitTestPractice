//
//  unitTestPracticeTests.swift
//  unitTestPracticeTests
//
//  Created by AHMED GAMAL  on 09/03/2023.
//

import XCTest
@testable import unitTestPractice

final class unitTestPracticeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTipCalc() throws {
        let tc = TipCalc()
        
        let tip = tc.calcTip(amount: 128.51, tipPer: 50.0)
        XCTAssertEqual(64.26, tip, accuracy: 0.01)
    }
    
    func testAct(){
        var x : Int
        x = 4
        XCTAssertTrue(x == 4, "x should be four")
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
