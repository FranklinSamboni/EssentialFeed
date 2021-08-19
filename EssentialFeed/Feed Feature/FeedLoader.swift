//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Franklin Samboni Castillo on 18/08/21.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
