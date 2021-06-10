//
//  VCTests.swift
//  UnitTestTests
//
//  Created by TianTeng on 2021/5/20.
//

import XCTest
import Quick
import Nimble
@testable import UnitTest

class VCTests: QuickSpec {

    override func spec() {
        describe("这是一个 Int 测试单元") {
            let number = ViewController.numberFunc
            expect(number).to(equal(10))
            //expect(number) == 10
            //expect(number) < 10
        }
        
        describe("这是一个 String 测试单元") {
            let string = ViewController.stringFunc
            expect(string).to(equal("success"))
        }
    }
}
