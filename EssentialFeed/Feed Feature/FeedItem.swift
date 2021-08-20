//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Franklin Samboni Castillo on 18/08/21.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
