//
//  RemoteFeedLoaderTest.swift
//  EssentialFeedTests
//
//  Created by Franklin Samboni Castillo on 18/08/21.
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.requestedURL = URL(string: "http://www.googe.com")!
    }
}

class HTTPClient {
    static let shared = HTTPClient()
    
    private init() {}
    
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient.shared
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
    }
    
    func test_init_requestDataFromURL() {
        let client = HTTPClient.shared
        let loader = RemoteFeedLoader()
        
        loader.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
    
}

