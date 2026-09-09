import Foundation

public enum BatchSubscribeOrUnsubscribeListsRequestMembersItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case subscribed
    case unsubscribed
    case cleaned
    case pending
    case transactional
}