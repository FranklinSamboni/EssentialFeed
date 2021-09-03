//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Franklin Samboni Castillo on 2/09/21.
//

import Foundation

public enum HTTPClientResult {
    case succes(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
