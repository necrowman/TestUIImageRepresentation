//
//  TestImageDecodingTests.swift
//  TestImageDecodingTests
//
//  Created by Ruslan Yupyn on 7/25/16.
//  Copyright © 2016 Crossroad Labs. All rights reserved.
//

import XCTest
import Foundation
@testable import TestImageDecoding

class TestImageDecodingTests: XCTestCase {
    let imageURLString = "https://cdn.photographylife.com/wp-content/uploads/2014/06/Nikon-D810-Image-Sample-6.jpg"
    var image: UIImage?
    override func setUp() {
        super.setUp()
        let url:NSURL? = NSURL(string: self.imageURLString)
        let data:NSData? = NSData(contentsOfURL : url!)
        image = UIImage(data : data!)
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
    
    func testPerformanceExample0_35() {
        // This is an example of a performance test case.
        self.measureBlock {
            for _ in 0..<15 {
                let data = UIImageJPEGRepresentation(self.image!, 0.35)
                print("size -> ", data?.length)
            }
            // Put the code you want to measure the time of here.
        }
    }
    
    func testPerformanceExample0_5() {
        // This is an example of a performance test case.
        self.measureBlock {
            for _ in 0..<15 {
                let data = UIImageJPEGRepresentation(self.image!, 0.5)
                print("size -> ", data?.length)
            }
            // Put the code you want to measure the time of here.
        }
    }
    
    func testPerformanceExample1_00() {
        // This is an example of a performance test case.
        self.measureBlock {
            for _ in 0..<15 {
                let data = UIImageJPEGRepresentation(self.image!, 1)
                print("size -> ", data?.length)
            }
            // Put the code you want to measure the time of here.
        }
    }
    
}
