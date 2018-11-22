//
//  testHome.swift
//  ZingWorldAppVer6Tests
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import XCTest
@testable import ZingWorldAppVer6
class testHome: XCTestCase {
    var homeView:HomeViewController!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        homeView = HomeViewController()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        homeView = nil
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testGetSongItem() {
        XCTAssertTrue(homeView.getSongItems())
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
