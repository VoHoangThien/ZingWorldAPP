//
//  LoginTest.swift
//  ZingWorldAppVer6Tests
//
//  Created by Thien Vo on 11/21/18.
//  Copyright © 2018 Thien Vo. All rights reserved.
//

import XCTest
@testable import ZingWorldAppVer6
class LoginTest: XCTestCase {
    var member1:Member!
    var member2:Member!
    var member3:Member!
    var member4:Member!
    var member5:Member!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        member1 = Member(name: "ThanhTH", pass: "thanhquang")//dung
        member2 = Member(name: "vohoangthien", pass: "thien")// u sai, p sai
        member3 = Member(name: "vohoang", pass: "hoangthien123")// u dung , pass sai
        member4 = Member(name: "thanhquang14", pass: "HanhTien")//pass dung , u sai
        member5 = Member(name: "", pass: "")//rong
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        member1 = nil
        member2 = nil
        member3 = nil
        member4 = nil
        member5 = nil
        
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testLogin()
    {
        XCTAssertTrue(member1.checkLogin())
        XCTAssertFalse(member2.checkLogin())
        XCTAssertFalse(member3.checkLogin())
        XCTAssertFalse(member4.checkLogin())
        XCTAssertFalse(member5.checkLogin())
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
