import Foundation

public enum ListMembersListsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
    case archived
}