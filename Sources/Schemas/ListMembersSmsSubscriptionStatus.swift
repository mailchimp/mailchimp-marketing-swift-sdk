import Foundation

/// The status of an SMS subscription.
public enum ListMembersSmsSubscriptionStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case nonsubscribed
    case pending
}