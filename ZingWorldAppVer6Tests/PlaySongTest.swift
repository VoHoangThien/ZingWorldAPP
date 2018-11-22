//
//  PlaySongTest.swift
//  ZingWorldAppVer6Tests
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import XCTest
@testable import ZingWorldAppVer6
class PlaySongTest: XCTestCase {
    var playSong1:PlayViewController!
    var inDexReference:UserDefaults!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        playSong1 = PlayViewController()
        inDexReference = UserDefaults()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        playSong1 = nil
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetSong()
    {
        inDexReference.setValue(10, forKey: "number")
        let temp:Int = inDexReference.value(forKey: "number") as! Int
        XCTAssertEqual(10, temp)
    }
    func testTiming()
    {
        XCTAssertEqual(playSong1.timing(time: TimeInterval(09)), "00:09")
        XCTAssertEqual(playSong1.timing(time: TimeInterval(11)), "00:11")
        XCTAssertEqual(playSong1.timing(time: TimeInterval(70)), "01:10")
        XCTAssertEqual(playSong1.timing(time: TimeInterval(120)), "02:00")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}



