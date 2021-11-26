//
//  FrameworkTestTests.swift
//  FrameworkTestTests
//
//  Created by Juninho on 25/11/21.
//

import XCTest
@testable import FrameworkTest

class FrameworkTestTests: XCTestCase {

    private var resource: APIService!


    override func setUp() {
        super.setUp()
        resource = APIService()
    }

   
    
    
    func test_Postagens_not_nil(){
        
        let expectation = self.expectation(description: "Loading")
        resource.load(resource: PostagensModel.Get){ (postagens) in
            XCTAssertNotNil(postagens)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

    
    func test_Albuns_not_nil(){
        
        let expectation = self.expectation(description: "Loading")
        resource.load(resource: AlbunsModel.Get){ (albuns) in
            XCTAssertNotNil(albuns)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    
    func test_Todos_not_nil(){
        
        let expectation = self.expectation(description: "Loading")
        resource.load(resource: TodosModel.Get){ (todos) in
            XCTAssertNotNil(todos)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    
    // executa a pos a finalizacao dos teste
    override func tearDown() {
        super.tearDown()
    }


}
