import Foundation

public enum BatchSubscribeOrUnsubscribeListsRequestMembersItemStatusIfNew: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
}