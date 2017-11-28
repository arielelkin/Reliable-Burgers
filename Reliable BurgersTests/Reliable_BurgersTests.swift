//
//  Reliable_BurgersTests.swift
//  Reliable BurgersTests
//
//  Created by Ariel Elkin on 24/11/2017.
//  Copyright © 2017 SitePoint. All rights reserved.
//

import XCTest
@testable import Reliable_Burgers

class Reliable_BurgersTests: XCTestCase {

    func testHamburgersICanStillEatTodayReturnsWithinRange() {
        let counter = CalorieCounter()
        XCTAssert(counter.hamburgersICanStillEatToday <= 4, "we should NOT recommend eating more than four hamburgers a day!")
        XCTAssert(counter.hamburgersICanStillEatToday >= 0)
    }

    func testHamburgerHasValidNumberOfCaloriesWhenSetToZero() {
        let counter = CalorieCounter()
        counter.caloriesPerBurger = 0
        XCTAssert(counter.caloriesPerBurger == 550)
    }
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
