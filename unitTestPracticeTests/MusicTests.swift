//
//  MusicTests.swift
//  unitTestPracticeTests
//
//  Created by AHMED GAMAL  on 10/03/2023.
//
import XCTest
@testable import  unitTestPractice

final class MusicTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testParseJson() throws {
        let music = Music()
        let bundle = Bundle(for: type(of: self))
        if let path = bundle.path(forResource: "JSON", ofType: "txt"){
            if let data = try? Data.init(contentsOf: URL.init(fileURLWithPath: path)){
                let result = music.parseJson(data: data)
                XCTAssertGreaterThan(result!.count, 0)
            }else{
                XCTFail()
            }
        }else{
            XCTFail()
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
