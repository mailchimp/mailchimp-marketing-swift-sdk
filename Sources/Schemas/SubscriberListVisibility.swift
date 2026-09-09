import Foundation

/// Legacy - visibility settings are no longer used
public enum SubscriberListVisibility: String, Codable, Hashable, CaseIterable, Sendable {
    case pub
    case prv
}