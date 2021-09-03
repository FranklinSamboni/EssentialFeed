//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Franklin Samboni Castillo on 18/08/21.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedItem])
    case failure(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
