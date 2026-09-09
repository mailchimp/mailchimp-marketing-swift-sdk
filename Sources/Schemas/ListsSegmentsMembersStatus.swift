import Foundation

/// Subscriber's current status.
public enum ListsSegmentsMembersStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
}