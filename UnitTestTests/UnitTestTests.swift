//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by TianTeng on 2021/5/20.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {
    
    /// 单元测试开始前调用
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    /// 单元测试结束前调用
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    /// 测试示例
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        testAsynExample()
    }
    
    /// 测试异步
    func testAsynExample() {
        let exp = expectation(description: "错误原因：超出预期时间")
        let queue = OperationQueue()
        queue .addOperation({
            //模拟这个异步操作需要2秒后才能获取结果，比如一个异步网络请求
            sleep(2)
            //模拟获取的异步操作后，获取结果，判断异步方法的结果是否正确
            XCTAssertEqual("a", "a")
            //如果断言没问题，就调用fulfill宣布测试满足
            exp.fulfill()
        })

        waitForExpectations(timeout: 3) { (error) in
            if let error = error {
               print(error)
            }
        }
    }

    /// 做性能测试的方法
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
