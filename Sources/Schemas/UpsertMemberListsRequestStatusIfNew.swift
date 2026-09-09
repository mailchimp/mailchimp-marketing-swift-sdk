import Foundation

/// Subscriber's status. This value is required only if the email address is not already present on the list.
public enum UpsertMemberListsRequestStatusIfNew: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
}